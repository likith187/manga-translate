package com.coloros.translate.utils;

import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f7134a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f7135b = "";

    public static String a() {
        if (!TextUtils.isEmpty(f7135b)) {
            return f7135b;
        }
        String strB = b("persist.sys.oplus.region", "CN");
        f7135b = strB;
        return strB;
    }

    private static String b(String str, String str2) {
        try {
            return r0.a(str);
        } catch (Exception e10) {
            c0.j("DeviceInfoModel", str + "UnSupportedApiVersionException: " + e10.getMessage());
            return str2;
        }
    }

    public static String c() {
        if (!TextUtils.isEmpty(f7134a)) {
            return f7134a;
        }
        String str = Build.BRAND;
        f7134a = str;
        return str;
    }
}
