package androidx.lifecycle;

import androidx.lifecycle.l;

/* JADX INFO: loaded from: classes.dex */
public final class i0 implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m0 f2787a;

    public i0(m0 provider) {
        kotlin.jvm.internal.r.e(provider, "provider");
        this.f2787a = provider;
    }

    @Override // androidx.lifecycle.p
    public void onStateChanged(s source, l.a event) {
        kotlin.jvm.internal.r.e(source, "source");
        kotlin.jvm.internal.r.e(event, "event");
        if (event == l.a.ON_CREATE) {
            source.getLifecycle().d(this);
            this.f2787a.d();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + event).toString());
        }
    }
}
