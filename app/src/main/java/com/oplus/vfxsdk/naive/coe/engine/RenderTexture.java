package com.oplus.vfxsdk.naive.coe.engine;

/* JADX INFO: loaded from: classes2.dex */
public class RenderTexture extends Texture {
    public RenderTexture(NativeEngine nativeEngine, int i10, int i11) {
        if (nativeEngine == null) {
            return;
        }
        synchronized (nativeEngine.mLock) {
            try {
                this.mEngine = nativeEngine;
                if (nativeEngine.CheckHandle()) {
                    TexCreateInfo[] texCreateInfoArr = {new TexCreateInfo()};
                    texCreateInfoArr[0].setWidth(i10);
                    texCreateInfoArr[0].setHeight(i11);
                    this.mNativeHandle = nativeInit(this.mEngine.mNativeHandle, texCreateInfoArr);
                }
                this.mEngine.setNativeObjectLocked(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static native long nativeInit(long j10, TexCreateInfo[] texCreateInfoArr);

    @Override // com.oplus.vfxsdk.naive.coe.engine.Texture, com.oplus.vfxsdk.naive.coe.engine.NativeObject
    public void release() {
        releaseWithCtx(true);
    }
}
