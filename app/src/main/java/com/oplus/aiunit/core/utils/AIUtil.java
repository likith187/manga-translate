package com.oplus.aiunit.core.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import com.oplus.aiunit.core.data.ConfigKt;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class AIUtil {
    private static final String HARD_WARE_BITMAP_SUPPORT_META_KEY = "supportHardwareBitmap";
    public static final AIUtil INSTANCE = new AIUtil();
    public static final String META_KEY_DOWNLOAD_ENABLE = "aiunit_download_enable";
    public static final String META_KEY_DOWNLOAD_GROUP = "aiunit_download_group";
    private static final String META_KEY_LLM_SUPPORT = "com.oplus.aiunit.large.model";
    private static final String META_KEY_LOCAL_LLM_SETTINGS_UI = "ai::meta::enable_local_llm_settings_ui";
    private static final String META_KEY_SETTINGS_UI = "ai::meta::enable_settings_ui";
    private static final String OCRSERVICE_SUPPORT_META_KEY = "supportAIUnitAndOcrService";
    private static final String PROTOCOL_META_KEY = "protocol_version_codes";
    private static final String TAG = "AIUtil";
    private static int appVersion;
    private static Integer coreSdkVersion;
    private static Boolean metaDownloadEnable;
    private static String metaDownloadGroup;

    private AIUtil() {
    }

    public static final int getCoreSdkVersion(Context context) {
        r.e(context, "context");
        Integer num = coreSdkVersion;
        if (num != null) {
            return num.intValue();
        }
        Integer numM = kotlin.text.r.m(getMetaData(context, PROTOCOL_META_KEY));
        int iIntValue = numM != null ? numM.intValue() : 0;
        coreSdkVersion = Integer.valueOf(iIntValue);
        return iIntValue;
    }

    public static final boolean getDownloadEnable(Context context) {
        r.e(context, "context");
        Boolean bool = metaDownloadEnable;
        if (bool != null) {
            return bool.booleanValue();
        }
        Boolean boolM0 = kotlin.text.r.M0(getMetaData(context, META_KEY_DOWNLOAD_ENABLE));
        boolean zBooleanValue = boolM0 != null ? boolM0.booleanValue() : false;
        metaDownloadEnable = Boolean.valueOf(zBooleanValue);
        return zBooleanValue;
    }

    public static final String getDownloadGroup(Context context) throws PackageManager.NameNotFoundException {
        r.e(context, "context");
        String str = metaDownloadGroup;
        if (str != null) {
            return str;
        }
        String metaData = getMetaData(context, META_KEY_DOWNLOAD_GROUP);
        metaDownloadGroup = metaData;
        return metaData;
    }

    public static final String getMetaData(Context context, String key) throws PackageManager.NameNotFoundException {
        Object obj;
        String string;
        r.e(context, "context");
        r.e(key, "key");
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        r.d(applicationInfo, "getApplicationInfo(...)");
        Bundle bundle = applicationInfo.metaData;
        return (bundle == null || (obj = bundle.get(key)) == null || (string = obj.toString()) == null) ? "" : string;
    }

    public static final int getMyAppVersion(Context context) {
        r.e(context, "context");
        int i10 = appVersion;
        if (i10 > 0) {
            return i10;
        }
        String packageName = context.getPackageName();
        r.d(packageName, "getPackageName(...)");
        int versionCode = getVersionCode(context, packageName);
        appVersion = versionCode;
        return versionCode;
    }

    public static final int getVersionCode(Context context, String pkgName) {
        r.e(context, "context");
        r.e(pkgName, "pkgName");
        try {
            PackageManager packageManager = context.getPackageManager();
            r.d(packageManager, "getPackageManager(...)");
            return packageManager.getPackageInfo(pkgName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    public static final boolean hasAccessNetworkStatePermission(Context context) {
        r.e(context, "context");
        return context.checkSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0;
    }

    public static final boolean hasInternetPermission(Context context) {
        r.e(context, "context");
        return context.checkSelfPermission("android.permission.INTERNET") == 0;
    }

    public static final boolean isHardwareBitmapSupported(Context context) {
        r.e(context, "context");
        return Boolean.parseBoolean(getMetaData(context, ConfigKt.AIUNIT_PACKAGE_NAME, HARD_WARE_BITMAP_SUPPORT_META_KEY)) || Boolean.parseBoolean(getMetaData(context, ConfigKt.OCRSERVICE_PACKAGE_NAME, HARD_WARE_BITMAP_SUPPORT_META_KEY));
    }

    @SuppressLint({"MissingPermission"})
    public static final boolean isInternetValidated(Context context) {
        r.e(context, "context");
        try {
            Object systemService = context.getSystemService("connectivity");
            r.c(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null && networkCapabilities.hasCapability(12)) {
                return networkCapabilities.hasCapability(16);
            }
            return false;
        } catch (Throwable th) {
            AILog.e(TAG, "isInternetValidated check err. " + th);
            return false;
        }
    }

    public static final boolean isLLMMetaSupported(Context context, String pkgName) {
        r.e(context, "context");
        r.e(pkgName, "pkgName");
        Boolean boolM0 = kotlin.text.r.M0(getMetaData(context, pkgName, META_KEY_LLM_SUPPORT));
        if (boolM0 != null) {
            return boolM0.booleanValue();
        }
        return false;
    }

    public static final boolean isLocalLLMSettingsUISupported(Context context, String pkgName) {
        r.e(context, "context");
        r.e(pkgName, "pkgName");
        Boolean boolM0 = kotlin.text.r.M0(getMetaData(context, pkgName, META_KEY_LOCAL_LLM_SETTINGS_UI));
        if (boolM0 != null) {
            return boolM0.booleanValue();
        }
        return false;
    }

    public static final boolean isMetaAIUnitSupported(Context context, String pkgName) {
        r.e(context, "context");
        r.e(pkgName, "pkgName");
        return Boolean.parseBoolean(getMetaData(context, pkgName, OCRSERVICE_SUPPORT_META_KEY));
    }

    public static final boolean isSettingsUISupported(Context context, String pkgName) {
        r.e(context, "context");
        r.e(pkgName, "pkgName");
        Boolean boolM0 = kotlin.text.r.M0(getMetaData(context, pkgName, META_KEY_SETTINGS_UI));
        if (boolM0 != null) {
            return boolM0.booleanValue();
        }
        return false;
    }

    @SuppressLint({"MissingPermission"})
    public static final boolean isWifiValidated(Context context) {
        r.e(context, "context");
        try {
            Object systemService = context.getSystemService("connectivity");
            r.c(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null && networkCapabilities.hasTransport(1) && networkCapabilities.hasCapability(12)) {
                return networkCapabilities.hasCapability(16);
            }
            return false;
        } catch (Throwable th) {
            AILog.e(TAG, "isWifiValidated check err. " + th);
            return false;
        }
    }

    public static final String getMetaData(Context context, String pkgName, String key) {
        Object obj;
        r.e(context, "context");
        r.e(pkgName, "pkgName");
        r.e(key, "key");
        try {
            PackageManager packageManager = context.getPackageManager();
            r.d(packageManager, "getPackageManager(...)");
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(pkgName, 128);
            r.d(applicationInfo, "getApplicationInfo(...)");
            Bundle bundle = applicationInfo.metaData;
            if (bundle == null || (obj = bundle.get(key)) == null) {
                return "";
            }
            String string = obj.toString();
            return string == null ? "" : string;
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }
}
