package com.oplus.aiunit.core.utils;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class ApiVersionUtils {
    public static final ApiVersionUtils INSTANCE = new ApiVersionUtils();
    private static final int P = 28;
    private static final int Q = 29;
    private static final int R = 30;
    private static final int S = 31;
    private static final int T = 33;
    private static final int U = 34;

    private ApiVersionUtils() {
    }

    public static final int getApiVersion() {
        return Build.VERSION.SDK_INT;
    }

    public static final boolean isP() {
        return true;
    }

    public static final boolean isQ() {
        return true;
    }

    public static final boolean isR() {
        return true;
    }

    public static final boolean isS() {
        return true;
    }

    public static final boolean isT() {
        return Build.VERSION.SDK_INT >= T;
    }

    public static final boolean isU() {
        return Build.VERSION.SDK_INT >= 34;
    }
}
