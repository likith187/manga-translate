package com.google.android.gms.internal.mlkit_language_id_common;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
final class k extends OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f8414a = 0;

    k() {
    }

    final long c() {
        return this.f8414a;
    }

    @Override // java.io.OutputStream
    public final void write(int i10) {
        this.f8414a++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f8414a += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) {
        int length;
        int i12;
        if (i10 >= 0 && i10 <= (length = bArr.length) && i11 >= 0 && (i12 = i10 + i11) <= length && i12 >= 0) {
            this.f8414a += (long) i11;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
