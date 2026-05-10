package com.oplus.vfxsdk.naive.coe.engine;

import java.util.ArrayList;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public final class Material extends NativeObject {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f11347c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList f11348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentLinkedQueue f11349b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d(long j10, long j11) {
            Material.nativeAddPass(j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void f(long j10, String str, Object[] objArr, long j11) {
            Material.nativeSetProperty(j10, str, objArr, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void g(long j10, ArrayList arrayList, long j11) {
            Material.nativeSetPropertyBatch(j10, arrayList, j11);
        }

        public final long e(long j10) {
            return Material.nativeInit(j10);
        }

        private a() {
        }
    }

    public Material(NativeEngine engine) {
        r.e(engine, "engine");
        this.f11348a = new ArrayList();
        this.f11349b = new ConcurrentLinkedQueue();
        Object mLock = engine.mLock;
        r.d(mLock, "mLock");
        synchronized (mLock) {
            try {
                this.mEngine = engine;
                if (engine.CheckHandle()) {
                    this.mNativeHandle = f11347c.e(this.mEngine.mNativeHandle);
                }
                this.mEngine.setNativeObjectLocked(this);
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void nativeAddPass(long j10, long j11);

    public static final native long nativeInit(long j10);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native <T> void nativeSetProperty(long j10, String str, T[] tArr, long j11);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void nativeSetPropertyBatch(long j10, ArrayList<ParameterEntry<?>> arrayList, long j11);

    public final int d(Pass pass) {
        r.e(pass, "pass");
        Object mLock = this.mLock;
        r.d(mLock, "mLock");
        synchronized (mLock) {
            long j10 = this.mNativeHandle;
            if (j10 != 0) {
                long j11 = pass.mNativeHandle;
                if (j11 != 0) {
                    f11347c.d(j10, j11);
                    this.f11348a.add(pass);
                    pass.a(this);
                    return this.f11348a.size() - 1;
                }
            }
            return -1;
        }
    }

    public final void e() {
        Object mLock = this.mLock;
        r.d(mLock, "mLock");
        synchronized (mLock) {
            if (this.mNativeHandle != 0 && CheckEngine() && !this.f11349b.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.f11349b);
                this.f11349b.clear();
                f11347c.g(this.mNativeHandle, arrayList, this.mEngine.mNativeHandle);
                h0 h0Var = h0.INSTANCE;
            }
        }
    }

    public final Pass f(int i10) {
        if (i10 < 0 || i10 >= this.f11348a.size()) {
            return null;
        }
        return (Pass) this.f11348a.get(i10);
    }

    public final int g() {
        return this.f11348a.size();
    }

    public void h(int i10, String paraName, Object... values) {
        r.e(paraName, "paraName");
        r.e(values, "values");
        Object mLock = this.mLock;
        r.d(mLock, "mLock");
        synchronized (mLock) {
            if (this.mNativeHandle != 0 && CheckEngine()) {
                f11347c.f(this.mNativeHandle, paraName, values, this.mEngine.mNativeHandle);
                h0 h0Var = h0.INSTANCE;
            }
        }
    }

    public void i(int i10, String paraName, Object... values) {
        r.e(paraName, "paraName");
        r.e(values, "values");
        Object mLock = this.mLock;
        r.d(mLock, "mLock");
        synchronized (mLock) {
            if (this.mNativeHandle != 0 && CheckEngine()) {
                this.f11349b.add(new ParameterEntry(i10, paraName, values));
            }
        }
    }

    public void j(RenderTexture renderTexture, int i10) {
        r.e(renderTexture, "renderTexture");
        Pass passF = f(i10);
        if (passF != null) {
            passF.e(renderTexture);
        }
    }
}
