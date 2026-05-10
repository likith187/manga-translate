package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public final class z1 {
    public static final z1 INSTANCE = new z1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal f13397a = kotlinx.coroutines.internal.l0.a(new kotlinx.coroutines.internal.g0("ThreadLocalEventLoop"));

    private z1() {
    }

    public final s0 a() {
        ThreadLocal threadLocal = f13397a;
        s0 s0Var = (s0) threadLocal.get();
        if (s0Var != null) {
            return s0Var;
        }
        s0 s0VarA = v0.a();
        threadLocal.set(s0VarA);
        return s0VarA;
    }

    public final void b() {
        f13397a.set(null);
    }

    public final void c(s0 s0Var) {
        f13397a.set(s0Var);
    }
}
