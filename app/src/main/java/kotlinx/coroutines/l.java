package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {
    public static final void a(i iVar, p0 p0Var) {
        c(iVar, new q0(p0Var));
    }

    public static final j b(kotlin.coroutines.d dVar) {
        if (!(dVar instanceof kotlinx.coroutines.internal.j)) {
            return new j(dVar, 1);
        }
        j jVarN = ((kotlinx.coroutines.internal.j) dVar).n();
        if (jVarN != null) {
            if (!jVarN.N()) {
                jVarN = null;
            }
            if (jVarN != null) {
                return jVarN;
            }
        }
        return new j(dVar, 2);
    }

    public static final void c(i iVar, h hVar) {
        if (!(iVar instanceof j)) {
            throw new UnsupportedOperationException("third-party implementation of CancellableContinuation is not supported");
        }
        ((j) iVar).G(hVar);
    }
}
