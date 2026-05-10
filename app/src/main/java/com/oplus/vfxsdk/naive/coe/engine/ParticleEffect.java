package com.oplus.vfxsdk.naive.coe.engine;

/* JADX INFO: loaded from: classes2.dex */
public class ParticleEffect extends NativeObject {
    public ParticleEffect(NativeEngine nativeEngine, String str) {
        if (nativeEngine == null) {
            return;
        }
        synchronized (nativeEngine.mLock) {
            try {
                this.mEngine = nativeEngine;
                if (nativeEngine.CheckEngine()) {
                    this.mNativeHandle = nativeInitEffect(this.mEngine.mNativeHandle, str);
                }
                this.mEngine.setNativeObjectLocked(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static native long nativeInitEffect(long j10, String str);
}
