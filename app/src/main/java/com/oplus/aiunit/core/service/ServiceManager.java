package com.oplus.aiunit.core.service;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.oplus.aiunit.auth.AuthClient;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.IService;
import com.oplus.aiunit.core.IUnit;
import com.oplus.aiunit.core.ParamPackage;
import com.oplus.aiunit.core.base.AIDetector;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.callback.ConnectionCallback;
import com.oplus.aiunit.core.callback.DetectStateCallback;
import com.oplus.aiunit.core.callback.IUnitStatusListener;
import com.oplus.aiunit.core.data.AIConfig;
import com.oplus.aiunit.core.data.ConfigKt;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.core.data.ServiceType;
import com.oplus.aiunit.core.protocol.AIProtocol;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.service.ServiceManager;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.core.utils.AIUtil;
import com.oplus.aiunit.core.utils.ApiVersionUtils;
import com.oplus.aiunit.core.utils.TimeMonitor;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.function.Predicate;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;
import n8.v;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public final class ServiceManager implements IServiceManager, IBinder.DeathRecipient {
    public static final Companion Companion = new Companion(null);
    private static final long DELAY_HANDLE_CONNECT_TIMEOUT = 4000;
    private static final int MSG_CONNECT_TIMEOUT = 100;
    private AuthClient authClient;
    private Context context;
    private final Executor executor;
    private volatile IService mService;
    private final ServiceManager$serviceConnection$1 serviceConnection;
    private volatile int serviceProtocol;
    private volatile ConnectState connectState = ConnectState.DISCONNECT;
    private volatile ServiceType serviceType = ServiceType.AIUNIT;
    private volatile CountDownLatch serviceLatch = new CountDownLatch(1);
    private final Map<String, Object> lockMap = new HashMap();
    private final Map<String, List<IUnit>> detectorMap = new ConcurrentHashMap();
    private final List<WeakReference<ConnectionCallback>> connectionCallbackList = new CopyOnWriteArrayList();
    private final Map<String, List<WeakReference<DetectStateCallback>>> detectStateCallback = new ConcurrentHashMap();
    private final UnitStatusProxy unitStatusProxy = new UnitStatusProxy();
    private final TimeMonitor timeMonitor = new TimeMonitor(false);
    private final Handler mainHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.oplus.aiunit.core.service.e
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return ServiceManager.mainHandler$lambda$0(this.f10871a, message);
        }
    });

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ConnectState {
        private static final /* synthetic */ r8.a $ENTRIES;
        private static final /* synthetic */ ConnectState[] $VALUES;
        public static final ConnectState DISCONNECT = new ConnectState("DISCONNECT", 0);
        public static final ConnectState CONNECTING = new ConnectState("CONNECTING", 1);
        public static final ConnectState CONNECTED = new ConnectState("CONNECTED", 2);

        private static final /* synthetic */ ConnectState[] $values() {
            return new ConnectState[]{DISCONNECT, CONNECTING, CONNECTED};
        }

        static {
            ConnectState[] connectStateArr$values = $values();
            $VALUES = connectStateArr$values;
            $ENTRIES = r8.b.a(connectStateArr$values);
        }

        private ConnectState(String str, int i10) {
        }

        public static r8.a getEntries() {
            return $ENTRIES;
        }

        public static ConnectState valueOf(String str) {
            return (ConnectState) Enum.valueOf(ConnectState.class, str);
        }

        public static ConnectState[] values() {
            return (ConnectState[]) $VALUES.clone();
        }
    }

    public final class UnitStatusProxy extends IUnitStatusListener.Stub {
        public UnitStatusProxy() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean onDestroy$lambda$9(l tmp0, Object obj) {
            r.e(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean onFailSpec$lambda$5(l tmp0, Object obj) {
            r.e(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }

        @Override // com.oplus.aiunit.core.callback.IUnitStatusListener
        public void onDestroy(String detectName, String unitName) {
            List list;
            r.e(detectName, "detectName");
            r.e(unitName, "unitName");
            AILog.w("ServiceManager", "onDestroy: detectName = " + detectName + ", unitName = " + unitName);
            if (AIProtocol.isTelAI(ServiceManager.this.serviceProtocol)) {
                List list2 = (List) ServiceManager.this.detectorMap.get(detectName);
                IUnit iUnit = null;
                Object obj = null;
                if (list2 != null) {
                    Iterator it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Object next = it.next();
                        if (r.a(((IUnit) next).getName(), unitName)) {
                            obj = next;
                            break;
                        }
                    }
                    iUnit = (IUnit) obj;
                }
                if (iUnit != null) {
                    Bundle bundle = new Bundle();
                    iUnit.getRunningInfo(bundle);
                    AIConfig aIConfig = AIConfig.Companion.get(bundle);
                    List list3 = (List) ServiceManager.this.detectStateCallback.get(detectName);
                    if (list3 != null) {
                        Iterator it2 = list3.iterator();
                        while (it2.hasNext()) {
                            DetectStateCallback detectStateCallback = (DetectStateCallback) ((WeakReference) it2.next()).get();
                            if (detectStateCallback != null) {
                                detectStateCallback.onOneDestroy(aIConfig);
                            }
                        }
                    }
                }
            }
            List list4 = (List) ServiceManager.this.detectorMap.get(detectName);
            if (list4 != null) {
                final ServiceManager$UnitStatusProxy$onDestroy$2 serviceManager$UnitStatusProxy$onDestroy$2 = new ServiceManager$UnitStatusProxy$onDestroy$2(ServiceManager.this, detectName, unitName);
                list4.removeIf(new Predicate() { // from class: com.oplus.aiunit.core.service.k
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj2) {
                        return ServiceManager.UnitStatusProxy.onDestroy$lambda$9(serviceManager$UnitStatusProxy$onDestroy$2, obj2);
                    }
                });
            }
            Collection collection = (Collection) ServiceManager.this.detectorMap.get(detectName);
            if ((collection == null || collection.isEmpty()) && (list = (List) ServiceManager.this.detectStateCallback.get(detectName)) != null) {
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    DetectStateCallback detectStateCallback2 = (DetectStateCallback) ((WeakReference) it3.next()).get();
                    if (detectStateCallback2 != null) {
                        detectStateCallback2.onAllDestroy(detectName);
                    }
                }
            }
        }

        @Override // com.oplus.aiunit.core.callback.IUnitStatusListener
        public void onFail(String detectName, int i10) {
            r.e(detectName, "detectName");
            AILog.e("ServiceManager", "onFail: detectName = " + detectName + ", errCode = " + i10);
            ServiceManager.this.detectorMap.remove(detectName);
            List list = (List) ServiceManager.this.detectStateCallback.get(detectName);
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    DetectStateCallback detectStateCallback = (DetectStateCallback) ((WeakReference) it.next()).get();
                    if (detectStateCallback != null) {
                        detectStateCallback.onAllFail(detectName, i10, "onFail");
                    }
                }
            }
        }

        @Override // com.oplus.aiunit.core.callback.IUnitStatusListener
        public void onFailSpec(String detectName, String unitName, int i10, String str) {
            List list;
            r.e(detectName, "detectName");
            r.e(unitName, "unitName");
            AILog.e("ServiceManager", "onFailSpec: detectName = " + detectName + ", unitName = " + unitName + ", errCode = " + i10 + ", msg = " + str);
            if (AIProtocol.isTelAI(ServiceManager.this.serviceProtocol)) {
                List list2 = (List) ServiceManager.this.detectorMap.get(detectName);
                IUnit iUnit = null;
                Object obj = null;
                if (list2 != null) {
                    Iterator it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Object next = it.next();
                        if (r.a(((IUnit) next).getName(), unitName)) {
                            obj = next;
                            break;
                        }
                    }
                    iUnit = (IUnit) obj;
                }
                if (iUnit != null) {
                    Bundle bundle = new Bundle();
                    iUnit.getRunningInfo(bundle);
                    AIConfig aIConfig = AIConfig.Companion.get(bundle);
                    aIConfig.setDetectName(detectName);
                    List list3 = (List) ServiceManager.this.detectStateCallback.get(detectName);
                    if (list3 != null) {
                        Iterator it2 = list3.iterator();
                        while (it2.hasNext()) {
                            DetectStateCallback detectStateCallback = (DetectStateCallback) ((WeakReference) it2.next()).get();
                            if (detectStateCallback != null) {
                                detectStateCallback.onOneFail(aIConfig, i10, str);
                            }
                        }
                    }
                }
            }
            List list4 = (List) ServiceManager.this.detectorMap.get(detectName);
            if (list4 != null) {
                final ServiceManager$UnitStatusProxy$onFailSpec$2 serviceManager$UnitStatusProxy$onFailSpec$2 = new ServiceManager$UnitStatusProxy$onFailSpec$2(ServiceManager.this, detectName, unitName);
                list4.removeIf(new Predicate() { // from class: com.oplus.aiunit.core.service.j
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj2) {
                        return ServiceManager.UnitStatusProxy.onFailSpec$lambda$5(serviceManager$UnitStatusProxy$onFailSpec$2, obj2);
                    }
                });
            }
            Collection collection = (Collection) ServiceManager.this.detectorMap.get(detectName);
            if ((collection == null || collection.isEmpty()) && (list = (List) ServiceManager.this.detectStateCallback.get(detectName)) != null) {
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    DetectStateCallback detectStateCallback2 = (DetectStateCallback) ((WeakReference) it3.next()).get();
                    if (detectStateCallback2 != null) {
                        detectStateCallback2.onAllFail(detectName, i10, str);
                    }
                }
            }
        }

        @Override // com.oplus.aiunit.core.callback.IUnitStatusListener
        public void onStart(IUnit unit, String detectName) {
            r.e(unit, "unit");
            r.e(detectName, "detectName");
            AILog.i("ServiceManager", "onStart: unit = " + unit + ", detectName = " + detectName);
            ServiceManager.this.addUnit(detectName, unit);
        }

        @Override // com.oplus.aiunit.core.callback.IUnitStatusListener
        public void onStop(String detectName) {
            r.e(detectName, "detectName");
            AILog.w("ServiceManager", "onStop: detectName = " + detectName);
            ServiceManager.this.detectorMap.remove(detectName);
            List list = (List) ServiceManager.this.detectStateCallback.get(detectName);
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    DetectStateCallback detectStateCallback = (DetectStateCallback) ((WeakReference) it.next()).get();
                    if (detectStateCallback != null) {
                        detectStateCallback.onAllDestroy(detectName);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.core.service.ServiceManager$addUnit$1, reason: invalid class name */
    public static final class AnonymousClass1 extends s implements w8.a {
        final /* synthetic */ String $detectName;
        final /* synthetic */ IUnit $unit;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(String str, IUnit iUnit) {
            super(0);
            this.$detectName = str;
            this.$unit = iUnit;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            List list = (List) ServiceManager.this.detectorMap.get(this.$detectName);
            if (list == null) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                copyOnWriteArrayList.add(this.$unit);
                ServiceManager.this.detectorMap.put(this.$detectName, copyOnWriteArrayList);
                AILog.d("ServiceManager", "addUnit first [" + this.$detectName + " - " + this.$unit.getName() + "]. " + this.$unit);
                return;
            }
            String unitNameCompat = ServiceManager.this.getUnitNameCompat(this.$unit, this.$detectName);
            if (list.contains(this.$unit)) {
                return;
            }
            ServiceManager serviceManager = ServiceManager.this;
            String str = this.$detectName;
            Iterator it = list.iterator();
            int i10 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i10 = -1;
                    break;
                } else if (r.a(serviceManager.getUnitNameCompat((IUnit) it.next(), str), unitNameCompat)) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                list.add(this.$unit);
                AILog.d("ServiceManager", "addUnit new [" + this.$detectName + " - " + this.$unit.getName() + "]. " + this.$unit);
                return;
            }
            list.set(i10, this.$unit);
            AILog.d("ServiceManager", "addUnit replace [" + this.$detectName + " - " + this.$unit.getName() + "]. " + this.$unit);
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.core.service.ServiceManager$detach$1, reason: invalid class name and case insensitive filesystem */
    public static final class C02521 extends s implements w8.a {
        final /* synthetic */ String $configUuid;
        final /* synthetic */ String $detectName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02521(String str, String str2) {
            super(0);
            this.$detectName = str;
            this.$configUuid = str2;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Integer mo8invoke() {
            IUnit iUnitAcquireExistUnit$default = ServiceManager.acquireExistUnit$default(ServiceManager.this, this.$detectName, false, 2, null);
            int iDetach = iUnitAcquireExistUnit$default != null ? iUnitAcquireExistUnit$default.detach(this.$configUuid) : ErrorCode.kErrorInvalidServiceState.value();
            AILog.i("ServiceManager", "detach " + this.$detectName + " errCode: " + iDetach);
            ServiceManager.this.removeUnit(this.$detectName);
            return Integer.valueOf(iDetach);
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.core.service.ServiceManager$driveUnit$1, reason: invalid class name and case insensitive filesystem */
    public static final class C02531 extends s implements w8.a {
        final /* synthetic */ String $detectName;
        final /* synthetic */ ParamPackage $param;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02531(String str, ParamPackage paramPackage) {
            super(0);
            this.$detectName = str;
            this.$param = paramPackage;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final IUnit mo8invoke() {
            boolean z10 = true;
            IUnit iUnitAcquireExistUnit = ServiceManager.this.acquireExistUnit(this.$detectName, true);
            if (iUnitAcquireExistUnit == null) {
                try {
                    ParamPackage paramPackage = this.$param;
                    if (paramPackage == null) {
                        AILog.w("ServiceManager", "driveUnit create new param!");
                        paramPackage = new ParamPackage();
                    }
                    Context context = ServiceManager.this.context;
                    if (context == null) {
                        r.r("context");
                        context = null;
                    }
                    paramPackage.setParam(ParamsKt.PARAM_KEY_PACKAGE_NAME, context.getPackageName());
                    Context context2 = ServiceManager.this.context;
                    if (context2 == null) {
                        r.r("context");
                        context2 = null;
                    }
                    paramPackage.setParam(ParamsKt.PARAM_KEY_PACKAGE_VERSION, Integer.valueOf(AIUtil.getMyAppVersion(context2)));
                    paramPackage.setParam(ParamsKt.PARAM_KEY_SDK_VERSION, Integer.valueOf(AIProtocol.getClientProtocol()));
                    paramPackage.setParam(ParamsKt.PARAM_KEY_SDK_VERSION_NAME, "2.0.3-beta3eac8c9");
                    paramPackage.setParam("package::unit_name", this.$detectName);
                    paramPackage.setParam(ParamsKt.PARAM_KEY_UNIT_LISTENER, ServiceManager.this.unitStatusProxy);
                    IService service = ServiceManager.this.getService();
                    String str = this.$detectName;
                    AILog aILog = AILog.INSTANCE;
                    if (aILog.isLogOn() || aILog.getDebugMode()) {
                        StringBuilder sb = new StringBuilder("driveUnit ");
                        sb.append(str);
                        sb.append(' ');
                        sb.append(paramPackage);
                        sb.append(". init = ");
                        sb.append(service != null);
                        AILog.printI("ServiceManager", sb.toString());
                    }
                    if (service == null) {
                        paramPackage.setParam(ParamsKt.PARAM_KEY_ERROR_CODE, Integer.valueOf(ErrorCode.kErrorNotInit.value()));
                    }
                    iUnitAcquireExistUnit = service != null ? service.drive(paramPackage) : null;
                    StringBuilder sb2 = new StringBuilder("driveUnit: success = ");
                    if (iUnitAcquireExistUnit == null) {
                        z10 = false;
                    }
                    sb2.append(z10);
                    AILog.i("ServiceManager", sb2.toString());
                    if (iUnitAcquireExistUnit != null) {
                        ServiceManager.this.addUnit(this.$detectName, iUnitAcquireExistUnit);
                    }
                } catch (RemoteException e10) {
                    AILog.e("ServiceManager", "driveUnit " + this.$detectName + " err", e10);
                }
            }
            return iUnitAcquireExistUnit;
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.core.service.ServiceManager$removeConnectionCallback$1, reason: invalid class name and case insensitive filesystem */
    public static final class C02541 extends s implements l {
        final /* synthetic */ ConnectionCallback $callback;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02541(ConnectionCallback connectionCallback) {
            super(1);
            this.$callback = connectionCallback;
        }

        @Override // w8.l
        public final Boolean invoke(WeakReference<ConnectionCallback> weakReference) {
            r.e(weakReference, "weakReference");
            ConnectionCallback connectionCallback = weakReference.get();
            return Boolean.valueOf(connectionCallback == null || connectionCallback == this.$callback);
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.core.service.ServiceManager$removeDestroyUnit$1, reason: invalid class name and case insensitive filesystem */
    public static final class C02551 extends s implements l {
        public C02551() {
            super(1);
        }

        @Override // w8.l
        public final Boolean invoke(IUnit it) {
            r.e(it, "it");
            return Boolean.valueOf(!ServiceManager.this.getUnitActiveCompat(it));
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.core.service.ServiceManager$removeStateCallback$1, reason: invalid class name and case insensitive filesystem */
    public static final class C02561 extends s implements l {
        final /* synthetic */ DetectStateCallback $callback;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02561(DetectStateCallback detectStateCallback) {
            super(1);
            this.$callback = detectStateCallback;
        }

        @Override // w8.l
        public final Boolean invoke(WeakReference<DetectStateCallback> weakReference) {
            r.e(weakReference, "weakReference");
            DetectStateCallback detectStateCallback = weakReference.get();
            return Boolean.valueOf(detectStateCallback == null || detectStateCallback == this.$callback);
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [com.oplus.aiunit.core.service.ServiceManager$serviceConnection$1] */
    public ServiceManager() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        r.d(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        this.executor = executorServiceNewSingleThreadExecutor;
        this.serviceConnection = new ServiceConnection() { // from class: com.oplus.aiunit.core.service.ServiceManager$serviceConnection$1
            /* JADX WARN: Removed duplicated region for block: B:35:0x00e4 A[Catch: all -> 0x004f, RemoteException -> 0x0052, Merged into TryCatch #1 {all -> 0x004f, RemoteException -> 0x0052, blocks: (B:3:0x001f, B:5:0x0030, B:12:0x0055, B:14:0x005d, B:16:0x0063, B:17:0x0069, B:19:0x007d, B:22:0x00a0, B:24:0x00b7, B:27:0x00c2, B:28:0x00c6, B:30:0x00cc, B:32:0x00d4, B:34:0x00d9, B:35:0x00e4, B:37:0x00f3), top: B:43:0x001f }, TRY_LEAVE] */
            @Override // android.content.ServiceConnection
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onServiceConnected(android.content.ComponentName r6, android.os.IBinder r7) {
                /*
                    Method dump skipped, instruction units count: 282
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.aiunit.core.service.ServiceManager$serviceConnection$1.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                AILog.w("ServiceManager", "onServiceDisconnected");
                this.this$0.detectorMap.clear();
                if (this.this$0.isConnected()) {
                    this.this$0.notifyDisconnect();
                }
                this.this$0.setState(ServiceManager.ConnectState.DISCONNECT);
                this.this$0.unbind();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IUnit acquireExistUnit(String str, boolean z10) {
        if (z10) {
            removeDestroyUnit(str);
        }
        List<IUnit> list = this.detectorMap.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static /* synthetic */ IUnit acquireExistUnit$default(ServiceManager serviceManager, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return serviceManager.acquireExistUnit(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addUnit(String str, IUnit iUnit) {
        runLockAction(str, new AnonymousClass1(str, iUnit));
    }

    @SuppressLint({"InlinedApi"})
    private final void connectService(ServiceType serviceType) {
        Intent intent = new Intent();
        String str = serviceType == ServiceType.OCRSERVICE ? ConfigKt.OCRSERVICE_PACKAGE_NAME : ConfigKt.AIUNIT_PACKAGE_NAME;
        this.serviceType = serviceType;
        Context context = null;
        if (this.serviceProtocol == 0) {
            Context context2 = this.context;
            if (context2 == null) {
                r.r("context");
                context2 = null;
            }
            this.serviceProtocol = AIProtocol.getServiceProtocol(context2, str);
        }
        intent.setComponent(new ComponentName(str, ConfigKt.AIUNIT_SERVICE_CLASS_NAME));
        intent.setAction(ConfigKt.AIUNIT_SERVICE_ACTION);
        Context context3 = this.context;
        if (context3 == null) {
            r.r("context");
            context3 = null;
        }
        intent.setType(context3.getPackageName());
        String str2 = new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.getDefault()).format(Calendar.getInstance().getTime());
        if (ApiVersionUtils.isQ()) {
            intent.setIdentifier(str2);
        }
        Context context4 = this.context;
        if (context4 == null) {
            r.r("context");
            context4 = null;
        }
        intent.putExtras(AIProtocol.getExtras(context4));
        AILog aILog = AILog.INSTANCE;
        if (aILog.getDebugMode() || aILog.isDebugging()) {
            Context context5 = this.context;
            if (context5 == null) {
                r.r("context");
                context5 = null;
            }
            AILog.printD("ServiceManager", "start connect " + new v(serviceType, str, Integer.valueOf(AIUtil.getVersionCode(context5, str))) + " protocol = " + this.serviceProtocol + " at " + str2);
        }
        this.timeMonitor.start();
        Context context6 = this.context;
        if (context6 == null) {
            r.r("context");
        } else {
            context = context6;
        }
        context.bindService(intent, 513, this.executor, this.serviceConnection);
        setState(ConnectState.CONNECTING);
        this.mainHandler.removeMessages(100);
        this.mainHandler.sendEmptyMessageDelayed(100, DELAY_HANDLE_CONNECT_TIMEOUT);
    }

    private final boolean containConnectionCallback(ConnectionCallback connectionCallback) {
        List<WeakReference<ConnectionCallback>> list = this.connectionCallbackList;
        if (list == null || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((WeakReference) it.next()).get() == connectionCallback) {
                    return true;
                }
            }
        }
        return false;
    }

    private final IUnit driveUnit(String str, ParamPackage paramPackage) {
        return (IUnit) runLockAction(str, new C02531(str, paramPackage));
    }

    public static /* synthetic */ IUnit driveUnit$default(ServiceManager serviceManager, String str, ParamPackage paramPackage, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            paramPackage = null;
        }
        return serviceManager.driveUnit(str, paramPackage);
    }

    private final List<ConnectionCallback> getAllCallbacks() {
        List<WeakReference<ConnectionCallback>> list = this.connectionCallbackList;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ConnectionCallback connectionCallback = (ConnectionCallback) ((WeakReference) it.next()).get();
            if (connectionCallback != null) {
                arrayList.add(connectionCallback);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized IService getService() {
        if (this.mService != null) {
            return this.mService;
        }
        AILog.w("ServiceManager", "getService: service is invalid, need to rebind");
        if (!r.a(Thread.currentThread(), Looper.getMainLooper().getThread())) {
            if (this.serviceLatch.getCount() <= 0) {
                this.serviceLatch = new CountDownLatch(1);
            }
            connectService(this.serviceType);
            try {
                this.serviceLatch.await(DELAY_HANDLE_CONNECT_TIMEOUT, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e10) {
                AILog.e("ServiceManager", "getService connect wait exception. " + e10.getMessage());
            }
        }
        return this.mService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getUnitActiveCompat(IUnit iUnit) {
        try {
            if (AIProtocol.isAIGCCloud(this.serviceProtocol)) {
                return iUnit.isActive();
            }
            return true;
        } catch (DeadObjectException e10) {
            AILog.e("ServiceManager", "getUnitActiveCompat DeadObjectException " + e10.getMessage());
            return false;
        } catch (Throwable th) {
            AILog.e("ServiceManager", "getUnitActiveCompat " + iUnit + " call isActive err. " + th.getMessage());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getUnitNameCompat(IUnit iUnit, String str) {
        String name;
        try {
            if (AIProtocol.isAIGCCloud(this.serviceProtocol) && (name = iUnit.getName()) != null && name.length() != 0) {
                r.b(name);
                return name;
            }
            return str;
        } catch (Throwable th) {
            AILog.e("ServiceManager", "getUnitNameCompat " + str + " err. " + th.getMessage());
            return str;
        }
    }

    private final void handleConnectTimeout() {
        if (isConnecting()) {
            AILog.e("ServiceManager", "handleConnectTimeout");
            setState(ConnectState.DISCONNECT);
            notifyConnectFailed(ErrorCode.kErrorTimeOut.value());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$2(ConnectionCallback connectionCallback) {
        if (connectionCallback != null) {
            connectionCallback.onServiceConnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$3(ConnectionCallback connectionCallback) {
        if (connectionCallback != null) {
            connectionCallback.onServiceConnecting();
        }
    }

    private final synchronized boolean isConnecting() {
        return this.connectState == ConnectState.CONNECTING;
    }

    private final synchronized boolean isDisconnect() {
        return this.connectState == ConnectState.DISCONNECT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean mainHandler$lambda$0(ServiceManager this$0, Message msg) {
        r.e(this$0, "this$0");
        r.e(msg, "msg");
        if (msg.what == 100) {
            this$0.handleConnectTimeout();
            return true;
        }
        AILog.w("ServiceManager", "handleMessage no usable msg for " + msg.what);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void notifyConnectFailed(final int i10) {
        final List<ConnectionCallback> allCallbacks = getAllCallbacks();
        this.executor.execute(new Runnable() { // from class: com.oplus.aiunit.core.service.g
            @Override // java.lang.Runnable
            public final void run() {
                ServiceManager.notifyConnectFailed$lambda$11(allCallbacks, i10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyConnectFailed$lambda$11(List cList, int i10) {
        r.e(cList, "$cList");
        Iterator it = cList.iterator();
        while (it.hasNext()) {
            ((ConnectionCallback) it.next()).onServiceConnectFailed(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void notifyConnectSuccess() {
        final List<ConnectionCallback> allCallbacks = getAllCallbacks();
        this.executor.execute(new Runnable() { // from class: com.oplus.aiunit.core.service.h
            @Override // java.lang.Runnable
            public final void run() {
                ServiceManager.notifyConnectSuccess$lambda$9(allCallbacks);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyConnectSuccess$lambda$9(List cList) {
        r.e(cList, "$cList");
        Iterator it = cList.iterator();
        while (it.hasNext()) {
            ((ConnectionCallback) it.next()).onServiceConnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void notifyDisconnect() {
        final List<ConnectionCallback> allCallbacks = getAllCallbacks();
        this.executor.execute(new Runnable() { // from class: com.oplus.aiunit.core.service.f
            @Override // java.lang.Runnable
            public final void run() {
                ServiceManager.notifyDisconnect$lambda$13(allCallbacks);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyDisconnect$lambda$13(List cList) {
        r.e(cList, "$cList");
        Iterator it = cList.iterator();
        while (it.hasNext()) {
            ((ConnectionCallback) it.next()).onServiceDisconnect();
        }
    }

    private final synchronized void removeAllCallbacks() {
        this.connectionCallbackList.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeConnectionCallback$lambda$4(l tmp0, Object obj) {
        r.e(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    private final void removeDestroyUnit(String str) {
        List<IUnit> list = this.detectorMap.get(str);
        if (list != null) {
            final C02551 c02551 = new C02551();
            list.removeIf(new Predicate() { // from class: com.oplus.aiunit.core.service.d
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ServiceManager.removeDestroyUnit$lambda$21(c02551, obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeDestroyUnit$lambda$21(l tmp0, Object obj) {
        r.e(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeStateCallback$lambda$5(l tmp0, Object obj) {
        r.e(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    private final <T> T runLockAction(String str, w8.a aVar) {
        Object obj;
        T t10;
        synchronized (this.lockMap) {
            try {
                obj = this.lockMap.get(str);
                if (obj == null) {
                    obj = new Object();
                    this.lockMap.put(str, obj);
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (obj) {
            t10 = (T) aVar.mo8invoke();
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void setState(ConnectState connectState) {
        this.connectState = connectState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void unbind() {
        IService iService = this.mService;
        if (iService != null) {
            AILog.i("ServiceManager", "unbind");
            try {
                r.a aVar = n8.r.Companion;
                IBinder iBinderAsBinder = iService.asBinder();
                n8.r.m59constructorimpl(iBinderAsBinder != null ? Boolean.valueOf(iBinderAsBinder.unlinkToDeath(this, 0)) : null);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                n8.r.m59constructorimpl(n8.s.a(th));
            }
            try {
                Context context = this.context;
                if (context == null) {
                    kotlin.jvm.internal.r.r("context");
                    context = null;
                }
                context.unbindService(this.serviceConnection);
                n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th2) {
                r.a aVar3 = n8.r.Companion;
                n8.r.m59constructorimpl(n8.s.a(th2));
            }
            this.mService = null;
        }
    }

    private final void updateStateCallback(String str, DetectStateCallback detectStateCallback) {
        if (detectStateCallback != null) {
            List<WeakReference<DetectStateCallback>> list = this.detectStateCallback.get(str);
            if (list == null) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                copyOnWriteArrayList.add(new WeakReference(detectStateCallback));
                this.detectStateCallback.put(str, copyOnWriteArrayList);
            } else {
                if (!list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        if (((WeakReference) it.next()).get() == detectStateCallback) {
                            return;
                        }
                    }
                }
                list.add(new WeakReference<>(detectStateCallback));
            }
        }
    }

    public static /* synthetic */ void updateStateCallback$default(ServiceManager serviceManager, String str, DetectStateCallback detectStateCallback, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            detectStateCallback = null;
        }
        serviceManager.updateStateCallback(str, detectStateCallback);
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public <I extends FrameInputSlot, O extends FrameOutputSlot> int access(AIDetector<I, O> detector) {
        int iValue;
        kotlin.jvm.internal.r.e(detector, "detector");
        IService service = getService();
        ParamPackage paramPackage = new ParamPackage();
        paramPackage.setParam(ParamsKt.PARAM_KEY_SDK_VERSION, Integer.valueOf(detector.getProtocol()));
        paramPackage.setParam(ParamsKt.PARAM_KEY_SDK_VERSION_NAME, "2.0.3-beta3eac8c9");
        paramPackage.setParam("package::unit_name", detector.getName());
        paramPackage.setParam(ParamsKt.PARAM_KEY_API_LEVEL, Integer.valueOf(detector.getApiLevel()));
        Context context = this.context;
        if (context == null) {
            kotlin.jvm.internal.r.r("context");
            context = null;
        }
        paramPackage.setParam(ParamsKt.PARAM_KEY_PACKAGE_VERSION, Integer.valueOf(AIUtil.getMyAppVersion(context)));
        paramPackage.setDetectorExtras(detector.getExtras());
        try {
            iValue = service != null ? service.access(paramPackage) : ErrorCode.kErrorInvalidServiceState.value();
        } catch (RemoteException unused) {
            iValue = ErrorCode.kErrorRemoteDead.value();
        }
        AILog.d("ServiceManager", "access " + detector.getName() + ": " + iValue);
        return iValue;
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public int acquire(ParamPackage paramPackage) {
        IService service = getService();
        return service != null ? service.acquire(paramPackage) : ErrorCode.kErrorInvalidServiceState.value();
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public synchronized void addConnectionCallback(ConnectionCallback callback) {
        try {
            kotlin.jvm.internal.r.e(callback, "callback");
            if (!containConnectionCallback(callback)) {
                this.connectionCallbackList.add(new WeakReference<>(callback));
            }
            AILog.i("ServiceManager", "addCallback: size = " + this.connectionCallbackList.size());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public int attach(ConfigPackage configPackage) {
        IService service = getService();
        return service != null ? service.attach(configPackage) : ErrorCode.kErrorInvalidServiceState.value();
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public int authorize(ParamPackage paramPackage) {
        IService service = getService();
        return service != null ? service.authorize(paramPackage) : ErrorCode.kErrorInvalidServiceState.value();
    }

    public final ParamPackage authorizeAfterConnect() {
        AILog.d("ServiceManager", "authorizeAfterConnect");
        int iValue = ErrorCode.kErrorNone.value();
        ParamPackage paramPackage = new ParamPackage();
        Context context = this.context;
        if (context == null) {
            kotlin.jvm.internal.r.r("context");
            context = null;
        }
        Bundle extras = AIProtocol.getExtras(context);
        Set<String> setKeySet = extras.keySet();
        kotlin.jvm.internal.r.d(setKeySet, "keySet(...)");
        for (String str : setKeySet) {
            paramPackage.setParam(str, extras.get(str));
        }
        paramPackage.setParam(ParamsKt.PARAM_INIT_START_TIME, Long.valueOf(this.timeMonitor.getStartTime()));
        paramPackage.setParam(ParamsKt.PARAM_INIT_DURATION_TIME, Long.valueOf(this.timeMonitor.time()));
        try {
            iValue = authorize(paramPackage);
        } catch (RemoteException e10) {
            AILog.e("ServiceManager", "authorizeAfterConnect occurred error. " + e10.getMessage());
        }
        paramPackage.setParam(ParamsKt.PARAM_KEY_ERROR_CODE, Integer.valueOf(iValue));
        return paramPackage;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        IBinder iBinderAsBinder;
        AILog.w("ServiceManager", "binderDied");
        setState(ConnectState.DISCONNECT);
        notifyDisconnect();
        try {
            r.a aVar = n8.r.Companion;
            IService iService = this.mService;
            n8.r.m59constructorimpl((iService == null || (iBinderAsBinder = iService.asBinder()) == null) ? null : Boolean.valueOf(iBinderAsBinder.unlinkToDeath(this, 0)));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th));
        }
        AuthClient authClient = this.authClient;
        if (authClient == null) {
            kotlin.jvm.internal.r.r("authClient");
            authClient = null;
        }
        authClient.release();
        this.detectorMap.clear();
        this.mService = null;
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public synchronized void destroy() {
        AILog.i("ServiceManager", "destroy: state = " + this.connectState + ", connect size = " + this.connectionCallbackList.size());
        if (this.connectionCallbackList.size() > 1) {
            AILog.i("ServiceManager", "skip destroy: current connect size > 1");
            return;
        }
        if (!isDisconnect()) {
            setState(ConnectState.DISCONNECT);
            notifyDisconnect();
            unbind();
            this.mainHandler.removeMessages(100);
            this.detectorMap.clear();
            this.detectStateCallback.clear();
            removeAllCallbacks();
            AuthClient authClient = this.authClient;
            if (authClient == null) {
                kotlin.jvm.internal.r.r("authClient");
                authClient = null;
            }
            authClient.release();
        }
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public int detach(String str, String detectName) {
        kotlin.jvm.internal.r.e(detectName, "detectName");
        Integer num = (Integer) runLockAction(detectName, new C02521(detectName, str));
        return num != null ? num.intValue() : ErrorCode.kErrorNone.value();
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public int driveAndAttach(ConfigPackage configPackage, String detectName, DetectStateCallback detectStateCallback) {
        ParamPackage paramPackage;
        ParamPackage paramPackage2;
        kotlin.jvm.internal.r.e(detectName, "detectName");
        AILog.i("ServiceManager", "driveAndAttach " + detectName);
        updateStateCallback(detectName, detectStateCallback);
        IUnit iUnitDriveUnit = driveUnit(detectName, configPackage != null ? configPackage.getParamPackage() : null);
        int iValue = (configPackage == null || (paramPackage2 = configPackage.getParamPackage()) == null) ? ErrorCode.kErrorNone.value() : paramPackage2.getParamInt(ParamsKt.PARAM_KEY_ERROR_CODE);
        AILog.i("ServiceManager", "driveAndAttach " + detectName + " driveCode: " + iValue);
        ErrorCode errorCode = ErrorCode.kErrorNone;
        if (iValue == errorCode.value()) {
            iValue = iUnitDriveUnit != null ? iUnitDriveUnit.attach(configPackage) : (configPackage == null || (paramPackage = configPackage.getParamPackage()) == null) ? ErrorCode.kErrorNotReady.value() : paramPackage.getParamInt(ParamsKt.PARAM_KEY_ERROR_CODE);
        }
        AILog.i("ServiceManager", "driveAndAttach " + detectName + " attachCode: " + iValue + ", unit: " + iUnitDriveUnit);
        if (iUnitDriveUnit == null || iValue != errorCode.value()) {
            this.detectorMap.remove(detectName);
            if (detectStateCallback != null) {
                detectStateCallback.onAllFail(detectName, iValue, "driveAndAttach failed");
            }
        } else if (AIProtocol.isTelAI(this.serviceProtocol)) {
            Bundle bundle = new Bundle();
            try {
                iUnitDriveUnit.getRunningInfo(bundle);
            } catch (RemoteException e10) {
                AILog.e("ServiceManager", "getRunningInfo " + detectName + " err", e10);
            }
            if (detectStateCallback != null) {
                AIConfig aIConfig = AIConfig.Companion.get(bundle);
                aIConfig.setDetectName(detectName);
                detectStateCallback.onStart(aIConfig);
            }
        } else if (detectStateCallback != null) {
            detectStateCallback.onStart();
        }
        return iValue;
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public Bundle getRunningUnitInfo(String detectName) {
        IUnit iUnitAcquireExistUnit;
        kotlin.jvm.internal.r.e(detectName, "detectName");
        if (!AIProtocol.isAIGCLocal(this.serviceProtocol) || (iUnitAcquireExistUnit = acquireExistUnit(detectName, true)) == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        iUnitAcquireExistUnit.getRunningInfo(bundle);
        return bundle;
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public void infer(FramePackage framePackage) {
        IService service = getService();
        if (service != null) {
            service.infer(framePackage);
        }
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public synchronized void init(Context context, final ConnectionCallback connectionCallback, ServiceType type) {
        try {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(type, "type");
            if (context instanceof Application) {
                this.context = context;
            } else {
                Context applicationContext = context.getApplicationContext();
                kotlin.jvm.internal.r.d(applicationContext, "getApplicationContext(...)");
                this.context = applicationContext;
            }
            if (connectionCallback != null) {
                addConnectionCallback(connectionCallback);
            }
            if (this.authClient == null) {
                Context context2 = this.context;
                if (context2 == null) {
                    kotlin.jvm.internal.r.r("context");
                    context2 = null;
                }
                this.authClient = new AuthClient(context2);
            }
            if (isConnected()) {
                AILog.i("ServiceManager", "init with service has connected.");
                this.executor.execute(new Runnable() { // from class: com.oplus.aiunit.core.service.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        ServiceManager.init$lambda$2(connectionCallback);
                    }
                });
            } else if (isConnecting()) {
                AILog.i("ServiceManager", "init with service is connecting.");
                this.executor.execute(new Runnable() { // from class: com.oplus.aiunit.core.service.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        ServiceManager.init$lambda$3(connectionCallback);
                    }
                });
            } else if (isDisconnect()) {
                connectService(type);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public boolean isActive(ParamPackage paramPackage) {
        IService service = getService();
        if (service != null) {
            return service.isActive(paramPackage);
        }
        return false;
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public synchronized boolean isConnected() {
        return this.connectState == ConnectState.CONNECTED;
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public boolean isStarted(String detectName) {
        kotlin.jvm.internal.r.e(detectName, "detectName");
        return acquireExistUnit(detectName, true) != null;
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public void prepare(ParamPackage paramPackage) {
        IService service = getService();
        if (service != null) {
            service.prepare(paramPackage);
        }
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public int process(FramePackage framePackage, String detectName) {
        kotlin.jvm.internal.r.e(detectName, "detectName");
        IUnit iUnitAcquireExistUnit$default = acquireExistUnit$default(this, detectName, false, 2, null);
        if (iUnitAcquireExistUnit$default == null) {
            if (framePackage != null) {
                framePackage.setErrorCode(ErrorCode.kErrorDetectNotInit);
            }
            if (framePackage != null) {
                framePackage.setParam(ParamsKt.PARAM_KEY_PROCESS_RETRY, 1);
            }
            StringBuilder sb = new StringBuilder("process failed: ");
            sb.append(detectName);
            sb.append(", errCode = ");
            ErrorCode errorCode = ErrorCode.kErrorDetectNotInit;
            sb.append(errorCode);
            AILog.w("ServiceManager", sb.toString());
            return errorCode.value();
        }
        if (AIProtocol.isGlobalDep(this.serviceProtocol)) {
            Bundle bundle = new Bundle();
            iUnitAcquireExistUnit$default.getRunningInfo(bundle);
            ErrorCode errorCode2 = ErrorCode.kErrorNone;
            int i10 = bundle.getInt(ParamsKt.PARAM_KEY_ERROR_CODE, errorCode2.value());
            AILog.d("ServiceManager", "process: getRunningInfo errCode = " + i10);
            if (i10 != errorCode2.value()) {
                removeDestroyUnit(detectName);
                ErrorCode errorCodeFind = ErrorCode.find(i10);
                if (framePackage != null) {
                    framePackage.setErrorCode(errorCodeFind);
                }
                if (framePackage != null) {
                    framePackage.setParam(ParamsKt.PARAM_KEY_PROCESS_RETRY, 1);
                }
                AILog.w("ServiceManager", "process " + detectName + " errCode = " + errorCodeFind + '!');
                return i10;
            }
        } else if (AIProtocol.isAIGCCloud(this.serviceProtocol) && !iUnitAcquireExistUnit$default.isActive()) {
            removeDestroyUnit(detectName);
            if (framePackage != null) {
                framePackage.setErrorCode(ErrorCode.kErrorDetectNotAvailable);
            }
            if (framePackage != null) {
                framePackage.setParam(ParamsKt.PARAM_KEY_PROCESS_RETRY, 1);
            }
            AILog.w("ServiceManager", "process " + detectName + " isActive = false!");
            return ErrorCode.kErrorDetectNotAvailable.value();
        }
        AILog aILog = AILog.INSTANCE;
        if (aILog.getDebugMode() || aILog.isDebugging()) {
            StringBuilder sb2 = new StringBuilder("process ");
            sb2.append(detectName);
            sb2.append(' ');
            sb2.append(framePackage != null ? framePackage.getParamPackage() : null);
            sb2.append(". acquire = ");
            sb2.append(iUnitAcquireExistUnit$default);
            AILog.printD("ServiceManager", sb2.toString());
        }
        return iUnitAcquireExistUnit$default.process(framePackage);
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public void release(ParamPackage paramPackage) {
        IService service = getService();
        if (service != null) {
            service.release(paramPackage);
        }
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public synchronized void removeConnectionCallback(ConnectionCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        List<WeakReference<ConnectionCallback>> list = this.connectionCallbackList;
        final C02541 c02541 = new C02541(callback);
        list.removeIf(new Predicate() { // from class: com.oplus.aiunit.core.service.i
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ServiceManager.removeConnectionCallback$lambda$4(c02541, obj);
            }
        });
        if (this.connectionCallbackList.isEmpty()) {
            AILog.i("ServiceManager", "remove: connectionCallbackList is empty, could destroy");
            destroy();
        }
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public boolean removeStateCallback(String name, DetectStateCallback callback) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(callback, "callback");
        List<WeakReference<DetectStateCallback>> list = this.detectStateCallback.get(name);
        if (list == null) {
            return false;
        }
        final C02561 c02561 = new C02561(callback);
        return list.removeIf(new Predicate() { // from class: com.oplus.aiunit.core.service.a
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ServiceManager.removeStateCallback$lambda$5(c02561, obj);
            }
        });
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public boolean removeUnit(String detectName) {
        kotlin.jvm.internal.r.e(detectName, "detectName");
        boolean z10 = this.detectorMap.remove(detectName) != null;
        AILog.d("ServiceManager", "removeUnit: detectName = " + detectName + ", result = " + z10);
        return z10;
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public int detach(String configUuid) {
        kotlin.jvm.internal.r.e(configUuid, "configUuid");
        IService service = getService();
        return service != null ? service.detach(configUuid) : ErrorCode.kErrorInvalidServiceState.value();
    }

    @Override // com.oplus.aiunit.core.service.IServiceManager
    public int process(FramePackage framePackage) {
        IService service = getService();
        return service != null ? service.process(framePackage) : ErrorCode.kErrorInvalidServiceState.value();
    }
}
