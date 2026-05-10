package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
final class d1 extends h1 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f13223i = AtomicIntegerFieldUpdater.newUpdater(d1.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c1 f13224h;

    public d1(c1 c1Var) {
        this.f13224h = c1Var;
    }

    @Override // kotlinx.coroutines.c1
    public void b(Throwable th) {
        if (f13223i.compareAndSet(this, 0, 1)) {
            this.f13224h.b(th);
        }
    }
}
