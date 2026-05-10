package androidx.room;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f3603a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f3604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile s0.f f3605c;

    public n(h hVar) {
        this.f3604b = hVar;
    }

    private s0.f c() {
        return this.f3604b.d(d());
    }

    private s0.f e(boolean z10) {
        if (!z10) {
            return c();
        }
        if (this.f3605c == null) {
            this.f3605c = c();
        }
        return this.f3605c;
    }

    public s0.f a() {
        b();
        return e(this.f3603a.compareAndSet(false, true));
    }

    protected void b() {
        this.f3604b.a();
    }

    protected abstract String d();

    public void f(s0.f fVar) {
        if (fVar == this.f3605c) {
            this.f3603a.set(false);
        }
    }
}
