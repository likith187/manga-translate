package com.oplus.vfxsdk.naive.coe.engine;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class Pass extends NativeObject {

    /* JADX INFO: renamed from: a */
    private RenderStateInfo f11358a = new RenderStateInfo();

    /* JADX INFO: renamed from: b */
    private WeakReference f11359b = null;

    public Pass(NativeEngine nativeEngine, String str, String str2, Boolean bool, int i10) {
        if (nativeEngine == null) {
            return;
        }
        synchronized (nativeEngine.mLock) {
            try {
                this.mEngine = nativeEngine;
                if (nativeEngine.CheckHandle()) {
                    this.mNativeHandle = nativeInit(this.mEngine.mNativeHandle, str, str2, bool.booleanValue(), i10, null);
                }
                this.mEngine.setNativeObjectLocked(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static native long nativeInit(long j10, String str, String str2, boolean z10, int i10, RenderStateInfo renderStateInfo);

    private static native void nativeSetRenderState(long j10, RenderStateInfo renderStateInfo);

    private static native void nativeSetRenderTexture(long j10, long j11, long j12);

    public void a(Material material) {
        this.f11359b = new WeakReference(material);
    }

    public void b(int i10) {
        synchronized (this.mLock) {
            try {
                this.f11358a.setBlendDstFactorAlpha(i10);
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return;
                }
                nativeSetRenderState(j10, this.f11358a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(int i10) {
        synchronized (this.mLock) {
            try {
                this.f11358a.setBlendSrcFactorAlpha(i10);
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return;
                }
                nativeSetRenderState(j10, this.f11358a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(boolean z10) {
        synchronized (this.mLock) {
            try {
                this.f11358a.setBlendEnable(z10);
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return;
                }
                nativeSetRenderState(j10, this.f11358a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e(RenderTexture renderTexture) {
        synchronized (this.mLock) {
            try {
                if (this.mNativeHandle != 0 && CheckEngine()) {
                    if (renderTexture != null) {
                        nativeSetRenderTexture(this.mNativeHandle, renderTexture.mNativeHandle, this.mEngine.mNativeHandle);
                    } else {
                        nativeSetRenderTexture(this.mNativeHandle, 0L, this.mEngine.mNativeHandle);
                    }
                }
            } finally {
            }
        }
    }

    public void setBlendDstFactor(int i10) {
        synchronized (this.mLock) {
            try {
                this.f11358a.setBlendDstFactor(i10);
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return;
                }
                nativeSetRenderState(j10, this.f11358a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setBlendSrcFactor(int i10) {
        synchronized (this.mLock) {
            try {
                this.f11358a.setBlendSrcFactor(i10);
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return;
                }
                nativeSetRenderState(j10, this.f11358a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setParameter(String str, Object... objArr) {
        synchronized (this.mLock) {
            try {
                WeakReference weakReference = this.f11359b;
                if (weakReference != null) {
                    ((Material) weakReference.get()).h(0, str, objArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
