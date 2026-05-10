package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
public final class eb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static eb f8255a;

    private eb() {
    }

    public static synchronized eb a() {
        try {
            if (f8255a == null) {
                f8255a = new eb();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f8255a;
    }
}
