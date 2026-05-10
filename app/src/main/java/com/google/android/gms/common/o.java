package com.google.android.gms.common;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
abstract class o extends m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final WeakReference f7976c = new WeakReference(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference f7977b;

    o(byte[] bArr) {
        super(bArr);
        this.f7977b = f7976c;
    }

    @Override // com.google.android.gms.common.m
    final byte[] b() {
        byte[] bArrC;
        synchronized (this) {
            try {
                bArrC = (byte[]) this.f7977b.get();
                if (bArrC == null) {
                    bArrC = c();
                    this.f7977b = new WeakReference(bArrC);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrC;
    }

    protected abstract byte[] c();
}
