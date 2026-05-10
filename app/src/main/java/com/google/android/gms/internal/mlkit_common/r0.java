package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: loaded from: classes.dex */
public final class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static r0 f8103a;

    private r0() {
    }

    public static synchronized r0 a() {
        try {
            if (f8103a == null) {
                f8103a = new r0();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f8103a;
    }

    public static void b() {
        q0.a();
    }
}
