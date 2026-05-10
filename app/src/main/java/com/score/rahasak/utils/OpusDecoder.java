package com.score.rahasak.utils;

/* JADX INFO: loaded from: classes2.dex */
public class OpusDecoder {
    private long address;

    static {
        System.loadLibrary("senz");
    }

    private native int nativeDecodeBytes(byte[] bArr, byte[] bArr2, int i10);

    private native int nativeDecodeShorts(byte[] bArr, short[] sArr, int i10);

    private native int nativeInitDecoder(int i10, int i11);

    private native boolean nativeReleaseDecoder();

    public int a(byte[] bArr, short[] sArr, int i10) {
        return a.throwIfError(nativeDecodeShorts(bArr, sArr, i10));
    }

    public void b(int i10, int i11) {
        a.throwIfError(nativeInitDecoder(i10, i11));
    }
}
