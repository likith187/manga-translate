package com.oplus.vfxsdk.naive.coe.engine;

/* JADX INFO: loaded from: classes2.dex */
public class PostProcessor extends NativeObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f11360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f11361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float[] f11362c;

    public PostProcessor(NativeEngine nativeEngine) {
        Boolean bool = Boolean.FALSE;
        this.f11360a = bool;
        this.f11361b = bool;
        this.f11362c = new float[2];
        if (nativeEngine == null) {
            return;
        }
        synchronized (nativeEngine.mLock) {
            try {
                this.mEngine = nativeEngine;
                if (nativeEngine.CheckHandle()) {
                    this.mNativeHandle = nativeInit(this.mEngine.mNativeHandle);
                }
                this.mEngine.setNativeObjectLocked(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static native void nativeAddEffect(long j10, String str, Material material, long j11);

    private static native long nativeInit(long j10);

    private static native void nativeSetBatchEnabled(long j10, boolean z10);

    private static native void nativeSetStandalone(long j10, boolean z10);

    public void a(String str, Material material) {
        synchronized (this.mLock) {
            try {
                if (CheckHandle()) {
                    nativeAddEffect(this.mNativeHandle, str, material, this.mEngine.mNativeHandle);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(boolean z10) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetBatchEnabled(j10, z10);
                    this.f11360a = Boolean.valueOf(z10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(boolean z10) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0) {
                    nativeSetStandalone(j10, z10);
                    this.f11361b = Boolean.valueOf(z10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
