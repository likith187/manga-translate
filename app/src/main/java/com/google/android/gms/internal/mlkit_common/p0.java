package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: loaded from: classes.dex */
public abstract class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static o0 f8101a;

    public static synchronized h0 a(d0 d0Var) {
        try {
            if (f8101a == null) {
                f8101a = new o0(null);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (h0) f8101a.b(d0Var);
    }

    public static synchronized h0 b(String str) {
        return a(d0.d("common").c());
    }
}
