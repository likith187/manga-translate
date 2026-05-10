package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public final class c2 extends kotlinx.coroutines.internal.c0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ThreadLocal f13177h;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public c2(kotlin.coroutines.g gVar, kotlin.coroutines.d dVar) {
        d2 d2Var = d2.INSTANCE;
        super(gVar.get(d2Var) == null ? gVar.plus(d2Var) : gVar, dVar);
        this.f13177h = new ThreadLocal();
        if (dVar.getContext().get(kotlin.coroutines.e.f13037d) instanceof y) {
            return;
        }
        Object objC = kotlinx.coroutines.internal.k0.c(gVar, null);
        kotlinx.coroutines.internal.k0.a(gVar, objC);
        C0(gVar, objC);
    }

    public final boolean B0() {
        boolean z10 = this.threadLocalIsSet && this.f13177h.get() == null;
        this.f13177h.remove();
        return !z10;
    }

    public final void C0(kotlin.coroutines.g gVar, Object obj) {
        this.threadLocalIsSet = true;
        this.f13177h.set(n8.w.a(gVar, obj));
    }

    @Override // kotlinx.coroutines.internal.c0, kotlinx.coroutines.a
    protected void x0(Object obj) {
        if (this.threadLocalIsSet) {
            n8.q qVar = (n8.q) this.f13177h.get();
            if (qVar != null) {
                kotlinx.coroutines.internal.k0.a((kotlin.coroutines.g) qVar.component1(), qVar.component2());
            }
            this.f13177h.remove();
        }
        Object objA = w.a(obj, this.f13257f);
        kotlin.coroutines.d dVar = this.f13257f;
        kotlin.coroutines.g context = dVar.getContext();
        Object objC = kotlinx.coroutines.internal.k0.c(context, null);
        c2 c2VarG = objC != kotlinx.coroutines.internal.k0.f13276a ? x.g(dVar, context, objC) : null;
        try {
            this.f13257f.resumeWith(objA);
            n8.h0 h0Var = n8.h0.INSTANCE;
        } finally {
            if (c2VarG == null || c2VarG.B0()) {
                kotlinx.coroutines.internal.k0.a(context, objC);
            }
        }
    }
}
