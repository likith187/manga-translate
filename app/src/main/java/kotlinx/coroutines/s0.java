package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s0 extends y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f13353c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f13354f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private kotlin.collections.h f13355h;

    private final long G0(boolean z10) {
        return z10 ? 4294967296L : 1L;
    }

    public static /* synthetic */ void K0(s0 s0Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        s0Var.J0(z10);
    }

    public final void F0(boolean z10) {
        long jG0 = this.f13353c - G0(z10);
        this.f13353c = jG0;
        if (jG0 <= 0 && this.f13354f) {
            shutdown();
        }
    }

    public final void H0(m0 m0Var) {
        kotlin.collections.h hVar = this.f13355h;
        if (hVar == null) {
            hVar = new kotlin.collections.h();
            this.f13355h = hVar;
        }
        hVar.addLast(m0Var);
    }

    protected long I0() {
        kotlin.collections.h hVar = this.f13355h;
        return (hVar == null || hVar.isEmpty()) ? Long.MAX_VALUE : 0L;
    }

    public final void J0(boolean z10) {
        this.f13353c += G0(z10);
        if (z10) {
            return;
        }
        this.f13354f = true;
    }

    public final boolean L0() {
        return this.f13353c >= G0(true);
    }

    public final boolean M0() {
        kotlin.collections.h hVar = this.f13355h;
        if (hVar != null) {
            return hVar.isEmpty();
        }
        return true;
    }

    public final boolean N0() {
        m0 m0Var;
        kotlin.collections.h hVar = this.f13355h;
        if (hVar == null || (m0Var = (m0) hVar.m()) == null) {
            return false;
        }
        m0Var.run();
        return true;
    }

    public abstract void shutdown();
}
