package com.coui.appcompat.version;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.oplus.os.OplusBuild;

/* JADX INFO: loaded from: classes.dex */
public class COUIVersionUtil {
    public static final int COUI_1_0 = 1;
    public static final int COUI_1_2 = 2;
    public static final int COUI_1_4 = 3;
    public static final int COUI_2_0 = 4;
    public static final int COUI_2_1 = 5;
    public static final int COUI_3_0 = 6;
    public static final int COUI_3_1 = 7;
    public static final int COUI_3_2 = 8;
    public static final int COUI_5_0 = 9;
    public static final int COUI_5_1 = 10;
    public static final int COUI_5_2 = 11;
    public static final int COUI_6_0 = 12;
    public static final int COUI_6_1 = 13;
    public static final int COUI_6_2 = 14;
    public static final int COUI_6_7 = 15;
    public static final int COUI_7_0 = 16;
    public static final int COUI_7_1 = 17;
    public static final int COUI_7_2 = 18;
    public static final int COUI_8_0 = 19;
    public static final int COUI_8_1 = 20;
    public static final int COUI_8_2 = 21;
    private static final String GET_OS_VERSION_METHOD = "getOplusOSVERSION";
    private static final String TAG = "COUIVersionUtil";
    public static final int UNKNOWN = 0;
    private static final String VERSION_WRAPPER = "com.oplus.os.OplusBuild";
    private static String mGetOsVersionMethodName;
    private static String mVersionWrapperName;

    private static boolean canReachFrameworkWrapper() {
        try {
            Class.forName(VERSION_WRAPPER);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean checkOPlusViewSubSDK(int i10, int i11) {
        if (Build.VERSION.SDK_INT <= 31) {
            return false;
        }
        if (getOSVersionCode() > i10) {
            return true;
        }
        return getOSVersionCode() == i10 && getSDKSubVersion() >= i11;
    }

    public static String getDeviceName(Context context) {
        String osBuildName = canReachFrameworkWrapper() ? VERSION_WRAPPER : COUICompatUtil.getInstance().getOsBuildName();
        mVersionWrapperName = osBuildName;
        try {
            Class<?> cls = Class.forName(osBuildName);
            return (String) cls.getDeclaredMethod("getDeviceName", Context.class).invoke(cls, context);
        } catch (Exception e10) {
            Log.e(TAG, "getDeviceName failed. error = " + e10.getMessage());
            return "";
        }
    }

    public static int getOSVersionCode() {
        mVersionWrapperName = canReachFrameworkWrapper() ? VERSION_WRAPPER : COUICompatUtil.getInstance().getOsBuildName();
        mGetOsVersionMethodName = canReachFrameworkWrapper() ? GET_OS_VERSION_METHOD : COUICompatUtil.getInstance().getOsVersionMethodName();
        try {
            Class<?> cls = Class.forName(mVersionWrapperName);
            return Build.VERSION.SDK_INT > 31 ? OplusBuild.VERSION.SDK_VERSION : ((Integer) cls.getDeclaredMethod(mGetOsVersionMethodName, null).invoke(cls, null)).intValue();
        } catch (Exception e10) {
            Log.e(TAG, "getOSVersionCode failed. error = " + e10.getMessage());
            return 0;
        }
    }

    public static int getSDKSubVersion() {
        try {
            return OplusBuild.VERSION.SDK_SUB_VERSION;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static boolean isColorOS() {
        return getOSVersionCode() != 0;
    }
}
