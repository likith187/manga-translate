package com.oplus.vfxsdk.naive.coe.engine;

/* JADX INFO: loaded from: classes2.dex */
public class NativeRenderer extends NativeObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11351a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Material f11353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Mesh f11354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Transform f11355e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f11352b = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PostProcessor f11356f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ParticleEmitter f11357g = null;

    public NativeRenderer(NativeEngine nativeEngine, int i10) {
        this.f11351a = 0;
        if (nativeEngine == null) {
            return;
        }
        synchronized (nativeEngine.mLock) {
            try {
                this.mEngine = nativeEngine;
                if (nativeEngine.CheckHandle()) {
                    this.mNativeHandle = nativeInit(this.mEngine.mNativeHandle, i10);
                }
                this.mEngine.setNativeObjectLocked(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        k(true);
        m(new Mesh(this.mEngine, Mesh.f11350a));
        p(new Transform(this.mEngine));
        l(new Material(this.mEngine));
        this.f11351a = i10;
    }

    private static native void nativeAddComponent(long j10, long j11);

    private static native void nativeAddParticleEffect(long j10, long j11);

    private static native void nativeEnable(long j10, boolean z10);

    private static native long nativeInit(long j10, int i10);

    private static native void nativeRemoveComponent(long j10, long j11);

    private static native void nativeSetMaterial(long j10, long j11);

    private static native void nativeSetMesh(long j10, long j11);

    private static native void nativeSetParticleEmitter(long j10, long j11);

    private static native void nativeSetPostProcessor(long j10, long j11);

    private static native void nativeSetSortingOrder(long j10, int i10);

    private static native void nativeSetTransform(long j10, long j11);

    public void a(NativeObject nativeObject) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0 && nativeObject != null) {
                    long j11 = nativeObject.mNativeHandle;
                    if (j11 != 0) {
                        nativeAddComponent(j10, j11);
                    }
                }
            } finally {
            }
        }
    }

    public void b(ParticleEffect particleEffect) {
        synchronized (this) {
            try {
                if (this.mEngine.mNativeHandle == 0) {
                    return;
                }
                nativeAddParticleEffect(this.mNativeHandle, particleEffect.mNativeHandle);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(int i10, boolean z10) {
        synchronized (this.mLock) {
            try {
                Pass passF = this.f11353c.f(i10);
                if (passF != null) {
                    passF.d(z10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Material d() {
        return this.f11353c;
    }

    public Mesh e() {
        return this.f11354d;
    }

    public void enableBlend(boolean z10) {
        c(this.f11353c.g() - 1, z10);
    }

    public PostProcessor f() {
        return this.f11356f;
    }

    public Transform g() {
        return this.f11355e;
    }

    public void h(NativeObject nativeObject) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0 && nativeObject != null) {
                    long j11 = nativeObject.mNativeHandle;
                    if (j11 != 0) {
                        nativeRemoveComponent(j10, j11);
                    }
                }
            } finally {
            }
        }
    }

    public void i(int i10, int i11) {
        synchronized (this.mLock) {
            try {
                Pass passF = this.f11353c.f(i10);
                if (passF != null) {
                    passF.setBlendDstFactor(i11);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void j(int i10, int i11) {
        synchronized (this.mLock) {
            try {
                Pass passF = this.f11353c.f(i10);
                if (passF != null) {
                    passF.setBlendSrcFactor(i11);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void k(boolean z10) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return;
                }
                nativeEnable(j10, z10);
                this.f11352b = z10;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void l(Material material) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0 && material != null) {
                    long j11 = material.mNativeHandle;
                    if (j11 != 0) {
                        nativeSetMaterial(j10, j11);
                        this.f11353c = material;
                    }
                }
            } finally {
            }
        }
    }

    public void m(Mesh mesh) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0 && mesh != null) {
                    long j11 = mesh.mNativeHandle;
                    if (j11 != 0) {
                        nativeSetMesh(j10, j11);
                        this.f11354d = mesh;
                    }
                }
            } finally {
            }
        }
    }

    public void n(ParticleEmitter particleEmitter) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0 && particleEmitter != null) {
                    long j11 = particleEmitter.mNativeHandle;
                    if (j11 != 0) {
                        nativeSetParticleEmitter(j10, j11);
                        this.f11357g = particleEmitter;
                    }
                }
            } finally {
            }
        }
    }

    public void o(PostProcessor postProcessor) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0 && postProcessor != null) {
                    long j11 = postProcessor.mNativeHandle;
                    if (j11 != 0) {
                        nativeSetPostProcessor(j10, j11);
                        this.f11356f = postProcessor;
                    }
                }
            } finally {
            }
        }
    }

    public void p(Transform transform) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 != 0 && transform != null) {
                    long j11 = transform.mNativeHandle;
                    if (j11 != 0) {
                        nativeSetTransform(j10, j11);
                        this.f11355e = transform;
                    }
                }
            } finally {
            }
        }
    }

    public void setBlendDstFactor(int i10) {
        i(this.f11353c.g() - 1, i10);
    }

    public void setBlendSrcFactor(int i10) {
        j(this.f11353c.g() - 1, i10);
    }

    public void setSortingOrder(int i10) {
        synchronized (this.mLock) {
            try {
                long j10 = this.mNativeHandle;
                if (j10 == 0) {
                    return;
                }
                nativeSetSortingOrder(j10, i10);
                this.f11351a = i10;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
