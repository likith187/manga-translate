package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends t0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Thread f13225l;

    public e(Thread thread) {
        this.f13225l = thread;
    }

    @Override // kotlinx.coroutines.u0
    protected Thread O0() {
        return this.f13225l;
    }
}
