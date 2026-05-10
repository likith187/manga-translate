package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public class i1 extends m1 implements r {

    /* JADX INFO: renamed from: c */
    private final boolean f13252c;

    public i1(f1 f1Var) {
        super(true);
        O(f1Var);
        this.f13252c = x0();
    }

    private final boolean x0() {
        m1 m1VarV;
        o oVarF = F();
        p pVar = oVarF instanceof p ? (p) oVarF : null;
        if (pVar != null && (m1VarV = pVar.v()) != null) {
            while (!m1VarV.B()) {
                o oVarF2 = m1VarV.F();
                p pVar2 = oVarF2 instanceof p ? (p) oVarF2 : null;
                if (pVar2 == null || (m1VarV = pVar2.v()) == null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.m1
    public boolean B() {
        return this.f13252c;
    }

    @Override // kotlinx.coroutines.m1
    public boolean C() {
        return true;
    }
}
