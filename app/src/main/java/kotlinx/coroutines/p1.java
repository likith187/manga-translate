package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p1 extends y {
    public abstract p1 F0();

    protected final String G0() {
        p1 p1VarF0;
        p1 p1VarC = o0.c();
        if (this == p1VarC) {
            return "Dispatchers.Main";
        }
        try {
            p1VarF0 = p1VarC.F0();
        } catch (UnsupportedOperationException unused) {
            p1VarF0 = null;
        }
        if (this == p1VarF0) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }
}
