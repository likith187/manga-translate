package com.oplus.aiunit.toolkits;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.os.Bundle;
import com.oplus.aiunit.core.data.DetectData;
import com.oplus.aiunit.core.data.DetectInfo;
import com.oplus.aiunit.core.data.DownloadType;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.core.data.SceneData;
import com.oplus.aiunit.core.data.ServiceType;
import com.oplus.aiunit.core.protocol.AIProtocol;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.service.ProviderClient;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.core.utils.AIUtil;
import com.oplus.aiunit.core.utils.AuthUtil;
import com.oplus.aiunit.toolkits.IAICallback;
import com.oplus.aiunit.toolkits.callback.AuthorizeCallback;
import com.oplus.aiunit.toolkits.callback.RequestCallback;
import com.oplus.aiunit.toolkits.callback.SettingsCallback;
import com.oplus.providers.AppSettings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.r;
import n8.q;

/* JADX INFO: loaded from: classes2.dex */
public final class AISettings {
    private static final String AIUNIT_SETTINGS_CLASS_NAME = "com.oplus.aiunit.settings.AIUnitSettingsActivity";
    private static final String BOOT_GUIDE_CLASS_NAME = "com.oplus.aiunit.settings.boot.BootGuideActivity";
    private static final String FROM_PACKAGE = "from_package";
    public static final AISettings INSTANCE = new AISettings();
    private static final String LLM_SETTING_CLASS_NAME = "com.oplus.aiunit.settings.AIGCHomeActivity";
    private static final String LOGIN_CLASS_NAME = "com.oplus.aiunit.account.LoginActivity";
    private static final int NOTICE_DIALOG = 1;
    public static final int NOTICE_DIALOG_OFFLINE = 0;
    public static final int NOTICE_DIALOG_ONLINE = 1;
    private static final String PRIVACY_CLASS_NAME = "com.oplus.aiunit.settings.PrivacyTransparentActivity";
    private static final int SELECT_DIALOG = 0;
    private static final String SETTINGS_CLASS_NAME = "com.oplus.aiunit.settings.PromptDialogActivity";
    private static final String TAG = "AISettings";

    private AISettings() {
    }

    private final Bundle buildHeaders(Context context, Bundle bundle) {
        Bundle extras = AIProtocol.getExtras(context);
        if (bundle != null) {
            extras.putAll(bundle);
        }
        return extras;
    }

    public static /* synthetic */ Bundle buildHeaders$default(AISettings aISettings, Context context, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        return aISettings.buildHeaders(context, bundle);
    }

    public static final boolean checkUpdate(Context context, boolean z10, SettingsCallback settingsCallback) {
        r.e(context, "context");
        return checkUpdate$default(context, z10, settingsCallback, null, 8, null);
    }

    public static /* synthetic */ boolean checkUpdate$default(Context context, boolean z10, SettingsCallback settingsCallback, Bundle bundle, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            bundle = null;
        }
        return checkUpdate(context, z10, settingsCallback, bundle);
    }

    public static final boolean closeLocalDetectSwitch(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return setLocalDetectSwitch(context, detectName, false, false);
    }

    public static final boolean dismissGuideDialog(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        AILog.d(TAG, "dismissGuideDialog");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (!AIProtocol.isAIGCCloud(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            AILog.e(TAG, "is not cloud, return false");
            return false;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString("package::unit_name", detectName);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_DISMISS_SETTINGS_UI);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, serviceTypeAcquireServiceType, null, bundleBuildHeaders$default, null, 16, null);
        return bundleCall$default != null && bundleCall$default.getInt(ParamsKt.PARAM_KEY_SETTINGS_UI_STATUS, 0) == 0;
    }

    public static final int getAuthorizeStatus(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        ServiceType lLMServiceType = AIProtocol.getLLMServiceType(context);
        if (lLMServiceType == ServiceType.NONE) {
            return -1;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString("package::unit_name", detectName);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_GET_AUTHORIZE_STATUS);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, lLMServiceType, null, bundleBuildHeaders$default, null, 16, null);
        if (bundleCall$default != null) {
            return bundleCall$default.getInt(ParamsKt.PARAM_KEY_AUTHORIZE_STATUS, -1);
        }
        return -1;
    }

    public static final DetectData getDetectData(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return getDetectData$default(context, detectName, null, 4, null);
    }

    public static /* synthetic */ DetectData getDetectData$default(Context context, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        return getDetectData(context, str, bundle);
    }

    public static final DownloadType getDetectDownloadType(Context context, String detectName, Bundle bundle) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        int state = getDetectData(context, detectName, bundle).getState();
        return state != 4 ? state != 6 ? DownloadType.DOWNLOAD_NONE : DownloadType.DOWNLOAD_LOST : DownloadType.DOWNLOAD_NEW;
    }

    public static /* synthetic */ DownloadType getDetectDownloadType$default(Context context, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        return getDetectDownloadType(context, str, bundle);
    }

    public static final int getLLMQueueStatus(Context context) {
        r.e(context, "context");
        ServiceType lLMServiceType = AIProtocol.getLLMServiceType(context);
        if (lLMServiceType == ServiceType.NONE) {
            return -1;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_GET_LLM_QUEUE_STATUS);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, lLMServiceType, null, bundleBuildHeaders$default, null, 16, null);
        if (bundleCall$default != null) {
            return bundleCall$default.getInt(ParamsKt.PARAM_KEY_LLM_QUEUE_STATUS, -1);
        }
        return -1;
    }

    public static final ArrayList<String> getLLMSettingsList(Context context) {
        r.e(context, "context");
        ServiceType lLMServiceType = AIProtocol.getLLMServiceType(context);
        if (lLMServiceType == ServiceType.NONE) {
            return new ArrayList<>();
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_GET_LLM_SETTINGS);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, lLMServiceType, null, bundleBuildHeaders$default, null, 16, null);
        ArrayList<String> stringArrayList = bundleCall$default != null ? bundleCall$default.getStringArrayList(ParamsKt.PARAM_KEY_LLM_SETTINGS_LIST) : null;
        return stringArrayList == null ? new ArrayList<>() : stringArrayList;
    }

    public static final ArrayList<String> getLLMSettingsListByType(Context context, ServiceType type) {
        r.e(context, "context");
        r.e(type, "type");
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_GET_LLM_SETTINGS);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, type, null, bundleBuildHeaders$default, null, 16, null);
        ArrayList<String> stringArrayList = bundleCall$default != null ? bundleCall$default.getStringArrayList(ParamsKt.PARAM_KEY_LLM_SETTINGS_LIST) : null;
        return stringArrayList == null ? new ArrayList<>() : stringArrayList;
    }

    public static final int getLLMUserPreference(Context context, String detectName) {
        ServiceType lLMServiceType;
        r.e(context, "context");
        r.e(detectName, "detectName");
        if (!isLLMSettingsAvailable(context) || (lLMServiceType = AIProtocol.getLLMServiceType(context)) == ServiceType.NONE) {
            return -1;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_GET_LLM_USER_PREFERENCE_SETTINGS);
        bundleBuildHeaders$default.putString("package::unit_name", detectName);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, lLMServiceType, null, bundleBuildHeaders$default, null, 16, null);
        if (bundleCall$default != null) {
            return bundleCall$default.getInt(ParamsKt.PARAM_KEY_LLM_USER_PREFERENCE_RESULT);
        }
        return -1;
    }

    public static final long getLastProvisionTimestamp(Context context) {
        r.e(context, "context");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (serviceTypeAcquireServiceType == ServiceType.NONE) {
            AILog.e(TAG, "getLastProvisionTimestamp: no support service");
            return 0L;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_GET_LAST_PROVISION_TIMESTAMP);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, serviceTypeAcquireServiceType, null, bundleBuildHeaders$default, null, 16, null);
        if (bundleCall$default != null) {
            return bundleCall$default.getLong(ParamsKt.PARAM_KEY_DETECT_CONFIG_LAST_UPDATE_TIME, 0L);
        }
        AILog.w(TAG, "getLastProvisionTimestamp:result return null");
        return 0L;
    }

    public static final SceneData getSceneData(Context context, String sceneName) {
        r.e(context, "context");
        r.e(sceneName, "sceneName");
        return getSceneData$default(context, sceneName, null, 4, null);
    }

    public static /* synthetic */ SceneData getSceneData$default(Context context, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        return getSceneData(context, str, bundle);
    }

    public static final DownloadType getSceneDownloadType(Context context, String sceneName) {
        r.e(context, "context");
        r.e(sceneName, "sceneName");
        return getSceneDownloadType$default(context, sceneName, null, 4, null);
    }

    public static /* synthetic */ DownloadType getSceneDownloadType$default(Context context, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        return getSceneDownloadType(context, str, bundle);
    }

    public static final int getSettingsStatus(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (!AIProtocol.isAIGCCloud(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            return -1;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString("package::unit_name", detectName);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_GET_SETTINGS);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, serviceTypeAcquireServiceType, null, bundleBuildHeaders$default, null, 16, null);
        if (bundleCall$default != null) {
            return bundleCall$default.getInt(ParamsKt.PARAM_KEY_SETTINGS_STATUS, -1);
        }
        return -1;
    }

    public static final int getUnitState(Context context, String detectName, Bundle bundle) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return getDetectData(context, detectName, bundle).getState();
    }

    public static /* synthetic */ int getUnitState$default(Context context, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        return getUnitState(context, str, bundle);
    }

    public static final boolean isAuthSucceed(Context context) {
        r.e(context, "context");
        if (AuthUtil.isInnerAuth(context)) {
            return AuthUtil.checkSelfAuthenticatePermission(context);
        }
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (!AIProtocol.isAISubSys(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            return false;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_AUTHENTICATE_CHECK);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, serviceTypeAcquireServiceType, null, bundleBuildHeaders$default, null, 16, null);
        return (bundleCall$default == null || bundleCall$default.getInt(ParamsKt.PARAM_KEY_ERROR_CODE) == ErrorCode.kErrorAuthorizeFail.value()) ? false : true;
    }

    public static final boolean isDetectAvailable(Context context, String detectName, Bundle bundle) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return getDetectData(context, detectName, bundle).isAvailable();
    }

    public static /* synthetic */ boolean isDetectAvailable$default(Context context, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        return isDetectAvailable(context, str, bundle);
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

    public static final boolean isGlobalDepSupported(Context context) {
        r.e(context, "context");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (serviceTypeAcquireServiceType != ServiceType.NONE) {
            return AIProtocol.isGlobalDep(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()));
        }
        return false;
    }

    public static final boolean isLLMSettingsAvailable(Context context) {
        r.e(context, "context");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        return (serviceTypeAcquireServiceType == ServiceType.NONE || !AIUtil.isLocalLLMSettingsUISupported(context, serviceTypeAcquireServiceType.getPkgName()) || getLLMSettingsListByType(context, serviceTypeAcquireServiceType).isEmpty()) ? false : true;
    }

    public static final boolean isPrivacyAvailable(Context context) {
        r.e(context, "context");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (serviceTypeAcquireServiceType != ServiceType.AIUNIT) {
            return serviceTypeAcquireServiceType == ServiceType.OCRSERVICE;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_CHECK_PRIVACY);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, serviceTypeAcquireServiceType, null, bundleBuildHeaders$default, null, 16, null);
        if (bundleCall$default != null) {
            return bundleCall$default.getBoolean(ParamsKt.PARAM_KEY_PRIVACY_STATUS, true);
        }
        return true;
    }

    public static final boolean isPrivacyUIVisible(Context context) {
        r.e(context, "context");
        ServiceType lLMServiceType = AIProtocol.getLLMServiceType(context);
        if (lLMServiceType == ServiceType.NONE) {
            return false;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_KEY_PRIVACY_UI_VISIBLE);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, lLMServiceType, null, bundleBuildHeaders$default, null, 16, null);
        return (bundleCall$default != null ? bundleCall$default.getInt(ParamsKt.PARAM_KEY_SETTINGS_UI_STATUS, -1) : -1) == 1;
    }

    public static final boolean isRecordSummarySupported(Context context) {
        r.e(context, "context");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (serviceTypeAcquireServiceType != ServiceType.NONE) {
            return AIProtocol.isRecordSummary(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()));
        }
        return false;
    }

    public static final boolean isUnitSupported(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return AIProtocol.isUnitSupported(context, detectName);
    }

    public static final boolean isUserSettingAvailable(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        int lLMQueueStatus = getLLMQueueStatus(context);
        int settingsStatus = getSettingsStatus(context, detectName);
        AILog.d(TAG, "lLMQueueStatus:" + lLMQueueStatus + " settingStatus:" + settingsStatus);
        return settingsStatus == 1 && (3 == lLMQueueStatus || -1 == lLMQueueStatus) && 1 == getAuthorizeStatus(context, detectName);
    }

    public static final int prepareInnerModels(Context context, String detectName, String soc) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        r.e(soc, "soc");
        ServiceType lLMServiceType = AIProtocol.getLLMServiceType(context);
        if (lLMServiceType == ServiceType.NONE) {
            return -1;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_PREPARE_INNER_MODEL);
        bundleBuildHeaders$default.putString("package::unit_name", detectName);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_CALL_SOC, soc);
        Bundle bundleCall = ProviderClient.Companion.call(context, lLMServiceType, null, bundleBuildHeaders$default, ParamsKt.METHOD_INNER_CALL);
        if (bundleCall != null) {
            return bundleCall.getInt(ParamsKt.PARAM_KEY_LLM_MODELS_STATUS, -1);
        }
        return -1;
    }

    public static final q queryDetectData(Context context, String detectName, Bundle bundle) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        long j10 = 0;
        if (serviceTypeAcquireServiceType == ServiceType.NONE) {
            AILog.w(TAG, "queryDetectData: service type not support!");
            return new q(0L, null);
        }
        if (!AIProtocol.isAIGCCloud(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            if (AIProtocol.isUnitSupported(context, detectName)) {
                return new q(Long.valueOf(getLastProvisionTimestamp(context)), new DetectData(detectName, true));
            }
            AILog.w(TAG, "queryDetectData: " + detectName + " not support");
            return new q(Long.valueOf(getLastProvisionTimestamp(context)), new DetectData(detectName, false));
        }
        Bundle bundleBuildHeaders = INSTANCE.buildHeaders(context, bundle);
        bundleBuildHeaders.putString("package::unit_name", detectName);
        bundleBuildHeaders.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_GET_DETECT_DATA);
        bundleBuildHeaders.putBoolean(ParamsKt.PARAM_KEY_NEED_CONFIG_UPDATE_TIME, true);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, serviceTypeAcquireServiceType, null, bundleBuildHeaders, null, 16, null);
        if (bundleCall$default != null) {
            j10 = bundleCall$default.getLong(ParamsKt.PARAM_KEY_DETECT_CONFIG_LAST_UPDATE_TIME, 0L);
        } else {
            AILog.w(TAG, "queryDetectData:result return null");
        }
        Long lValueOf = Long.valueOf(j10);
        if (bundleCall$default == null) {
            bundleCall$default = new Bundle();
        }
        return new q(lValueOf, new DetectData(detectName, bundleCall$default));
    }

    public static /* synthetic */ q queryDetectData$default(Context context, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        return queryDetectData(context, str, bundle);
    }

    public static final DetectInfo queryDetectInfo(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return getDetectData$default(context, detectName, null, 4, null).toDetectInfo();
    }

    public static final void registerContentObserver(Context context, String detectName, ContentObserver observer) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        r.e(observer, "observer");
        try {
            context.getContentResolver().registerContentObserver(AppSettings.Global.getUriFor("ai::settings::detect::" + detectName), false, observer);
        } catch (Throwable th) {
            AILog.e(TAG, "registerContentObserver err. " + th.getMessage());
        }
    }

    public static final Boolean requestConfigurationUpdate(Context context, final RequestCallback callback) {
        r.e(context, "context");
        r.e(callback, "callback");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (serviceTypeAcquireServiceType == ServiceType.NONE) {
            AILog.e(TAG, "getLastProvisionTimestamp: no support service");
            return null;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_REQUEST_CONFIGURATION_UPDATE);
        bundleBuildHeaders$default.putBinder(ParamsKt.PARAM_KEY_COMMON_CALLBACK, new IAICallback.Stub() { // from class: com.oplus.aiunit.toolkits.AISettings$requestConfigurationUpdate$extras$1$1
            @Override // com.oplus.aiunit.toolkits.IAICallback
            public void onCall(Bundle bundle) {
                AILog.d("AISettings", "requestConfigurationUpdate onCall:" + bundle);
                RequestCallback requestCallback = callback;
                if (bundle == null) {
                    requestCallback.onResult(0);
                } else {
                    requestCallback.onResult(bundle.getInt(ParamsKt.PARAM_KEY_REQUEST_CONFIG_UPDATE_RESULT, 0));
                }
            }
        });
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, serviceTypeAcquireServiceType, null, bundleBuildHeaders$default, null, 16, null);
        if (bundleCall$default == null) {
            AILog.w(TAG, "requestConfigurationUpdate:result return null");
            return null;
        }
        if (bundleCall$default.containsKey(ParamsKt.PARAM_KEY_CALL_STATUS)) {
            return Boolean.valueOf(bundleCall$default.getBoolean(ParamsKt.PARAM_KEY_CALL_STATUS, false));
        }
        AILog.w(TAG, "requestConfigurationUpdate:server not support");
        return null;
    }

    public static final int setLLMUserPreference(Context context, String detectName, int i10) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        if (!isLLMSettingsAvailable(context)) {
            return -1;
        }
        if (i10 < 0) {
            AILog.i(TAG, "setLLMUserPreference params error:  " + i10);
            return -1;
        }
        ServiceType lLMServiceType = AIProtocol.getLLMServiceType(context);
        if (lLMServiceType == ServiceType.NONE) {
            return -1;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_SET_LLM_USER_PREFERENCE_SETTINGS);
        bundleBuildHeaders$default.putString("package::unit_name", detectName);
        bundleBuildHeaders$default.putInt(ParamsKt.PARAM_KEY_LLM_USER_PREFERENCE_SETTINGS, i10);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, lLMServiceType, null, bundleBuildHeaders$default, null, 16, null);
        if (bundleCall$default != null) {
            return bundleCall$default.getInt(ParamsKt.PARAM_KEY_LLM_USER_PREFERENCE_RESULT);
        }
        return -1;
    }

    private static final boolean setLocalDetectSwitch(Context context, String str, boolean z10, boolean z11) {
        ServiceType lLMServiceType = AIProtocol.getLLMServiceType(context);
        if (lLMServiceType == ServiceType.NONE) {
            return false;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_KEY_LOCAL_DETECT_SWITCH);
        bundleBuildHeaders$default.putString("package::unit_name", str);
        bundleBuildHeaders$default.putBoolean(ParamsKt.PARAM_KEY_SETTINGS_ENABLE, z10);
        bundleBuildHeaders$default.putBoolean(ParamsKt.PARAM_KEY_LOCAL_DETECT_SWITCH_AUTO, z11);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, lLMServiceType, null, bundleBuildHeaders$default, null, 16, null);
        if (bundleCall$default != null) {
            return bundleCall$default.getBoolean(ParamsKt.PARAM_KEY_LOCAL_DETECT_STATUS, false);
        }
        return false;
    }

    public static /* synthetic */ boolean setLocalDetectSwitch$default(Context context, String str, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            z11 = true;
        }
        return setLocalDetectSwitch(context, str, z10, z11);
    }

    public static final int setSettingsSilence(Context context, String detectName, boolean z10) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (!AIProtocol.isAIGCCloud(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            return -1;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString("package::unit_name", detectName);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_SET_SETTINGS);
        bundleBuildHeaders$default.putBoolean(ParamsKt.PARAM_KEY_SETTINGS_ENABLE, z10);
        bundleBuildHeaders$default.putBoolean(ParamsKt.PARAM_KEY_SETTINGS_GUIDE_ENABLE, false);
        Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, serviceTypeAcquireServiceType, null, bundleBuildHeaders$default, null, 16, null);
        if (bundleCall$default != null) {
            return bundleCall$default.getInt(ParamsKt.PARAM_KEY_SETTINGS_STATUS, -1);
        }
        return -1;
    }

    public static final boolean startAIUnitSettingsPage(Context context) {
        r.e(context, "context");
        AILog.d(TAG, "startAISPSettingsPage");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (AIProtocol.isGlobalDep(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            return startActivity(context, null, serviceTypeAcquireServiceType.getPkgName(), AIUNIT_SETTINGS_CLASS_NAME);
        }
        AILog.e(TAG, "is not support global dep, return false");
        return false;
    }

    private static final boolean startActivity(Context context, Bundle bundle, String str, String str2) {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(str, str2));
            intent.putExtra(ParamsKt.PARAM_KEY_ACTIVITY_INTENT_DATA, bundle);
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            context.startActivity(intent);
            return true;
        } catch (Throwable th) {
            AILog.e(TAG, "startActivity exception: " + th.getMessage());
            return false;
        }
    }

    public static final boolean startAuthorizeGuide(Context context, String detectName, final AuthorizeCallback authorizeCallback) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        AILog.d(TAG, "startAuthorizeGuide");
        ServiceType lLMServiceType = AIProtocol.getLLMServiceType(context);
        if (lLMServiceType == ServiceType.NONE) {
            AILog.e(TAG, "is not LLMService, return false");
            if (authorizeCallback != null) {
                authorizeCallback.onFail(ErrorCode.kErrorProtocol.value());
            }
            return false;
        }
        int authorizeStatus = getAuthorizeStatus(context, detectName);
        if (authorizeStatus == 1) {
            if (authorizeCallback != null) {
                authorizeCallback.onSuccess();
            }
            return true;
        }
        if (authorizeStatus == -1) {
            if (authorizeCallback != null) {
                authorizeCallback.onFail(ErrorCode.kErrorCommunication.value());
            }
            return false;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString("package::unit_name", detectName);
        bundleBuildHeaders$default.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_AUTHORIZE);
        if (authorizeCallback != null) {
            bundleBuildHeaders$default.putBinder(ParamsKt.PARAM_KEY_COMMON_CALLBACK, new IAICallback.Stub() { // from class: com.oplus.aiunit.toolkits.AISettings$startAuthorizeGuide$c$1
                @Override // com.oplus.aiunit.toolkits.IAICallback
                public void onCall(Bundle bundle) {
                    AILog.d("AISettings", "onCall " + bundle);
                    if (bundle == null) {
                        authorizeCallback.onFail(ErrorCode.kErrorCommunication.value());
                    } else if (bundle.getInt(ParamsKt.PARAM_KEY_AUTHORIZE_STATUS, -1) == 1) {
                        authorizeCallback.onSuccess();
                    } else {
                        authorizeCallback.onFail(bundle.getInt(ParamsKt.PARAM_KEY_AUTHORIZE_RESULT_CODE, ErrorCode.UNKNOWN.value()));
                    }
                }
            });
        }
        return startActivity(context, bundleBuildHeaders$default, lLMServiceType.getPkgName(), LOGIN_CLASS_NAME);
    }

    public static final boolean startLLMGuidePage(Context context) {
        r.e(context, "context");
        AILog.d(TAG, "startLLMGuidePage()");
        ServiceType lLMServiceType = AIProtocol.getLLMServiceType(context);
        if (lLMServiceType == ServiceType.NONE) {
            AILog.e(TAG, "is not LLMService, return false");
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString(FROM_PACKAGE, context.getPackageName());
        return startActivity(context, bundle, lLMServiceType.getPkgName(), BOOT_GUIDE_CLASS_NAME);
    }

    public static final boolean startLLMSettingsPage(Context context) {
        r.e(context, "context");
        AILog.d(TAG, "startLLMSettingsPage");
        ServiceType lLMServiceType = AIProtocol.getLLMServiceType(context);
        if (lLMServiceType != ServiceType.NONE) {
            return startActivity(context, null, lLMServiceType.getPkgName(), LLM_SETTING_CLASS_NAME);
        }
        AILog.e(TAG, "is not LLMService, return false");
        return false;
    }

    public static final boolean startNoticeGuide(Context context, int i10) {
        r.e(context, "context");
        AILog.d(TAG, "startNoticeGuide()");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (!AIProtocol.isAIGCCloud(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            AILog.e(TAG, "is not cloud, return false");
            return false;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putBoolean(ParamsKt.PARAM_KEY_SETTINGS_ENABLE, false);
        bundleBuildHeaders$default.putBoolean(ParamsKt.PARAM_KEY_SETTINGS_GUIDE_ENABLE, false);
        bundleBuildHeaders$default.putInt(ParamsKt.PARAM_KEY_DIALOG_TYPE, 1);
        bundleBuildHeaders$default.putInt(ParamsKt.PARAM_KEY_NOTICE_DIALOG_TYPE, i10);
        return startActivity(context, bundleBuildHeaders$default, serviceTypeAcquireServiceType.getPkgName(), SETTINGS_CLASS_NAME);
    }

    public static final boolean startPrivacyGuide(Context context, SettingsCallback settingsCallback) {
        r.e(context, "context");
        return startPrivacyGuide$default(context, settingsCallback, false, 4, null);
    }

    public static /* synthetic */ boolean startPrivacyGuide$default(Context context, SettingsCallback settingsCallback, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return startPrivacyGuide(context, settingsCallback, z10);
    }

    public static final boolean startSettingsGuide(Context context, String detectName, boolean z10, final SettingsCallback settingsCallback) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        AILog.d(TAG, "startSettingsGuide()");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (!AIProtocol.isAIGCCloud(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            AILog.e(TAG, "startSettingsGuide is not cloud, return false");
            return false;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        bundleBuildHeaders$default.putString("package::unit_name", detectName);
        bundleBuildHeaders$default.putBoolean(ParamsKt.PARAM_KEY_SETTINGS_ENABLE, z10);
        bundleBuildHeaders$default.putBoolean(ParamsKt.PARAM_KEY_SETTINGS_GUIDE_ENABLE, true);
        if (settingsCallback != null) {
            bundleBuildHeaders$default.putBinder(ParamsKt.PARAM_KEY_COMMON_CALLBACK, new IAICallback.Stub() { // from class: com.oplus.aiunit.toolkits.AISettings$startSettingsGuide$c$1
                @Override // com.oplus.aiunit.toolkits.IAICallback
                public void onCall(Bundle bundle) {
                    AILog.d("AISettings", "onCall " + bundle);
                    if (bundle == null) {
                        settingsCallback.onError(ErrorCode.kErrorCommunication.value());
                        return;
                    }
                    ErrorCode errorCode = ErrorCode.kErrorNone;
                    int i10 = bundle.getInt(ParamsKt.PARAM_KEY_ERROR_CODE, errorCode.value());
                    if (i10 != errorCode.value()) {
                        settingsCallback.onError(i10);
                        return;
                    }
                    int i11 = bundle.getInt(ParamsKt.PARAM_KEY_SETTINGS_CALLBACK_TYPE, 0);
                    SettingsCallback settingsCallback2 = settingsCallback;
                    if (i11 == 0) {
                        settingsCallback2.onSwitch(bundle.getInt(ParamsKt.PARAM_KEY_SETTINGS_STATUS, -1));
                    } else {
                        settingsCallback2.onUI(bundle.getInt(ParamsKt.PARAM_KEY_SETTINGS_UI_STATUS, -1));
                    }
                }
            });
        }
        return startActivity(context, bundleBuildHeaders$default, serviceTypeAcquireServiceType.getPkgName(), SETTINGS_CLASS_NAME);
    }

    public static final void unregisterContentObserver(Context context, ContentObserver observer) {
        r.e(context, "context");
        r.e(observer, "observer");
        try {
            context.getContentResolver().unregisterContentObserver(observer);
        } catch (Throwable th) {
            AILog.e(TAG, "unregisterContentObserver err. " + th.getMessage());
        }
    }

    @SuppressLint({"NewApi"})
    public final List<DetectData> getDetectDataList(Context context, ArrayList<String> detectNames, Bundle bundle) {
        ArrayList<Bundle> parcelableArrayList;
        r.e(context, "context");
        r.e(detectNames, "detectNames");
        ArrayList arrayList = new ArrayList();
        if (AIProtocol.getServiceProtocol(context) >= 143) {
            ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
            Bundle bundleBuildHeaders = buildHeaders(context, bundle);
            bundleBuildHeaders.putStringArrayList(ParamsKt.PARAM_KEY_DETECT_LIST, detectNames);
            bundleBuildHeaders.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_GET_DETECT_DATA_LIST);
            Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, serviceTypeAcquireServiceType, null, bundleBuildHeaders, null, 16, null);
            int i10 = bundleCall$default != null ? bundleCall$default.getInt(ParamsKt.PARAM_KEY_ERROR_CODE, 0) : -1;
            AILog.i(TAG, "getDetectDataList: code = " + i10);
            if (i10 != ErrorCode.kErrorNone.value()) {
                Iterator<T> it = detectNames.iterator();
                while (it.hasNext()) {
                    arrayList.add(getDetectData(context, (String) it.next(), bundle));
                }
            } else if (bundleCall$default != null && (parcelableArrayList = bundleCall$default.getParcelableArrayList(ParamsKt.PARAM_KEY_DETECT_DATA_LIST, Bundle.class)) != null) {
                for (Bundle bundle2 : parcelableArrayList) {
                    String string = bundle2.getString("package::unit_name");
                    if (string != null && string.length() != 0) {
                        r.b(bundle2);
                        arrayList.add(new DetectData(string, bundle2));
                    }
                }
            }
        } else {
            Iterator<T> it2 = detectNames.iterator();
            while (it2.hasNext()) {
                arrayList.add(getDetectData(context, (String) it2.next(), bundle));
            }
        }
        return arrayList;
    }

    public final boolean isAISettingsAvailable(Context context) {
        r.e(context, "context");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (serviceTypeAcquireServiceType != ServiceType.NONE) {
            return AIUtil.isSettingsUISupported(context, serviceTypeAcquireServiceType.getPkgName());
        }
        return false;
    }

    public static final boolean checkUpdate(Context context, boolean z10, final SettingsCallback settingsCallback, Bundle bundle) {
        r.e(context, "context");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        int serviceProtocol = AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName());
        if (!AIProtocol.isGlobalDep(serviceProtocol)) {
            if (!AIProtocol.isAIGCEXP(serviceProtocol)) {
                AILog.e(TAG, "checkUpdate is not exp");
                if (settingsCallback != null) {
                    settingsCallback.onSwitch(0);
                }
                return false;
            }
            startPrivacyGuide(context, settingsCallback, true);
        }
        if (isPrivacyUIVisible(context)) {
            if (settingsCallback != null) {
                settingsCallback.onError(ErrorCode.kErrorInProcessing.value());
            }
            return true;
        }
        Bundle bundleBuildHeaders = INSTANCE.buildHeaders(context, bundle);
        if (settingsCallback != null) {
            IAICallback.Stub stub = new IAICallback.Stub() { // from class: com.oplus.aiunit.toolkits.AISettings$checkUpdate$c$1
                @Override // com.oplus.aiunit.toolkits.IAICallback
                public void onCall(Bundle bundle2) {
                    AILog.d("AISettings", "onCall " + bundle2);
                    if (bundle2 == null) {
                        settingsCallback.onError(ErrorCode.kErrorCommunication.value());
                        return;
                    }
                    ErrorCode errorCode = ErrorCode.kErrorNone;
                    int i10 = bundle2.getInt(ParamsKt.PARAM_KEY_ERROR_CODE, errorCode.value());
                    if (i10 != errorCode.value()) {
                        settingsCallback.onError(i10);
                        return;
                    }
                    int i11 = bundle2.getInt(ParamsKt.PARAM_KEY_SETTINGS_CALLBACK_TYPE, 0);
                    SettingsCallback settingsCallback2 = settingsCallback;
                    if (i11 == 0) {
                        settingsCallback2.onSwitch(bundle2.getInt(ParamsKt.PARAM_KEY_SETTINGS_STATUS, -1));
                    } else {
                        settingsCallback2.onUI(bundle2.getInt(ParamsKt.PARAM_KEY_SETTINGS_UI_STATUS, -1));
                    }
                }
            };
            bundleBuildHeaders.putInt(ParamsKt.PARAM_KEY_DIALOG_TYPE, 1);
            bundleBuildHeaders.putBinder(ParamsKt.PARAM_KEY_COMMON_CALLBACK, stub);
            bundleBuildHeaders.putBoolean(ParamsKt.PARAM_KEY_SETTINGS_GUIDE_ENABLE, z10);
        }
        return startActivity(context, bundleBuildHeaders, serviceTypeAcquireServiceType.getPkgName(), PRIVACY_CLASS_NAME);
    }

    public static final DetectData getDetectData(Context context, String detectName, Bundle bundle) {
        DetectData detectData;
        r.e(context, "context");
        r.e(detectName, "detectName");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (serviceTypeAcquireServiceType == ServiceType.NONE) {
            detectData = new DetectData(detectName, false);
        } else if (AIProtocol.isAIGCCloud(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            Bundle bundleBuildHeaders = INSTANCE.buildHeaders(context, bundle);
            bundleBuildHeaders.putString("package::unit_name", detectName);
            bundleBuildHeaders.putString(ParamsKt.PARAM_KEY_METHOD_COMMON_CALL, ParamsKt.PARAM_VALUE_METHOD_GET_DETECT_DATA);
            Bundle bundleCall$default = ProviderClient.Companion.call$default(ProviderClient.Companion, context, serviceTypeAcquireServiceType, null, bundleBuildHeaders, null, 16, null);
            if (bundleCall$default == null) {
                bundleCall$default = new Bundle();
            }
            detectData = new DetectData(detectName, bundleCall$default);
        } else {
            detectData = AIProtocol.isUnitSupported(context, detectName) ? new DetectData(detectName, true) : new DetectData(detectName, false);
        }
        AILog.i(TAG, "getDetectData: " + detectData);
        return detectData;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final com.oplus.aiunit.core.data.SceneData getSceneData(android.content.Context r9, java.lang.String r10, android.os.Bundle r11) {
        /*
            java.lang.String r0 = "context"
            kotlin.jvm.internal.r.e(r9, r0)
            java.lang.String r0 = "sceneName"
            kotlin.jvm.internal.r.e(r10, r0)
            com.oplus.aiunit.core.data.ServiceType r3 = com.oplus.aiunit.core.protocol.AIProtocol.acquireServiceType(r9)
            com.oplus.aiunit.core.data.ServiceType r0 = com.oplus.aiunit.core.data.ServiceType.NONE
            if (r3 == r0) goto L4d
            java.lang.String r0 = r3.getPkgName()
            int r0 = com.oplus.aiunit.core.protocol.AIProtocol.getServiceProtocol(r9, r0)
            boolean r0 = com.oplus.aiunit.core.protocol.AIProtocol.isGlobalDep(r0)
            if (r0 == 0) goto L4d
            com.oplus.aiunit.toolkits.AISettings r0 = com.oplus.aiunit.toolkits.AISettings.INSTANCE
            android.os.Bundle r5 = r0.buildHeaders(r9, r11)
            java.lang.String r11 = "package::scene_name"
            r5.putString(r11, r10)
            java.lang.String r11 = "ai::key::method_call"
            java.lang.String r0 = "ai::value::get_scene_data"
            r5.putString(r11, r0)
            com.oplus.aiunit.core.service.ProviderClient$Companion r1 = com.oplus.aiunit.core.service.ProviderClient.Companion
            r7 = 16
            r8 = 0
            r4 = 0
            r6 = 0
            r2 = r9
            android.os.Bundle r9 = com.oplus.aiunit.core.service.ProviderClient.Companion.call$default(r1, r2, r3, r4, r5, r6, r7, r8)
            if (r9 == 0) goto L4d
            com.oplus.aiunit.core.data.SceneData r11 = new com.oplus.aiunit.core.data.SceneData
            r11.<init>()
            com.oplus.aiunit.core.data.SceneData r9 = r11.build(r9)
            r9.setSceneName(r10)
            goto L4e
        L4d:
            r9 = 0
        L4e:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r11 = "getSceneData: "
            r10.<init>(r11)
            r10.append(r9)
            java.lang.String r10 = r10.toString()
            java.lang.String r11 = "AISettings"
            com.oplus.aiunit.core.utils.AILog.i(r11, r10)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.aiunit.toolkits.AISettings.getSceneData(android.content.Context, java.lang.String, android.os.Bundle):com.oplus.aiunit.core.data.SceneData");
    }

    public static final DownloadType getSceneDownloadType(Context context, String sceneName, Bundle bundle) {
        DownloadType downloadType;
        r.e(context, "context");
        r.e(sceneName, "sceneName");
        SceneData sceneData = getSceneData(context, sceneName, bundle);
        return (sceneData == null || (downloadType = sceneData.getDownloadType()) == null) ? DownloadType.DOWNLOAD_NONE : downloadType;
    }

    public static final boolean isDetectSupported(Context context, String detectName, Bundle bundle) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        return getDetectData(context, detectName, bundle).isSupport();
    }

    public static final boolean startPrivacyGuide(Context context, final SettingsCallback settingsCallback, boolean z10) {
        r.e(context, "context");
        if (isPrivacyAvailable(context)) {
            AILog.w(TAG, "startPrivacyGuide no need.");
            if (settingsCallback != null) {
                settingsCallback.onSwitch(1);
            }
            return false;
        }
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (!AIProtocol.isAIGCEXP(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            AILog.e(TAG, "startPrivacyGuide is not exp");
            if (settingsCallback != null) {
                settingsCallback.onSwitch(0);
            }
            return false;
        }
        if (isPrivacyUIVisible(context)) {
            if (settingsCallback != null) {
                settingsCallback.onError(ErrorCode.kErrorInProcessing.value());
            }
            return true;
        }
        Bundle bundleBuildHeaders$default = buildHeaders$default(INSTANCE, context, null, 2, null);
        if (settingsCallback != null) {
            IAICallback.Stub stub = new IAICallback.Stub() { // from class: com.oplus.aiunit.toolkits.AISettings$startPrivacyGuide$c$1
                @Override // com.oplus.aiunit.toolkits.IAICallback
                public void onCall(Bundle bundle) {
                    AILog.d("AISettings", "onCall " + bundle);
                    if (bundle == null) {
                        settingsCallback.onError(ErrorCode.kErrorCommunication.value());
                        return;
                    }
                    ErrorCode errorCode = ErrorCode.kErrorNone;
                    int i10 = bundle.getInt(ParamsKt.PARAM_KEY_ERROR_CODE, errorCode.value());
                    if (i10 != errorCode.value()) {
                        settingsCallback.onError(i10);
                        return;
                    }
                    int i11 = bundle.getInt(ParamsKt.PARAM_KEY_SETTINGS_CALLBACK_TYPE, 0);
                    SettingsCallback settingsCallback2 = settingsCallback;
                    if (i11 == 0) {
                        settingsCallback2.onSwitch(bundle.getInt(ParamsKt.PARAM_KEY_SETTINGS_STATUS, -1));
                    } else {
                        settingsCallback2.onUI(bundle.getInt(ParamsKt.PARAM_KEY_SETTINGS_UI_STATUS, -1));
                    }
                }
            };
            bundleBuildHeaders$default.putInt(ParamsKt.PARAM_KEY_DIALOG_TYPE, 0);
            bundleBuildHeaders$default.putBinder(ParamsKt.PARAM_KEY_COMMON_CALLBACK, stub);
            bundleBuildHeaders$default.putBoolean(ParamsKt.PARAM_KEY_PRIVACY_LOAD, z10);
        }
        return startActivity(context, bundleBuildHeaders$default, serviceTypeAcquireServiceType.getPkgName(), PRIVACY_CLASS_NAME);
    }
}
