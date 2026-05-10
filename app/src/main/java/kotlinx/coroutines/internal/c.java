package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a */
    private static final g0 f13256a = new g0("CLOSED");

    public static final d b(d dVar) {
        while (true) {
            Object objG = dVar.g();
            if (objG == f13256a) {
                return dVar;
            }
            d dVar2 = (d) objG;
            if (dVar2 != null) {
                dVar = dVar2;
            } else if (dVar.m()) {
                return dVar;
            }
        }
    }

    public static final Object c(d0 d0Var, long j10, w8.p pVar) {
        while (true) {
            if (d0Var.f13261c >= j10 && !d0Var.k()) {
                return e0.a(d0Var);
            }
            Object objG = d0Var.g();
            if (objG == f13256a) {
                return e0.a(f13256a);
            }
            d0 d0Var2 = (d0) ((d) objG);
            if (d0Var2 == null) {
                d0Var2 = (d0) pVar.invoke(Long.valueOf(d0Var.f13261c + 1), d0Var);
                if (d0Var.o(d0Var2)) {
                    if (d0Var.k()) {
                        d0Var.n();
                    }
                }
            }
            d0Var = d0Var2;
        }
    }
}
