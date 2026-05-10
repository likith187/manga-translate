package com.oplus.aiunit.core.protocol;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import com.oplus.aiunit.core.data.AIConfig;
import com.oplus.aiunit.core.data.ConfigKt;
import com.oplus.aiunit.core.data.DetectInfo;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.core.data.ServiceType;
import com.oplus.aiunit.core.service.ProviderClient;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.core.utils.AIUtil;
import com.oplus.aiunit.core.utils.ApiVersionUtils;
import com.oplus.aiunit.core.utils.AuthUtil;
import com.oplus.aiunit.toolkits.AISettings;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.q;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class AIProtocol {
    private static final int MIN_VERSION_CODE_AIUNIT_PUBLISH = 400001;
    private static final int MIN_VERSION_CODE_AIUNIT_SUPPORT_QUERY = 400004;
    public static final int PROTOCOL_AI_SUB_SYS = 200;
    private static final String PROTOCOL_META_KEY = "protocol_version_codes";
    public static final int PROTOCOL_TEL_AI = 143;
    public static final int PROTOCOL_VERSION_AIGC_CLOUD = 130;
    public static final int PROTOCOL_VERSION_AIGC_EXP = 133;
    public static final int PROTOCOL_VERSION_AIGC_LOCAL = 131;
    public static final int PROTOCOL_VERSION_AIGC_SUMMARY_LOCAL = 132;
    public static final int PROTOCOL_VERSION_GLOBAL_DEP = 140;
    public static final int PROTOCOL_VERSION_RECORD_SUMMARY = 141;
    private static final String TAG = "AIProtocol";
    public static final AIProtocol INSTANCE = new AIProtocol();
    private static final ConcurrentHashMap<String, AIProtocolObserver> observerMap = new ConcurrentHashMap<>();

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ServiceType.values().length];
            try {
                iArr[ServiceType.AIUNIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ServiceType.OCRSERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private AIProtocol() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0077, code lost:
    
        if (r0 >= r4) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final com.oplus.aiunit.core.data.ServiceType acquireServiceType(android.content.Context r4) {
        /*
            java.lang.String r0 = "context"
            kotlin.jvm.internal.r.e(r4, r0)
            n8.q r0 = isAISelf(r4)
            java.lang.Object r1 = r0.getFirst()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L1c
            java.lang.Object r4 = r0.getSecond()
            com.oplus.aiunit.core.data.ServiceType r4 = (com.oplus.aiunit.core.data.ServiceType) r4
            return r4
        L1c:
            r0 = 2
            r1 = 0
            r2 = 0
            boolean r0 = isAIUnitSupported$default(r4, r2, r0, r1)
            boolean r1 = isAIUnitCompatSupported(r4)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "acquireServiceType: isAIUnitSupport = "
            r2.<init>(r3)
            r2.append(r0)
            java.lang.String r3 = ", isOcrSupport = "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "AIProtocol"
            com.oplus.aiunit.core.utils.AILog.d(r3, r2)
            if (r0 == 0) goto L7c
            boolean r0 = com.oplus.aiunit.core.utils.ApiVersionUtils.isU()
            if (r0 == 0) goto L4b
            goto L79
        L4b:
            if (r1 == 0) goto L79
            java.lang.String r0 = "com.oplus.aiunit"
            int r0 = com.oplus.aiunit.core.utils.AIUtil.getVersionCode(r4, r0)
            java.lang.String r1 = "com.coloros.ocrservice"
            int r4 = com.oplus.aiunit.core.utils.AIUtil.getVersionCode(r4, r1)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "acquireServiceType [ai = "
            r1.<init>(r2)
            r1.append(r0)
            java.lang.String r2 = ", ocr = "
            r1.append(r2)
            r1.append(r4)
            r2 = 93
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.oplus.aiunit.core.utils.AILog.d(r3, r1)
            if (r0 < r4) goto L7e
        L79:
            com.oplus.aiunit.core.data.ServiceType r4 = com.oplus.aiunit.core.data.ServiceType.AIUNIT
            goto L83
        L7c:
            if (r1 == 0) goto L81
        L7e:
            com.oplus.aiunit.core.data.ServiceType r4 = com.oplus.aiunit.core.data.ServiceType.OCRSERVICE
            goto L83
        L81:
            com.oplus.aiunit.core.data.ServiceType r4 = com.oplus.aiunit.core.data.ServiceType.NONE
        L83:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.aiunit.core.protocol.AIProtocol.acquireServiceType(android.content.Context):com.oplus.aiunit.core.data.ServiceType");
    }

    public static final int getClientProtocol() {
        return 203;
    }

    public static final Bundle getExtras(Context context) {
        r.e(context, "context");
        Bundle bundle = new Bundle();
        bundle.putInt(ParamsKt.PARAM_KEY_SDK_VERSION, getClientProtocol());
        bundle.putInt(ParamsKt.PARAM_KEY_CLIENT_PROTOCOL, getClientProtocol());
        bundle.putInt(ParamsKt.PARAM_KEY_API_LEVEL, 203);
        bundle.putString(ParamsKt.PARAM_KEY_SDK_VERSION_NAME, "2.0.3-beta3eac8c9");
        bundle.putString(ParamsKt.PARAM_KEY_AUTH_STYLE, AuthUtil.getAuthStyle(context));
        bundle.putString(ParamsKt.PARAM_KEY_PACKAGE_NAME, context.getPackageName());
        bundle.putInt(ParamsKt.PARAM_KEY_CLIENT_PID, Process.myPid());
        bundle.putInt(ParamsKt.PARAM_KEY_CLIENT_UID, Process.myUid());
        bundle.putBoolean(ParamsKt.PARAM_KEY_DOWNLOAD_ENABLE, AIUtil.getDownloadEnable(context));
        bundle.putString(ParamsKt.PARAM_KEY_DOWNLOAD_GROUP, AIUtil.getDownloadGroup(context));
        bundle.putLong(ParamsKt.PARAM_KEY_PACKAGE_VERSION, AIUtil.getMyAppVersion(context));
        bundle.putInt(ParamsKt.PARAM_CORE_SDK_VERSION, AIUtil.getCoreSdkVersion(context));
        return bundle;
    }

    public static final ServiceType getLLMServiceType(Context context) {
        r.e(context, "context");
        ServiceType serviceTypeAcquireServiceType = acquireServiceType(context);
        ServiceType serviceType = ServiceType.NONE;
        return (serviceTypeAcquireServiceType == serviceType || !AIUtil.isLLMMetaSupported(context, serviceTypeAcquireServiceType.getPkgName())) ? serviceType : serviceTypeAcquireServiceType;
    }

    public static final String getServicePackage(Context context) {
        r.e(context, "context");
        int i10 = WhenMappings.$EnumSwitchMapping$0[acquireServiceType(context).ordinal()];
        if (i10 == 1) {
            return ConfigKt.AIUNIT_PACKAGE_NAME;
        }
        if (i10 != 2) {
            return null;
        }
        return ConfigKt.OCRSERVICE_PACKAGE_NAME;
    }

    public static final int getServiceProtocol(Context context) {
        r.e(context, "context");
        String servicePackage = getServicePackage(context);
        if (servicePackage == null) {
            return -1;
        }
        return getServiceProtocol(context, servicePackage);
    }

    public static final int getUnitState(Context context, String detectName, Bundle bundle) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return AISettings.getUnitState(context, detectName, bundle);
    }

    public static /* synthetic */ int getUnitState$default(Context context, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        return getUnitState(context, str, bundle);
    }

    public static final boolean isAIGCCloud(int i10) {
        return i10 >= 130;
    }

    public static final boolean isAIGCEXP(int i10) {
        return i10 >= 133;
    }

    public static final boolean isAIGCLocal(int i10) {
        return i10 >= 131;
    }

    public static final boolean isAIGCLocalSummary(int i10) {
        return i10 >= 132;
    }

    public static final q isAISelf(Context context) {
        r.e(context, "context");
        String packageName = context.getPackageName();
        return r.a(packageName, ConfigKt.AIUNIT_PACKAGE_NAME) ? new q(Boolean.TRUE, ServiceType.AIUNIT) : r.a(packageName, ConfigKt.OCRSERVICE_PACKAGE_NAME) ? new q(Boolean.TRUE, ServiceType.OCRSERVICE) : new q(Boolean.FALSE, ServiceType.NONE);
    }

    public static final boolean isAISubSys(int i10) {
        return i10 >= 200;
    }

    public static final boolean isAIUnitCompatSupported(Context context) {
        r.e(context, "context");
        if (ApiVersionUtils.isP()) {
            return AIUtil.isMetaAIUnitSupported(context, ConfigKt.OCRSERVICE_PACKAGE_NAME);
        }
        AILog.e(TAG, "sdk version is below P!");
        return false;
    }

    public static final boolean isAIUnitSupported(Context context) {
        r.e(context, "context");
        return isAIUnitSupported$default(context, 0, 2, null);
    }

    public static /* synthetic */ boolean isAIUnitSupported$default(Context context, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 400001;
        }
        return isAIUnitSupported(context, i10);
    }

    public static final boolean isDetectSupported(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return isDetectSupported$default(context, detectName, null, 4, null);
    }

    public static /* synthetic */ boolean isDetectSupported$default(Context context, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        return isDetectSupported(context, str, bundle);
    }

    public static final boolean isDeviceSupported(Context context) {
        r.e(context, "context");
        return isAIUnitSupported(context, 400001) || isAIUnitCompatSupported(context);
    }

    public static final boolean isGlobalDep(int i10) {
        return i10 >= 140;
    }

    public static final boolean isHardwareBitmapSupported(Context context) {
        r.e(context, "context");
        return AIUtil.isHardwareBitmapSupported(context);
    }

    public static final boolean isRecordSummary(int i10) {
        return i10 >= 141;
    }

    public static final boolean isRemoteSupportLLM(Context context) {
        r.e(context, "context");
        return getLLMServiceType(context) != ServiceType.NONE;
    }

    public static final boolean isTelAI(int i10) {
        return i10 >= 143;
    }

    public static final boolean isUnitSupported(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        ServiceType serviceTypeAcquireServiceType = acquireServiceType(context);
        if (serviceTypeAcquireServiceType != ServiceType.NONE) {
            return ProviderClient.Companion.queryUnitSupported(context, detectName, serviceTypeAcquireServiceType);
        }
        return false;
    }

    public static final void onChange(Context context, String detectName, List<AIConfig> configList) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        r.e(configList, "configList");
        onChange$default(context, detectName, configList, false, 8, null);
    }

    public static /* synthetic */ void onChange$default(Context context, String str, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        onChange(context, str, list, z10);
    }

    public static final DetectInfo queryDetectInfo(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return AISettings.getDetectData$default(context, detectName, null, 4, null).toDetectInfo();
    }

    public static final void subscribe(Context context, String detectName, int i10, AIObserver observer, Handler handler) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        r.e(observer, "observer");
        r.e(handler, "handler");
        subscribe$default(context, detectName, i10, observer, handler, null, 32, null);
    }

    public static /* synthetic */ void subscribe$default(Context context, String str, int i10, AIObserver aIObserver, Handler handler, Bundle bundle, int i11, Object obj) {
        if ((i11 & 32) != 0) {
            bundle = null;
        }
        subscribe(context, str, i10, aIObserver, handler, bundle);
    }

    public static final void subscribe$lambda$2(AIObserver observer) {
        r.e(observer, "$observer");
        observer.onSubscribeResult(2);
    }

    public static final void subscribe$lambda$4(AIObserver observer) {
        r.e(observer, "$observer");
        observer.onSubscribeResult(3);
    }

    public static final void subscribe$lambda$5(AIObserver observer) {
        r.e(observer, "$observer");
        observer.onSubscribeResult(1);
    }

    public static final void subscribe$lambda$6(AIObserver observer) {
        r.e(observer, "$observer");
        observer.onSubscribeResult(4);
    }

    public static final boolean unsubscribe(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        if (!isTelAI(getServiceProtocol(context))) {
            return false;
        }
        ConcurrentHashMap<String, AIProtocolObserver> concurrentHashMap = observerMap;
        AIProtocolObserver aIProtocolObserver = concurrentHashMap.get(detectName);
        if (aIProtocolObserver != null) {
            aIProtocolObserver.unregister();
        }
        concurrentHashMap.remove(detectName);
        Bundle extras = getExtras(context);
        extras.putString(ParamsKt.PARAM_KEY_DETECT_NAME_NEW, detectName);
        extras.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_PROTOCOL);
        extras.putString(ParamsKt.PARAM_VALUE_SUB_METHOD, "unsubscribe");
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, acquireServiceType(context), null, extras, null, 16, null);
        boolean z10 = bundleCall$default != null ? bundleCall$default.getBoolean(ParamsKt.PARAM_KEY_CALL_STATUS, false) : false;
        AILog.i(TAG, "unsubscribe " + detectName + ' ' + z10);
        return z10;
    }

    public final String getSdkName() {
        return "2.0.3-beta3eac8c9";
    }

    public static final int getServiceProtocol(Context context, String compatPkg) {
        Integer numM;
        r.e(context, "context");
        r.e(compatPkg, "compatPkg");
        try {
            numM = kotlin.text.r.m(AIUtil.getMetaData(context, compatPkg, PROTOCOL_META_KEY));
        } catch (Exception unused) {
        }
        int iIntValue = numM != null ? numM.intValue() : -1;
        AILog.i(TAG, "getServiceVersion = " + iIntValue + " for " + compatPkg);
        return iIntValue;
    }

    public static final boolean isAIUnitSupported(Context context, int i10) {
        r.e(context, "context");
        if (ApiVersionUtils.isP()) {
            return AIUtil.getVersionCode(context, ConfigKt.AIUNIT_PACKAGE_NAME) >= i10;
        }
        AILog.e(TAG, "sdk version is below P!");
        return false;
    }

    public static final boolean isDetectSupported(Context context, String detectName, Bundle bundle) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return AISettings.isDetectSupported(context, detectName, bundle);
    }

    public static final void onChange(Context context, String detectName, List<AIConfig> configList, boolean z10) {
        Object objM59constructorimpl;
        r.e(context, "context");
        r.e(detectName, "detectName");
        r.e(configList, "configList");
        if (((Boolean) isAISelf(context).getFirst()).booleanValue()) {
            AILog.i(TAG, "onChange " + detectName + ' ' + configList);
            try {
                r.a aVar = n8.r.Companion;
                AIProtocolObserver.Companion.update$aiunit_sdk_toolkits_release(context, detectName, configList, z10);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                AILog.e(TAG, "onChange err. " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    public static final void subscribe(Context context, String detectName, int i10, final AIObserver observer, Handler handler, Bundle bundle) {
        Runnable runnable;
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(detectName, "detectName");
        kotlin.jvm.internal.r.e(observer, "observer");
        kotlin.jvm.internal.r.e(handler, "handler");
        if (!isTelAI(getServiceProtocol(context))) {
            handler.post(new Runnable() { // from class: com.oplus.aiunit.core.protocol.a
                @Override // java.lang.Runnable
                public final void run() {
                    AIProtocol.subscribe$lambda$2(observer);
                }
            });
            return;
        }
        Bundle extras = getExtras(context);
        extras.putString(ParamsKt.PARAM_KEY_DETECT_NAME_NEW, detectName);
        extras.remove(ParamsKt.PARAM_KEY_API_LEVEL);
        extras.putInt(ParamsKt.PARAM_KEY_API_LEVEL, i10);
        extras.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_PROTOCOL);
        extras.putString(ParamsKt.PARAM_VALUE_SUB_METHOD, "subscribe");
        if (bundle != null) {
            extras.putAll(bundle);
        }
        ConcurrentHashMap<String, AIProtocolObserver> concurrentHashMap = observerMap;
        AIProtocolObserver aIProtocolObserver = concurrentHashMap.get(detectName);
        if (aIProtocolObserver == null) {
            aIProtocolObserver = new AIProtocolObserver(context, detectName, observer, handler);
            if (!aIProtocolObserver.register(observer)) {
                handler.post(new Runnable() { // from class: com.oplus.aiunit.core.protocol.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AIProtocol.subscribe$lambda$4(observer);
                    }
                });
                return;
            }
            concurrentHashMap.put(detectName, aIProtocolObserver);
        } else {
            aIProtocolObserver.add(observer);
        }
        AIProtocolObserver aIProtocolObserver2 = aIProtocolObserver;
        if (aIProtocolObserver2.subscribeEquals(extras)) {
            AILog.w(TAG, "subscribe " + detectName + ' ' + i10 + " equals skip!");
            return;
        }
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, acquireServiceType(context), null, extras, null, 16, null);
        if (kotlin.jvm.internal.r.a(bundleCall$default != null ? Boolean.valueOf(bundleCall$default.getBoolean(ParamsKt.PARAM_KEY_CALL_STATUS, false)) : null, Boolean.TRUE)) {
            AILog.i(TAG, "subscribe " + detectName + ' ' + i10 + " success");
            aIProtocolObserver2.newSubscribe(extras);
            runnable = new Runnable() { // from class: com.oplus.aiunit.core.protocol.c
                @Override // java.lang.Runnable
                public final void run() {
                    AIProtocol.subscribe$lambda$5(observer);
                }
            };
        } else {
            AILog.e(TAG, "subscribe " + detectName + ' ' + i10 + " fail!");
            runnable = new Runnable() { // from class: com.oplus.aiunit.core.protocol.d
                @Override // java.lang.Runnable
                public final void run() {
                    AIProtocol.subscribe$lambda$6(observer);
                }
            };
        }
        handler.post(runnable);
    }
}
