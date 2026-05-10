package com.google.android.gms.common;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class n extends m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f7975b;

    n(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f7975b = bArr;
    }

    @Override // com.google.android.gms.common.m
    final byte[] b() {
        return this.f7975b;
    }
}
