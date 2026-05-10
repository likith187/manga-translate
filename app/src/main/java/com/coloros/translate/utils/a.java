package com.coloros.translate.utils;

import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Integer f7092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f7093b;

    private a() {
    }

    public static final boolean a() {
        if (p.INSTANCE.e()) {
            return true;
        }
        try {
            r.a aVar = n8.r.Companion;
            f7093b = p6.b.b(m.INSTANCE.a().getContentResolver(), "com.oplus.ai.support_smart_voice", false);
            c0.f7098a.d("AppFeatureUtils", " isCaptionSupported : " + f7093b);
            return f7093b;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("AppFeatureUtils", " isCaptionSupported err : " + thM62exceptionOrNullimpl.getMessage());
            }
            return false;
        }
    }

    public static final boolean b() {
        try {
            r.a aVar = n8.r.Companion;
            Integer numValueOf = f7092a;
            if (numValueOf == null) {
                numValueOf = Integer.valueOf(p6.b.d(m.INSTANCE.a().getContentResolver(), "com.oplus.translate.double_screen", 0));
            }
            f7092a = numValueOf;
            c0.f7098a.d("AppFeatureUtils", " isDoubleScreenFeatureEnable:" + f7092a);
            Integer num = f7092a;
            if (num == null) {
                return false;
            }
            return num.intValue() == 1;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("AppFeatureUtils", " isDoubleScreenFeatureEnable err:" + thM62exceptionOrNullimpl.getMessage());
            }
            return false;
        }
    }
}
