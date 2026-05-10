package com.oplus.vfxsdk.naive.coe.engine;

/* JADX INFO: loaded from: classes2.dex */
public class Transform extends NativeObject {
    public Transform(NativeEngine nativeEngine) {
        if (nativeEngine == null || !nativeEngine.CheckHandle()) {
            return;
        }
        this.mNativeHandle = nativeInit(nativeEngine.mNativeHandle, null);
        this.mEngine = nativeEngine;
        nativeEngine.setNativeObjectLocked(this);
    }

    private static native long nativeInit(long j10, float[] fArr);

    private static native void nativeSetEuler(long j10, float f10, float f11, float f12);

    private static native void nativeSetPosition(long j10, float f10, float f11, float f12);

    private static native void nativeSetScale(long j10, float f10, float f11, float f12);

    public void a(float f10, float f11, float f12) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetEuler(j10, f10, f11, f12);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(float f10, float f11, float f12) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetPosition(j10, f10, f11, f12);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(float f10, float f11, float f12) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetScale(j10, f10, f11, f12);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
