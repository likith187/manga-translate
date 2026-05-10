package com.google.android.gms.common.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f7905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7906b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ d f7907c;

    public p0(d dVar, Object obj) {
        this.f7907c = dVar;
        this.f7905a = obj;
    }

    protected abstract void a(Object obj);

    protected abstract void b();

    public final void c() {
        Object obj;
        synchronized (this) {
            try {
                obj = this.f7905a;
                if (this.f7906b) {
                    Log.w("GmsClient", "Callback proxy " + toString() + " being reused. This is not safe.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj != null) {
            a(obj);
        }
        synchronized (this) {
            this.f7906b = true;
        }
        e();
    }

    public final void d() {
        synchronized (this) {
            this.f7905a = null;
        }
    }

    public final void e() {
        d();
        synchronized (this.f7907c.f7841r) {
            this.f7907c.f7841r.remove(this);
        }
    }
}
