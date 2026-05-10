package com.coloros.translate.utils;

import android.os.Build;
import com.coloros.translate.TranslationApplication;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class g1 {
    public static final g1 INSTANCE = new g1();

    /* JADX INFO: renamed from: a */
    private static Boolean f7121a;

    /* JADX INFO: renamed from: b */
    private static String f7122b;

    private g1() {
    }

    public static final String a() {
        if (f7122b == null) {
            String str = Build.MANUFACTURER;
            f7122b = str;
            if (str != null && kotlin.text.r.I(str, "oneplus", true) && !b()) {
                f7122b = "oppo";
            }
        }
        String str2 = f7122b;
        return str2 == null ? "" : str2;
    }

    private static final boolean b() {
        Object objM59constructorimpl;
        if (f7121a == null) {
            try {
                r.a aVar = n8.r.Companion;
                f7121a = Boolean.valueOf(TranslationApplication.f4754b.a().getPackageManager().hasSystemFeature("oplus.companyname.not.support"));
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("VersionUtils", "hasOnePlusCompanyFeature: error " + thM62exceptionOrNullimpl.getMessage());
                f7121a = Boolean.FALSE;
            }
        }
        c0.f7098a.d("VersionUtils", "hasOnePlusCompanyFeature: " + f7121a);
        return kotlin.jvm.internal.r.a(f7121a, Boolean.TRUE);
    }
}
