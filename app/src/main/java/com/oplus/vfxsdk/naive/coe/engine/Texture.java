package com.oplus.vfxsdk.naive.coe.engine;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class Texture extends NativeObject {
    protected boolean inMainCtx;
    protected int texId;
    protected int texType;

    public Texture() {
        this.texId = 0;
        this.texType = 3;
        this.inMainCtx = false;
    }

    private static native int nativeGetTexId(long j10, long j11);

    private static native int nativeGetTexType(long j10, long j11);

    private static native long nativeInit(long j10, TexCreateInfo texCreateInfo);

    public int getTexId() {
        return this.texId;
    }

    public int getTexType() {
        return this.texType;
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.NativeObject
    public void release() {
        releaseWithCtx(this.inMainCtx);
    }

    public void setTexId(int i10) {
        this.texId = i10;
    }

    public void setTexType(int i10) {
        this.texType = i10;
    }

    public Texture(long j10) {
        super(j10);
        this.texId = 0;
        this.texType = 3;
        this.inMainCtx = false;
    }

    public Texture(NativeEngine nativeEngine, TexCreateInfo texCreateInfo) {
        this.texId = 0;
        this.texType = 3;
        this.inMainCtx = false;
        if (nativeEngine == null) {
            return;
        }
        synchronized (nativeEngine.mLock) {
            try {
                this.mEngine = nativeEngine;
                if (nativeEngine.CheckHandle()) {
                    this.mNativeHandle = nativeInit(this.mEngine.mNativeHandle, texCreateInfo);
                }
                this.mEngine.setNativeObjectLocked(this);
            } finally {
            }
        }
        synchronized (this.mLock) {
            try {
                if (CheckHandle()) {
                    setTexId(nativeGetTexId(this.mNativeHandle, this.mEngine.mNativeHandle));
                    setTexType(nativeGetTexType(this.mNativeHandle, this.mEngine.mNativeHandle));
                }
            } finally {
            }
        }
        this.inMainCtx = texCreateInfo.getInMainCtx();
    }
}
