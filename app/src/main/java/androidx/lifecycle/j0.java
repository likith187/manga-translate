package androidx.lifecycle;

import androidx.lifecycle.l;

/* JADX INFO: loaded from: classes.dex */
public final class j0 implements p, AutoCloseable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0 f2789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2790c;

    public j0(String key, h0 handle) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(handle, "handle");
        this.f2788a = key;
        this.f2789b = handle;
    }

    public final void c(q0.e registry, l lifecycle) {
        kotlin.jvm.internal.r.e(registry, "registry");
        kotlin.jvm.internal.r.e(lifecycle, "lifecycle");
        if (this.f2790c) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f2790c = true;
        lifecycle.a(this);
        registry.c(this.f2788a, this.f2789b.a());
    }

    @Override // java.lang.AutoCloseable
    public void close() {
    }

    public final h0 i() {
        return this.f2789b;
    }

    public final boolean k() {
        return this.f2790c;
    }

    @Override // androidx.lifecycle.p
    public void onStateChanged(s source, l.a event) {
        kotlin.jvm.internal.r.e(source, "source");
        kotlin.jvm.internal.r.e(event, "event");
        if (event == l.a.ON_DESTROY) {
            this.f2790c = false;
            source.getLifecycle().d(this);
        }
    }
}
