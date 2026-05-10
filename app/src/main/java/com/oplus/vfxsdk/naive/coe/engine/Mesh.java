package com.oplus.vfxsdk.naive.coe.engine;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class Mesh extends NativeObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ByteBuffer f11350a;

    static {
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(1024).order(ByteOrder.nativeOrder());
        f11350a = byteBufferOrder;
        float[] fArr = {-1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f};
        float[] fArr2 = {0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};
        float[] fArr3 = {0.0f, 0.0f, 1.0f};
        int[] iArr = {0, 0, 0, 1, 1, 0, 2, 2, 0, 2, 2, 0, 3, 3, 0, 0, 0, 0};
        byteBufferOrder.limit(1024);
        f11350a.putInt(4);
        for (int i10 = 0; i10 < 12; i10++) {
            f11350a.putFloat(fArr[i10]);
        }
        f11350a.putInt(4);
        for (int i11 = 0; i11 < 8; i11++) {
            f11350a.putFloat(fArr2[i11]);
        }
        f11350a.putInt(1);
        for (int i12 = 0; i12 < 3; i12++) {
            f11350a.putFloat(fArr3[i12]);
        }
        f11350a.putInt(2);
        for (int i13 = 0; i13 < 18; i13++) {
            f11350a.putInt(iArr[i13]);
        }
        f11350a.flip();
    }

    public Mesh(NativeEngine nativeEngine, ByteBuffer byteBuffer) {
        if (nativeEngine == null) {
            return;
        }
        synchronized (nativeEngine.mLock) {
            try {
                this.mEngine = nativeEngine;
                if (nativeEngine.CheckHandle()) {
                    this.mNativeHandle = nativeInit(this.mEngine.mNativeHandle, byteBuffer);
                }
                this.mEngine.setNativeObjectLocked(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static native long nativeInit(long j10, ByteBuffer byteBuffer);

    private static native void nativeUpdateMesh(long j10, ByteBuffer byteBuffer);

    public void updateMesh(ByteBuffer byteBuffer) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return;
                }
                nativeUpdateMesh(j10, byteBuffer);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
