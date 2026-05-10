package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
public abstract class db {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static cb f8223a;

    public static synchronized sa a(ma maVar) {
        try {
            if (f8223a == null) {
                f8223a = new cb(null);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (sa) f8223a.b(maVar);
    }

    public static synchronized sa b(String str) {
        return a(ma.d(str).c());
    }
}
