package com.coui.appcompat.roundcorner;

import android.os.Build;
import android.text.TextUtils;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.version.COUIVersionUtil;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public class RoundCornerUtil {
    private static final String ANIM_LEVEL_KEY = "persist.sys.oplus.anim_level";
    private static final String DEFAULT_WEIGHT_KEY = "persist.sys.oplus.default_smooth_weight";
    private static final int DEFAULT_WIGHT = 170;
    private static final float DEFAULT_WIGHT_DIVISOR = 100.0f;
    private static final int LIGHT_ANIM = 3;
    private static final float NON_WEIGHT = 2.0f;
    private static final int SDK_SUB_VERSION_PATH_SUPPORT_SINGLE_CORNER = 12;
    public static final int SDK_SUB_VERSION_SUPPORT_BLUR = 10;
    public static final int SDK_VERSION = 34;
    public static final int SMOOTH_ROUND_CORNER_TYPE_OS15 = 0;
    public static final int SMOOTH_ROUND_CORNER_TYPE_OS16 = 1;
    public static final int SMOOTH_ROUND_CORNER_TYPE_UNSUPPORTED = -1;
    private static final String TAG = "RoundCornerUtil";
    private static final String UPGRADE_ANIM_LEVEL_KEY = "persist.sys.oplus.upgrade_anim_level";
    private static Integer sAnimLevel;
    private static Float sDefaultWeight;
    private static Boolean sIsSmoothOn;
    private static Integer sSdkVersion;
    private static Integer sUpgradeAnimLevel;

    public static int getSmoothStyleType() {
        if (sSdkVersion == null) {
            sSdkVersion = Integer.valueOf(COUIVersionUtil.getOSVersionCode());
        }
        if (!isVersionSupport() || sSdkVersion.intValue() < 37) {
            return isVersionSupport() ? 0 : -1;
        }
        return 1;
    }

    private static int getSystemProp(String str, int i10) {
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            return !TextUtils.isEmpty(str2) ? Integer.parseInt(str2) : i10;
        } catch (ClassNotFoundException e10) {
            COUILog.e(TAG, "Class not found:" + e10);
            return i10;
        } catch (IllegalAccessException e11) {
            COUILog.e(TAG, "Illegal access:" + e11);
            return i10;
        } catch (NoSuchMethodException e12) {
            COUILog.e(TAG, "Method not found:" + e12);
            return i10;
        } catch (InvocationTargetException e13) {
            COUILog.e(TAG, "Invocation target exception:" + e13);
            return i10;
        }
    }

    public static boolean isPathSupportSingleCorner() {
        if (Build.VERSION.SDK_INT <= 31) {
            return false;
        }
        if (sSdkVersion == null) {
            sSdkVersion = Integer.valueOf(COUIVersionUtil.getOSVersionCode());
        }
        if (sSdkVersion.intValue() > 34) {
            return true;
        }
        return sSdkVersion.intValue() == 34 && COUIVersionUtil.getSDKSubVersion() >= 12;
    }

    public static boolean isSmoothRoundRectOn() {
        Boolean bool = sIsSmoothOn;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (isVersionSupport()) {
            if (sAnimLevel == null) {
                sAnimLevel = Integer.valueOf(getSystemProp(ANIM_LEVEL_KEY, 3));
            }
            if (sUpgradeAnimLevel == null) {
                sUpgradeAnimLevel = Integer.valueOf(getSystemProp(UPGRADE_ANIM_LEVEL_KEY, 3));
            }
            if (sDefaultWeight == null) {
                sDefaultWeight = Float.valueOf(getSystemProp(DEFAULT_WEIGHT_KEY, DEFAULT_WIGHT) / DEFAULT_WIGHT_DIVISOR);
            }
            sIsSmoothOn = Boolean.valueOf((sAnimLevel.intValue() < 3 || sUpgradeAnimLevel.intValue() < 3) && sDefaultWeight.floatValue() != 2.0f);
        } else {
            sIsSmoothOn = Boolean.FALSE;
        }
        return sIsSmoothOn.booleanValue();
    }

    public static boolean isSupportRoundCornerWhenBlur() {
        if (Build.VERSION.SDK_INT <= 31) {
            return false;
        }
        if (sSdkVersion == null) {
            sSdkVersion = Integer.valueOf(COUIVersionUtil.getOSVersionCode());
        }
        if (sSdkVersion.intValue() > 34) {
            return true;
        }
        return sSdkVersion.intValue() == 34 && COUIVersionUtil.getSDKSubVersion() >= 10;
    }

    public static boolean isVersionSupport() {
        if (Build.VERSION.SDK_INT <= 31) {
            return false;
        }
        if (sSdkVersion == null) {
            sSdkVersion = Integer.valueOf(COUIVersionUtil.getOSVersionCode());
        }
        return sSdkVersion.intValue() >= 34;
    }
}
