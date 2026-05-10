package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f13250a = kotlinx.coroutines.internal.h0.f("kotlinx.coroutines.main.delay", false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final j0 f13251b = b();

    public static final j0 a() {
        return f13251b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final j0 b() {
        if (!f13250a) {
            return h0.INSTANCE;
        }
        p1 p1VarC = o0.c();
        return (kotlinx.coroutines.internal.w.c(p1VarC) || !(p1VarC instanceof j0)) ? h0.INSTANCE : (j0) p1VarC;
    }
}
