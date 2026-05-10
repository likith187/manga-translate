package com.coloros.translate.utils;

import com.oplus.wrapper.os.SystemProperties;

/* JADX INFO: loaded from: classes.dex */
public abstract class r0 {
    public static String a(String str) {
        return SystemProperties.get(str);
    }

    public static String b(String str, String str2) {
        return SystemProperties.get(str, str2);
    }

    public static boolean c(String str, boolean z10) {
        return SystemProperties.getBoolean(str, z10);
    }

    public static int d(String str, int i10) {
        return SystemProperties.getInt(str, i10);
    }
}
