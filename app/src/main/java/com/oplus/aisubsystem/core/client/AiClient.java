package com.oplus.aisubsystem.core.client;

import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.os.RemoteException;
import com.oplus.aisubsystem.core.client.b;
import com.oplus.aiunit.core.AIUnit;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.FrameUnit;
import com.oplus.aiunit.core.ParamPackage;
import com.oplus.aiunit.core.base.AIContext;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.callback.ConnectionCallback;
import com.oplus.aiunit.core.callback.IAIMessenger;
import com.oplus.aiunit.core.callback.IInferenceCallback;
import com.oplus.aiunit.core.callback.IProcessCallback;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.core.protocol.AIProtocol;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.protocol.common.FrameTag;
import com.oplus.aiunit.core.service.IServiceManager;
import com.oplus.aiunit.core.utils.AIUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.z;
import n8.h0;
import n8.j;
import n8.k;
import n8.r;
import w8.p;

/* JADX INFO: loaded from: classes.dex */
public abstract class AiClient extends AIContext implements com.oplus.aisubsystem.core.client.b {
    public static final b Companion = new b(null);
    private static final String FRAME_TYPE_INPUT = "input";
    private static final String FRAME_TYPE_OUTPUT = "output";
    private static final long MAX_AWAIT_TIME = 3000;
    private static final String PARAM_KEY_FRAME_TAG_GROUP = "package::frame_tag_group";
    private static final String PARAM_KEY_JSON_RESULT = "package::json_result";
    private static final String PARAM_KEY_JSON_SOURCE = "package::json_source";
    private static final String PARAM_KEY_PROCESS_CANCELLING = "package::process_cancelling";
    private static final String PARAM_KEY_STATISTICS = "package::statistics";
    private static final String PROCESS_CANCEL_CALLBACK = "process_cancel_callback";
    private static final String TAG = "AiClient";
    private final j clientCallback$delegate;
    private final List<AiClientCallback> clientCallbackList;
    private final j connectionCallback$delegate;
    private final Context context;
    private final Map<String, FramePackage> framePackageMap;
    private final j inferenceCallback$delegate;
    private CountDownLatch initLatch;
    private final AtomicBoolean isConnected;
    private final AtomicBoolean isStarted;
    private final AtomicBoolean isStopped;
    private final j manager$delegate;
    private final String oapApi;
    private final AiSettings settings;

    public abstract class InferenceCallback extends IInferenceCallback.Stub {
        private final FrameInputSlot inputSlot;
        private final FrameOutputSlot outputSlot;
        final /* synthetic */ AiClient this$0;

        public InferenceCallback(AiClient aiClient, FrameInputSlot inputSlot, FrameOutputSlot outputSlot) {
            r.e(inputSlot, "inputSlot");
            r.e(outputSlot, "outputSlot");
            this.this$0 = aiClient;
            this.inputSlot = inputSlot;
            this.outputSlot = outputSlot;
        }

        @Override // com.oplus.aiunit.core.callback.IInferenceCallback
        public final void onInferenceCallback(FramePackage framePackage) {
            h0 h0Var;
            if (framePackage != null) {
                AiClient aiClient = this.this$0;
                aiClient.restoreFrameUnit(this.inputSlot, this.outputSlot, framePackage);
                aiClient.postProcess(this.inputSlot, this.outputSlot, framePackage);
                int intErrorCode = framePackage.getIntErrorCode();
                if (intErrorCode == ErrorCode.kErrorNone.value()) {
                    onInferenceSuccess(this.outputSlot);
                } else {
                    onInferenceFailure(intErrorCode, framePackage.getErrorMessage());
                }
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            if (h0Var == null) {
                onInferenceFailure(ErrorCode.kErrorProcessFail.value(), "framePackage is null");
            }
        }

        public abstract void onInferenceFailure(int i10, String str);

        public abstract void onInferenceSuccess(FrameOutputSlot frameOutputSlot);
    }

    public interface a {
        Object failure(ErrorCode errorCode, String str);

        Object run();
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class c extends IProcessCallback.Stub {
        public c() {
        }

        @Override // com.oplus.aiunit.core.callback.IProcessCallback
        public String name() {
            return AiClient.PROCESS_CANCEL_CALLBACK;
        }

        @Override // com.oplus.aiunit.core.callback.IProcessCallback
        public int onCallback(ParamPackage paramPackage) {
            boolean z10 = AiClient.this.isStopped.get();
            z5.c.e(AiClient.TAG, "process cancelling: " + (z10 ? 1 : 0));
            if (paramPackage == null) {
                return 0;
            }
            paramPackage.setParam(AiClient.PARAM_KEY_PROCESS_CANCELLING, Integer.valueOf(z10 ? 1 : 0));
            return 0;
        }
    }

    public static final class d extends s implements w8.a {

        public static final class a extends AiClientCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AiClient f10827a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(AiClient aiClient, String str) {
                super(str);
                this.f10827a = aiClient;
            }

            @Override // com.oplus.aisubsystem.core.client.AiClientCallback
            public void onDestroy() {
                this.f10827a.isStarted.set(false);
                this.f10827a.destroyConfigPackage();
                this.f10827a.d();
                z5.c.e(AiClient.TAG, "onDestroy: oap api = " + this.f10827a.getOapApi());
                Iterator it = this.f10827a.clientCallbackList.iterator();
                while (it.hasNext()) {
                    ((AiClientCallback) it.next()).onDestroy();
                }
            }

            @Override // com.oplus.aisubsystem.core.client.AiClientCallback
            public void onFailure(int i10, String str) {
                this.f10827a.isStarted.set(false);
                this.f10827a.destroyConfigPackage();
                z5.c.b(AiClient.TAG, "onFailure: oap api = " + this.f10827a.getOapApi() + ", err = " + i10 + ", msg = " + str);
                HashMap map = new HashMap();
                Map map2 = this.f10827a.framePackageMap;
                AiClient aiClient = this.f10827a;
                synchronized (map2) {
                    map.putAll(aiClient.framePackageMap);
                    h0 h0Var = h0.INSTANCE;
                }
                z5.c.e(AiClient.TAG, "onFailure: allFramePackageMap size = " + map.size());
                AiClient aiClient2 = this.f10827a;
                Iterator it = map.entrySet().iterator();
                while (it.hasNext()) {
                    FramePackage framePackage = (FramePackage) ((Map.Entry) it.next()).getValue();
                    framePackage.setIntErrorCode(i10);
                    if (str != null) {
                        framePackage.setErrorMessage(str);
                    }
                    aiClient2.n(framePackage);
                }
                Iterator it2 = this.f10827a.clientCallbackList.iterator();
                while (it2.hasNext()) {
                    ((AiClientCallback) it2.next()).onFailure(i10, str);
                }
            }

            @Override // com.oplus.aisubsystem.core.client.AiClientCallback
            public void onStart() {
                this.f10827a.isStarted.set(true);
                z5.c.e(AiClient.TAG, "onStart: oap api = " + this.f10827a.getOapApi());
                Iterator it = this.f10827a.clientCallbackList.iterator();
                while (it.hasNext()) {
                    ((AiClientCallback) it.next()).onStart();
                }
            }

            @Override // com.oplus.aisubsystem.core.client.AiClientCallback
            public void onStop() {
                this.f10827a.isStarted.set(false);
                this.f10827a.destroyConfigPackage();
                this.f10827a.d();
                z5.c.e(AiClient.TAG, "onStop: oap api = " + this.f10827a.getOapApi());
                Iterator it = this.f10827a.clientCallbackList.iterator();
                while (it.hasNext()) {
                    ((AiClientCallback) it.next()).onStop();
                }
            }
        }

        public d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final a mo8invoke() {
            return new a(AiClient.this, AiClient.this.getOapApi());
        }
    }

    public static final class e extends s implements w8.a {

        public static final class a implements ConnectionCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AiClient f10828a;

            public a(AiClient aiClient) {
                this.f10828a = aiClient;
            }

            @Override // com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceConnect() {
                z5.c.e(AiClient.TAG, "onServiceConnect");
                this.f10828a.isConnected.set(true);
                CountDownLatch countDownLatch = this.f10828a.initLatch;
                AiClient aiClient = this.f10828a;
                synchronized (countDownLatch) {
                    aiClient.initLatch.countDown();
                    h0 h0Var = h0.INSTANCE;
                }
            }

            @Override // com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceConnectFailed(int i10) {
                z5.c.o(AiClient.TAG, "onServiceConnectFailed: err = " + i10);
                this.f10828a.isConnected.set(false);
                this.f10828a.isStarted.set(false);
                CountDownLatch countDownLatch = this.f10828a.initLatch;
                AiClient aiClient = this.f10828a;
                synchronized (countDownLatch) {
                    aiClient.initLatch.countDown();
                    h0 h0Var = h0.INSTANCE;
                }
                this.f10828a.d();
            }

            @Override // com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceDisconnect() {
                z5.c.e(AiClient.TAG, "onServiceDisconnect");
                this.f10828a.isConnected.set(false);
                this.f10828a.isStarted.set(false);
                CountDownLatch countDownLatch = this.f10828a.initLatch;
                AiClient aiClient = this.f10828a;
                synchronized (countDownLatch) {
                    aiClient.initLatch.countDown();
                    h0 h0Var = h0.INSTANCE;
                }
                this.f10828a.d();
            }
        }

        public e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final a mo8invoke() {
            return new a(AiClient.this);
        }
    }

    public static final class f extends s implements w8.a {

        public static final class a extends IInferenceCallback.Stub {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AiClient f10829a;

            public a(AiClient aiClient) {
                this.f10829a = aiClient;
            }

            @Override // com.oplus.aiunit.core.callback.IInferenceCallback
            public void onInferenceCallback(FramePackage framePackage) {
                z5.c.e(AiClient.TAG, "onInferenceCallback: oap api = " + this.f10829a.getOapApi());
                if (framePackage != null) {
                    this.f10829a.n(framePackage);
                }
            }
        }

        public f() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final a mo8invoke() {
            return new a(AiClient.this);
        }
    }

    public static final class g extends s implements w8.a {
        public static final g INSTANCE = new g();

        public g() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final IServiceManager mo8invoke() {
            return IServiceManager.Companion.getInstance();
        }
    }

    public static final class h extends kotlin.coroutines.a implements z {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AiClient f10830b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f10831c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(z.a aVar, AiClient aiClient, String str) {
            super(aVar);
            this.f10830b = aiClient;
            this.f10831c = str;
        }

        @Override // kotlinx.coroutines.z
        public void b0(kotlin.coroutines.g gVar, Throwable th) {
            z5.c.c(AiClient.TAG, "onInferenceCallback", th);
            AiClient aiClient = this.f10830b;
            r.b(this.f10831c);
            aiClient.p(this.f10831c);
        }
    }

    public static final class i extends l implements p {
        final /* synthetic */ FramePackage $framePackage;
        final /* synthetic */ String $requestId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, FramePackage framePackage, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$requestId = str;
            this.$framePackage = framePackage;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return AiClient.this.new i(this.$requestId, this.$framePackage, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.b.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n8.s.b(obj);
            AiClient aiClient = AiClient.this;
            String requestId = this.$requestId;
            r.d(requestId, "$requestId");
            IInferenceCallback iInferenceCallbackH = aiClient.h(requestId);
            if (iInferenceCallbackH != null) {
                iInferenceCallbackH.onInferenceCallback(this.$framePackage);
            }
            int intErrorCode = this.$framePackage.getIntErrorCode();
            if (intErrorCode != ErrorCode.kErrorBusy.value()) {
                z5.c.e(AiClient.TAG, "onInferenceCallback: errCode=" + intErrorCode + ", removeFramePackageCache=" + this.$requestId);
                AiClient aiClient2 = AiClient.this;
                String requestId2 = this.$requestId;
                r.d(requestId2, "$requestId");
                aiClient2.p(requestId2);
            }
            return h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(c0 c0Var, kotlin.coroutines.d dVar) {
            return ((i) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
        }
    }

    public AiClient(Context context, String oapApi, AiSettings settings) {
        r.e(context, "context");
        r.e(oapApi, "oapApi");
        r.e(settings, "settings");
        this.context = context;
        this.oapApi = oapApi;
        this.settings = settings;
        this.initLatch = new CountDownLatch(1);
        this.isConnected = new AtomicBoolean(false);
        this.isStarted = new AtomicBoolean(false);
        this.isStopped = new AtomicBoolean(false);
        this.framePackageMap = new androidx.collection.a();
        this.clientCallbackList = new CopyOnWriteArrayList();
        this.manager$delegate = k.b(g.INSTANCE);
        this.connectionCallback$delegate = k.b(new e());
        this.clientCallback$delegate = k.b(new d());
        this.inferenceCallback$delegate = k.b(new f());
    }

    private final void a(FramePackage framePackage) {
        String element = framePackage.getParamPackage().getParamStr(com.oplus.aisubsystem.core.client.a.PARAM_KEY_REQUEST_ID);
        if (element == null || kotlin.text.r.Y(element)) {
            element = String.valueOf(framePackage.hashCode());
            framePackage.getParamPackage().setParam(com.oplus.aisubsystem.core.client.a.PARAM_KEY_REQUEST_ID, element);
        }
        synchronized (this.framePackageMap) {
            Map<String, FramePackage> map = this.framePackageMap;
            r.d(element, "element");
            map.put(element, framePackage);
            z5.c.e(TAG, "addFramePackageCache: framePackageMap size = " + this.framePackageMap.size());
            h0 h0Var = h0.INSTANCE;
        }
    }

    private final ConfigPackage applyConfigPackage() {
        ConfigPackage configPackage = getConfigPackage();
        if (configPackage != null) {
            return configPackage;
        }
        ConfigPackage configPackageCreateConfigPackage = createConfigPackage();
        configPackageCreateConfigPackage.getParamPackage().setParam(ParamsKt.PARAM_KEY_PACKAGE_NAME, this.context.getPackageName());
        configPackageCreateConfigPackage.getParamPackage().setParam(ParamsKt.PARAM_KEY_PACKAGE_VERSION, Integer.valueOf(AIUtil.getMyAppVersion(this.context)));
        configPackageCreateConfigPackage.getParamPackage().setParam(ParamsKt.PARAM_KEY_SDK_VERSION, Integer.valueOf(AIProtocol.getClientProtocol()));
        configPackageCreateConfigPackage.getParamPackage().setParam(ParamsKt.PARAM_KEY_SDK_VERSION_NAME, AIProtocol.INSTANCE.getSdkName());
        r.d(configPackageCreateConfigPackage, "apply(...)");
        return configPackageCreateConfigPackage;
    }

    private final FramePackage b(FrameInputSlot frameInputSlot) {
        frameInputSlot.setProcessCallback(new c());
        if (frameInputSlot.getErrorCode() != ErrorCode.kErrorNone) {
            z5.c.b(TAG, "some error occurs at input slot, with code " + frameInputSlot.getErrorCode());
            return null;
        }
        FramePackage framePackageApplyFramePackage = applyFramePackage();
        if (framePackageApplyFramePackage != null) {
            framePackageApplyFramePackage.mergeParam(frameInputSlot.getCustomParam());
            framePackageApplyFramePackage.mergeParam(i(framePackageApplyFramePackage));
        }
        return framePackageApplyFramePackage;
    }

    private final FramePackage c(FrameInputSlot frameInputSlot, FramePackage framePackage) {
        if (framePackage == null) {
            return b(frameInputSlot);
        }
        framePackage.mergeParam(frameInputSlot.getCustomParam());
        framePackage.mergeParam(i(framePackage));
        return framePackage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        synchronized (this.framePackageMap) {
            this.framePackageMap.clear();
            h0 h0Var = h0.INSTANCE;
        }
    }

    private final AiClientCallback e() {
        return (AiClientCallback) this.clientCallback$delegate.getValue();
    }

    private final ConfigPackage f(FramePackage framePackage) {
        ParamPackage paramPackage;
        ConfigPackage configPackageApplyConfigPackage = applyConfigPackage();
        IAIMessenger iAIMessenger = (framePackage == null || (paramPackage = framePackage.getParamPackage()) == null) ? null : (IAIMessenger) paramPackage.getParamCallbackDirectly(ParamsKt.PARAM_KEY_CLIENT_MESSENGER);
        if (iAIMessenger != null) {
            configPackageApplyConfigPackage.getParamPackage().setParam(ParamsKt.PARAM_KEY_CLIENT_MESSENGER, iAIMessenger);
        }
        return configPackageApplyConfigPackage;
    }

    private final Bundle g() {
        return AIProtocol.getExtras(this.context);
    }

    public static /* synthetic */ ConfigPackage getClientConfigPackage$default(AiClient aiClient, FramePackage framePackage, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getClientConfigPackage");
        }
        if ((i10 & 1) != 0) {
            framePackage = null;
        }
        return aiClient.f(framePackage);
    }

    public static /* synthetic */ ParamPackage getClientParamPackage$default(AiClient aiClient, FramePackage framePackage, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getClientParamPackage");
        }
        if ((i10 & 1) != 0) {
            framePackage = null;
        }
        return aiClient.i(framePackage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IInferenceCallback h(String str) {
        ParamPackage paramPackage;
        synchronized (this.framePackageMap) {
            try {
                FramePackage framePackage = this.framePackageMap.get(str);
                paramPackage = framePackage != null ? framePackage.getParamPackage() : null;
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (paramPackage != null) {
            return (IInferenceCallback) paramPackage.getParamCallbackDirectly(com.oplus.aisubsystem.core.client.a.PARAM_KEY_CLIENT_INFERENCE_CALLBACK);
        }
        return null;
    }

    private final ParamPackage i(FramePackage framePackage) {
        ParamPackage paramPackage = new ParamPackage();
        ConfigPackage configPackageF = f(framePackage);
        paramPackage.mergeParam(configPackageF.getParamPackage());
        paramPackage.setParam(ParamsKt.PARAM_KEY_PACKAGE_NAME, this.context.getPackageName());
        paramPackage.setParam(ParamsKt.PARAM_KEY_PACKAGE_VERSION, Integer.valueOf(AIUtil.getMyAppVersion(this.context)));
        paramPackage.setParam(ParamsKt.PARAM_KEY_SDK_VERSION, Integer.valueOf(AIProtocol.getClientProtocol()));
        paramPackage.setParam(ParamsKt.PARAM_KEY_SDK_VERSION_NAME, AIProtocol.INSTANCE.getSdkName());
        paramPackage.setParam(ParamsKt.PARAM_KEY_DETECTOR_EXTRAS, g());
        paramPackage.setParam("package::unit_name", this.oapApi);
        paramPackage.setParam(ParamsKt.PARAM_KEY_CLIENT_PID, Integer.valueOf(Process.myPid()));
        paramPackage.setParam(ParamsKt.PARAM_KEY_CLIENT_UID, Integer.valueOf(Process.myUid()));
        paramPackage.setParam(ParamsKt.PARAM_KEY_CLIENT_PACKAGE_NAME, this.context.getPackageName());
        paramPackage.setParam(ParamsKt.PARAM_INIT_START_TIME, Long.valueOf(System.currentTimeMillis()));
        paramPackage.setParam(ParamsKt.PARAM_KEY_UNIT_LISTENER, e());
        paramPackage.setParamParcelable(ParamsKt.PARAM_KEY_CONFIG_PACKAGE, configPackageF);
        return paramPackage;
    }

    public static /* synthetic */ void infer$default(AiClient aiClient, FrameInputSlot frameInputSlot, FrameOutputSlot frameOutputSlot, FramePackage framePackage, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: infer");
        }
        if ((i10 & 4) != 0) {
            framePackage = null;
        }
        aiClient.infer(frameInputSlot, frameOutputSlot, framePackage);
    }

    private final ConnectionCallback j() {
        return (ConnectionCallback) this.connectionCallback$delegate.getValue();
    }

    private final IInferenceCallback k() {
        return (IInferenceCallback) this.inferenceCallback$delegate.getValue();
    }

    private final IServiceManager l() {
        return (IServiceManager) this.manager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void m() {
        Object objM59constructorimpl;
        try {
            if (!this.isConnected.get()) {
                synchronized (this.initLatch) {
                    try {
                        if (this.initLatch.getCount() <= 0) {
                            this.initLatch = new CountDownLatch(1);
                        }
                        h0 h0Var = h0.INSTANCE;
                    } finally {
                    }
                }
                AIUnit.Companion.init(this.context, j(), z5.c.INSTANCE.d());
                try {
                    r.a aVar = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(this.initLatch.await(MAX_AWAIT_TIME, TimeUnit.MILLISECONDS)));
                } catch (Throwable th) {
                    r.a aVar2 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    z5.c.b(TAG, "initState: connect wait exception: " + thM62exceptionOrNullimpl);
                }
            }
            z5.c.e(TAG, "initState: isConnected = " + this.isConnected);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(FramePackage framePackage) {
        String paramStr = framePackage.getParamPackage().getParamStr(com.oplus.aisubsystem.core.client.a.PARAM_KEY_REQUEST_ID);
        kotlinx.coroutines.g.b(x5.c.f16393g.a().c(), new h(z.f13394e, this, paramStr), null, new i(paramStr, framePackage, null), 2, null);
    }

    private final void o(FramePackage framePackage) {
        ErrorCode errorCode = framePackage.getErrorCode();
        ErrorCode errorCode2 = ErrorCode.kErrorNone;
        if (errorCode != errorCode2) {
            z5.c.b(TAG, "processInner: existing error occurred already, code = " + framePackage.getErrorCode());
            return;
        }
        try {
            this.isStopped.set(false);
            int iProcess = l().process(framePackage);
            if (iProcess != errorCode2.value() && framePackage.getParamInt(ParamsKt.PARAM_KEY_PROCESS_RETRY) == 1) {
                z5.c.e(TAG, "processInner: need to retry process, code = " + iProcess);
                iProcess = l().process(framePackage);
            }
            z5.c.e(TAG, "processInner: code = " + iProcess);
        } catch (RemoteException e10) {
            z5.c.b(TAG, "processInner: remote dead = " + e10);
            framePackage.setErrorCode(ErrorCode.kErrorRemoteDead);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(String str) {
        synchronized (this.framePackageMap) {
            this.framePackageMap.remove(str);
        }
    }

    public static /* synthetic */ int process$default(AiClient aiClient, FrameInputSlot frameInputSlot, FrameOutputSlot frameOutputSlot, FramePackage framePackage, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: process");
        }
        if ((i10 & 4) != 0) {
            framePackage = null;
        }
        return aiClient.process(frameInputSlot, frameOutputSlot, framePackage);
    }

    private final void q(ParamPackage paramPackage) {
        Integer runningType = getSettings().getRunningType();
        if (runningType != null) {
            paramPackage.setParam(com.oplus.aisubsystem.core.client.a.PARAM_KEY_RUNNING_TYPE, Integer.valueOf(runningType.intValue()));
        }
        Integer runningId = getSettings().getRunningId();
        if (runningId != null) {
            paramPackage.setParam(com.oplus.aisubsystem.core.client.a.PARAM_KEY_RUNNING_ID, Integer.valueOf(runningId.intValue()));
        }
    }

    public static /* synthetic */ Object runConnectedAction$default(AiClient aiClient, boolean z10, w8.a aVar, int i10, Object obj) {
        Object objM59constructorimpl;
        Object objMo8invoke;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: runConnectedAction");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        try {
            r.a aVar2 = n8.r.Companion;
            aiClient.m();
            if (aiClient.isConnected.get()) {
                objMo8invoke = aVar.mo8invoke();
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                objMo8invoke = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(objMo8invoke);
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        if (z10) {
            n8.s.b(objM59constructorimpl);
        } else if (n8.r.m65isFailureimpl(objM59constructorimpl)) {
            return null;
        }
        return objM59constructorimpl;
    }

    public <I extends FrameInputSlot> I createInputSlot() {
        return (I) new FrameInputSlot(this);
    }

    public <O extends FrameOutputSlot> O createOutputSlot() {
        return (O) new FrameOutputSlot(this);
    }

    public void destroy() {
        z5.c.e(TAG, "destroy: " + this.oapApi);
        if (this.isStopped.get()) {
            return;
        }
        b.a.a(this, null, 1, null);
    }

    public final Context getContext() {
        return this.context;
    }

    public final String getOapApi() {
        return this.oapApi;
    }

    public Bundle getRunningInfo() {
        Object objM59constructorimpl;
        Bundle unstableRunningInfo$default;
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (this.isConnected.get()) {
                z5.c.a(TAG, "getRunningInfo: runAction for " + this.oapApi);
                unstableRunningInfo$default = AIUnit.Companion.getUnstableRunningInfo$default(AIUnit.Companion, this.context, this.oapApi, null, 4, null);
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                unstableRunningInfo$default = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(unstableRunningInfo$default);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        Bundle bundle = (Bundle) (n8.r.m65isFailureimpl(objM59constructorimpl) ? null : objM59constructorimpl);
        return bundle == null ? new Bundle() : bundle;
    }

    public int getRunningType() {
        Object objM59constructorimpl;
        Integer numValueOf;
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (this.isConnected.get()) {
                z5.c.a(TAG, "getRunningType: runAction for " + this.oapApi);
                numValueOf = Integer.valueOf(AIUnit.Companion.getUnstableRunningInfo$default(AIUnit.Companion, this.context, this.oapApi, null, 4, null).getInt(ParamsKt.PARAM_KEY_DETECT_DATA_RUN_TYPE));
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                numValueOf = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(numValueOf);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        Integer num = (Integer) (n8.r.m65isFailureimpl(objM59constructorimpl) ? null : objM59constructorimpl);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public AiSettings getSettings() {
        return this.settings;
    }

    public int getUnitState() {
        Object objM59constructorimpl;
        Integer numValueOf;
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (this.isConnected.get()) {
                z5.c.a(TAG, "getUnitState: runAction for " + this.oapApi);
                numValueOf = Integer.valueOf(AIUnit.Companion.getUnitState(this.context, this.oapApi, g()));
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                numValueOf = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(numValueOf);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        Integer num = (Integer) (n8.r.m65isFailureimpl(objM59constructorimpl) ? null : objM59constructorimpl);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public void infer(FramePackage framePackage) {
        Object objM59constructorimpl;
        h0 h0Var;
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (this.isConnected.get()) {
                z5.c.a(TAG, "infer: runAction for " + this.oapApi);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (framePackage != null) {
                    framePackage.getParamPackage().mergeParam(i(framePackage));
                    framePackage.getParamPackage().setParam(ParamsKt.PARAM_KEY_INFERENCE_CALLBACK, k());
                    a(framePackage);
                    z5.c.a(TAG, "infer: ParamPackage extra param = " + framePackage.getParamPackage().getParamExtra());
                    l().infer(framePackage);
                }
                z5.c.e(TAG, "infer: costTime = " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                h0Var = h0.INSTANCE;
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        n8.r.m65isFailureimpl(objM59constructorimpl);
    }

    public boolean isActive() {
        Object objM59constructorimpl;
        Boolean boolValueOf;
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (this.isConnected.get()) {
                z5.c.a(TAG, "isActive: runAction for " + this.oapApi);
                boolValueOf = Boolean.valueOf(l().isActive(getClientParamPackage$default(this, null, 1, null)));
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                boolValueOf = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(boolValueOf);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        Boolean bool = (Boolean) (n8.r.m65isFailureimpl(objM59constructorimpl) ? null : objM59constructorimpl);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public boolean isSupported() {
        Object objM59constructorimpl;
        Boolean boolValueOf;
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (this.isConnected.get()) {
                z5.c.a(TAG, "isSupported: runAction for " + this.oapApi);
                boolValueOf = Boolean.valueOf(AIUnit.Companion.isDetectSupported(this.context, this.oapApi, g()));
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                boolValueOf = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(boolValueOf);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        Boolean bool = (Boolean) (n8.r.m65isFailureimpl(objM59constructorimpl) ? null : objM59constructorimpl);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public void postProcess(FrameInputSlot inputSlot, FrameOutputSlot outputSlot, FramePackage framePackage) {
        String str;
        kotlin.jvm.internal.r.e(inputSlot, "inputSlot");
        kotlin.jvm.internal.r.e(outputSlot, "outputSlot");
        kotlin.jvm.internal.r.e(framePackage, "framePackage");
        z5.c.e(TAG, "postProcess: " + this.oapApi);
        z5.c.e(TAG, "postProcess: read some data from share memory = " + framePackage.readInOutBigDataFromShareMemory());
        framePackage.clearJsonMemory();
        outputSlot.setFramePackage(framePackage);
        outputSlot.setJsonResult(framePackage.getParamStr("package::json_result"));
        outputSlot.setStatistics(framePackage.getParamStr(PARAM_KEY_STATISTICS));
        try {
            outputSlot.clearBitmaps();
            Map<Integer, FrameTag> outputTags = FrameTag.getOutputTags(framePackage.getParamStr(PARAM_KEY_FRAME_TAG_GROUP));
            int frameListSize = outputSlot.getFrameListSize();
            for (int i10 = 0; i10 < frameListSize; i10++) {
                FrameTag frameTag = outputTags.get(Integer.valueOf(i10));
                if (frameTag == null) {
                    str = "postProcess: invalid frame tag for " + i10;
                } else {
                    FrameUnit frameUnit = outputSlot.getFrameUnit(i10);
                    if (frameUnit == null) {
                        str = "postProcess: invalid src unit after process";
                    } else {
                        List<FrameTag.FrameFragment> fragments = frameTag.getFragments();
                        kotlin.jvm.internal.r.b(fragments);
                        if (fragments.isEmpty()) {
                            Integer packageOrder = frameTag.packageOrder;
                            kotlin.jvm.internal.r.d(packageOrder, "packageOrder");
                            FrameUnit frameUnit2 = framePackage.getFrameUnit(packageOrder.intValue());
                            if (frameUnit2 == null) {
                                z5.c.b(TAG, "postProcess: invalid dest unit after process");
                            } else {
                                frameUnit.move(frameUnit2);
                                outputSlot.convertBitmap(frameUnit);
                            }
                        } else {
                            Iterator<T> it = fragments.iterator();
                            while (it.hasNext()) {
                                outputSlot.convertBitmap(new FrameUnit(frameUnit, (FrameTag.FrameFragment) it.next()));
                            }
                        }
                    }
                }
                z5.c.b(TAG, str);
                break;
            }
        } finally {
            inputSlot.cleanAutoFrameUnit();
            outputSlot.cleanAutoFrameUnit();
        }
    }

    public void preProcess(FrameInputSlot inputSlot, FrameOutputSlot outputSlot, FramePackage framePackage) {
        kotlin.jvm.internal.r.e(inputSlot, "inputSlot");
        kotlin.jvm.internal.r.e(outputSlot, "outputSlot");
        kotlin.jvm.internal.r.e(framePackage, "framePackage");
        z5.c.e(TAG, "preProcess: " + this.oapApi);
        String jsonSource = inputSlot.getJsonSource();
        if (jsonSource != null) {
            z5.c.a(TAG, "preProcess: jsonSource = ".concat(jsonSource));
            framePackage.setParam("package::json_source", jsonSource);
        }
        int frameListSize = inputSlot.getFrameListSize();
        z5.c.a(TAG, "preProcess: frame list size = " + frameListSize);
        ArrayList arrayList = new ArrayList();
        int size = 0;
        while (size < frameListSize) {
            FrameUnit frameUnit = inputSlot.getFrameUnit(size);
            if (frameUnit != null) {
                if (frameUnit.isFragment() || frameUnit.isFragmentParent()) {
                    FrameUnit frameUnitFindFragmentParent = inputSlot.findFragmentParent(frameUnit);
                    List<FrameUnit> listFindFragmentChildList = inputSlot.findFragmentChildList(frameUnit);
                    FrameTag frameTag = new FrameTag(Integer.valueOf(framePackage.getFrameUnitList().size()), Integer.valueOf(size), FRAME_TYPE_INPUT, frameUnitFindFragmentParent.getTag());
                    arrayList.add(frameTag);
                    framePackage.setFrameUnit(size, frameUnitFindFragmentParent);
                    if (listFindFragmentChildList != null) {
                        int frameSize = 0;
                        for (FrameUnit frameUnit2 : listFindFragmentChildList) {
                            frameUnitFindFragmentParent.setData(frameUnit2.getData(), frameSize);
                            frameTag.addChildFrameUnit(frameUnit2, frameSize);
                            frameSize += frameUnit2.getFrameSize();
                        }
                    }
                    size += (listFindFragmentChildList != null ? listFindFragmentChildList.size() : 0) + 1;
                } else {
                    framePackage.setFrameUnit(size, frameUnit);
                    arrayList.add(new FrameTag(Integer.valueOf(size), Integer.valueOf(size), FRAME_TYPE_INPUT, frameUnit.getTag()));
                    size++;
                }
            }
        }
        int size2 = framePackage.getFrameUnitList().size();
        int frameListSize2 = outputSlot.getFrameListSize();
        for (int i10 = 0; i10 < frameListSize2; i10++) {
            FrameUnit frameUnit3 = outputSlot.getFrameUnit(i10);
            if (frameUnit3 == null) {
                z5.c.b(TAG, "output frame index " + i10 + " is null");
                framePackage.setErrorCode(ErrorCode.kErrorParamLengthMismatch);
                return;
            }
            int i11 = size2 + i10;
            framePackage.setFrameUnit(i11, frameUnit3);
            arrayList.add(new FrameTag(Integer.valueOf(i11), Integer.valueOf(i10), FRAME_TYPE_OUTPUT, frameUnit3.getTag()));
        }
        framePackage.setParam(PARAM_KEY_FRAME_TAG_GROUP, FrameTag.listToJson(arrayList).toString());
        z5.c.e(TAG, "preProcess: move some data to share memory = " + framePackage.moveInOutBigDataToShareMemory());
    }

    public void prepare(ParamPackage paramPackage) {
        Object objM59constructorimpl;
        h0 h0Var;
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (this.isConnected.get()) {
                z5.c.a(TAG, "prepare: runAction for " + this.oapApi);
                long jCurrentTimeMillis = System.currentTimeMillis();
                l().prepare(paramPackage);
                z5.c.e(TAG, "prepare: costTime = " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                h0Var = h0.INSTANCE;
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        n8.r.m65isFailureimpl(objM59constructorimpl);
    }

    public final <I extends FrameInputSlot, O extends FrameOutputSlot> int process(I inputSlot, O outputSlot) {
        kotlin.jvm.internal.r.e(inputSlot, "inputSlot");
        kotlin.jvm.internal.r.e(outputSlot, "outputSlot");
        return process(inputSlot, outputSlot, null);
    }

    public void registerUnitStatus(AiClientCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        if (this.clientCallbackList.contains(callback)) {
            return;
        }
        this.clientCallbackList.add(callback);
    }

    public void release(ParamPackage paramPackage) {
        Object objM59constructorimpl;
        h0 h0Var;
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (this.isConnected.get()) {
                z5.c.a(TAG, "release: runAction for " + this.oapApi);
                long jCurrentTimeMillis = System.currentTimeMillis();
                l().release(paramPackage);
                z5.c.e(TAG, "release: costTime = " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                h0Var = h0.INSTANCE;
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        n8.r.m65isFailureimpl(objM59constructorimpl);
    }

    public final void restoreFrameUnit(FrameInputSlot inputSlot, FrameOutputSlot outputSlot, FramePackage framePackage) {
        kotlin.jvm.internal.r.e(inputSlot, "inputSlot");
        kotlin.jvm.internal.r.e(outputSlot, "outputSlot");
        kotlin.jvm.internal.r.e(framePackage, "framePackage");
        int frameListSize = inputSlot.getFrameListSize();
        z5.c cVar = z5.c.INSTANCE;
        if (cVar.f() || cVar.d()) {
            z5.c.i(TAG, "restoreFrameUnit: inputFrameListSize = " + frameListSize);
        }
        for (int i10 = 0; i10 < frameListSize; i10++) {
            FrameUnit frameUnit = inputSlot.getFrameUnit(i10);
            if (frameUnit != null) {
                framePackage.restoreParcelableFrameUnit(frameUnit);
            }
        }
        int frameListSize2 = outputSlot.getFrameListSize();
        z5.c cVar2 = z5.c.INSTANCE;
        if (cVar2.f() || cVar2.d()) {
            z5.c.i(TAG, "restoreFrameUnit: outputFrameListSize = " + frameListSize2);
        }
        for (int i11 = 0; i11 < frameListSize2; i11++) {
            FrameUnit frameUnit2 = outputSlot.getFrameUnit(i11);
            if (frameUnit2 != null) {
                framePackage.restoreParcelableFrameUnit(frameUnit2);
            }
        }
    }

    public final <R> R runAction(a action) {
        kotlin.jvm.internal.r.e(action, "action");
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (!this.isConnected.get()) {
                z5.c.o(TAG, "runAction failed: service not connected!");
                return (R) action.failure(ErrorCode.kErrorInvalidServiceState, "service not connected");
            }
            applyConfigPackage();
            long jCurrentTimeMillis = System.currentTimeMillis();
            R r10 = (R) action.run();
            z5.c.e(TAG, "runAction: " + this.oapApi + " cost time " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
            return r10;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl == null) {
                return null;
            }
            action.failure(ErrorCode.kErrorProcessFail, "runAction failed: " + thM62exceptionOrNullimpl.getMessage());
            z5.c.c(TAG, "runAction", thM62exceptionOrNullimpl);
            return null;
        }
    }

    public void start(ParamPackage paramPackage) {
        if (this.isStarted.get()) {
            z5.c.e(TAG, "start: has been started!");
            e().onStart();
            return;
        }
        z5.c.e(TAG, "start: need to start " + this.oapApi);
        ParamPackage clientParamPackage$default = getClientParamPackage$default(this, null, 1, null);
        q(clientParamPackage$default);
        if (paramPackage != null) {
            clientParamPackage$default.mergeParam(paramPackage);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        prepare(clientParamPackage$default);
        z5.c.e(TAG, "start: costTime = " + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    @Override // com.oplus.aisubsystem.core.client.b
    public void stop(ParamPackage paramPackage) {
        z5.c.e(TAG, "stop: oap api = " + this.oapApi + ", isConnected = " + this.isConnected + ", isStarted = " + this.isStarted);
        ParamPackage clientParamPackage$default = getClientParamPackage$default(this, null, 1, null);
        q(clientParamPackage$default);
        if (paramPackage != null) {
            clientParamPackage$default.mergeParam(paramPackage);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        release(clientParamPackage$default);
        z5.c.e(TAG, "stop: costTime = " + (System.currentTimeMillis() - jCurrentTimeMillis));
        AIUnit.Companion.remove(j());
        this.isConnected.set(false);
        e().onStop();
        this.clientCallbackList.clear();
        this.isStopped.set(true);
    }

    public void unregisterUnitStatus(AiClientCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        this.clientCallbackList.remove(callback);
    }

    public final <I extends FrameInputSlot, O extends FrameOutputSlot> void infer(I inputSlot, O outputSlot, FramePackage framePackage) {
        Object objM59constructorimpl;
        h0 h0Var;
        ParamPackage paramPackage;
        kotlin.jvm.internal.r.e(inputSlot, "inputSlot");
        kotlin.jvm.internal.r.e(outputSlot, "outputSlot");
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (this.isConnected.get()) {
                z5.c.a(TAG, "infer: runAction for " + this.oapApi);
                FramePackage framePackageC = c(inputSlot, framePackage);
                if (framePackageC != null && (paramPackage = framePackageC.getParamPackage()) != null) {
                    paramPackage.setParam(ParamsKt.PARAM_KEY_INFERENCE_CALLBACK, k());
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (framePackageC != null) {
                    preProcess(inputSlot, outputSlot, framePackageC);
                    a(framePackageC);
                    l().infer(framePackageC);
                }
                z5.c.e(TAG, "infer: costTime = " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                h0Var = h0.INSTANCE;
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        n8.r.m65isFailureimpl(objM59constructorimpl);
    }

    public final <I extends FrameInputSlot, O extends FrameOutputSlot> int process(I inputSlot, O outputSlot, FramePackage framePackage) {
        Object objM59constructorimpl;
        h0 h0Var;
        Integer numValueOf;
        kotlin.jvm.internal.r.e(inputSlot, "inputSlot");
        kotlin.jvm.internal.r.e(outputSlot, "outputSlot");
        checkMainThread();
        try {
            r.a aVar = n8.r.Companion;
            m();
            if (this.isConnected.get()) {
                z5.c.a(TAG, "infer: runProcess for " + this.oapApi);
                int iValue = ErrorCode.kErrorNone.value();
                long jCurrentTimeMillis = System.currentTimeMillis();
                FramePackage framePackageC = c(inputSlot, framePackage);
                if (framePackageC != null) {
                    try {
                        preProcess(inputSlot, outputSlot, framePackageC);
                        o(framePackageC);
                        postProcess(inputSlot, outputSlot, framePackageC);
                        iValue = framePackageC.getErrorCode().value();
                        h0Var = h0.INSTANCE;
                    } catch (Throwable th) {
                        inputSlot.cleanAutoFrameUnit();
                        outputSlot.cleanAutoFrameUnit();
                        if (framePackageC != null) {
                            framePackageC.clearJsonMemory();
                        }
                        throw th;
                    }
                } else {
                    h0Var = null;
                }
                if (h0Var == null) {
                    iValue = ErrorCode.kErrorInvalidParam.value();
                }
                inputSlot.cleanAutoFrameUnit();
                outputSlot.cleanAutoFrameUnit();
                if (framePackageC != null) {
                    framePackageC.clearJsonMemory();
                }
                z5.c.e(TAG, "process: costTime = " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                numValueOf = Integer.valueOf(iValue);
            } else {
                z5.c.o(TAG, "runAction failed: service not connected!");
                numValueOf = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(numValueOf);
        } catch (Throwable th2) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th2));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            z5.c.c(TAG, "runAction failed with exception: ", thM62exceptionOrNullimpl);
        }
        Integer num = (Integer) (n8.r.m65isFailureimpl(objM59constructorimpl) ? null : objM59constructorimpl);
        return num != null ? num.intValue() : ErrorCode.kErrorProcessFail.value();
    }

    @Override // com.oplus.aiunit.core.base.AIContext
    public void process(FramePackage framePackage) {
        infer(framePackage);
    }
}
