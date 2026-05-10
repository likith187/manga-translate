package com.oplus.vfxsdk.naive.coe.engine;

import android.util.Log;
import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public abstract class NativeObject {
    private static boolean libraryFound = false;
    protected NativeEngine mEngine;
    final Object mLock;
    protected long mNativeHandle;

    static {
        loadLibrary();
    }

    public NativeObject() {
        this.mNativeHandle = 0L;
        this.mLock = new Object();
    }

    static void loadLibrary() {
        if (libraryFound) {
            return;
        }
        try {
            System.loadLibrary("naiveEngine");
            libraryFound = true;
        } catch (Error e10) {
            libraryFound = false;
            Log.d("COE_LOGGER", "System.loadLibrary Error: " + e10);
        } catch (Exception e11) {
            libraryFound = false;
            Log.d("COE_LOGGER", "System.loadLibrary Exception: " + e11);
        }
    }

    private static native void nativeRelease(long j10, long j11, boolean z10);

    private static native void nativeRetain(long j10, long j11);

    protected boolean CheckEngine() {
        NativeEngine nativeEngine = this.mEngine;
        return (nativeEngine == null || nativeEngine.mNativeHandle == 0) ? false : true;
    }

    protected boolean CheckHandle() {
        boolean z10;
        synchronized (this.mLock) {
            try {
                z10 = this.mNativeHandle != 0 && CheckEngine();
            } finally {
            }
        }
        return z10;
    }

    protected void finalize() throws Throwable {
        try {
            release();
        } finally {
            super.finalize();
        }
    }

    public long getNativeHandle() {
        return this.mNativeHandle;
    }

    public void release() {
        releaseWithCtx(false);
    }

    protected void releaseWithCtx(boolean z10) {
        synchronized (this.mLock) {
            try {
                if (this.mNativeHandle != 0 && CheckEngine()) {
                    nativeRelease(this.mNativeHandle, this.mEngine.mNativeHandle, z10);
                    this.mNativeHandle = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void retain() {
        synchronized (this.mLock) {
            try {
                if (this.mNativeHandle != 0 && CheckEngine()) {
                    nativeRetain(this.mNativeHandle, this.mEngine.mNativeHandle);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setNativeHandle(long j10) {
        this.mNativeHandle = j10;
    }

    public NativeObject(long j10) {
        this.mLock = new Object();
        this.mNativeHandle = j10;
    }

    public NativeObject(NativeObject nativeObject) {
        this.mNativeHandle = 0L;
        this.mLock = new Object();
        nativeObject.retain();
        this.mNativeHandle = nativeObject.mNativeHandle;
        this.mEngine = nativeObject.mEngine;
    }
}
