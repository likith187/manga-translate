package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
public abstract class t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final m0.f f2822a = new m0.f();

    public static final kotlinx.coroutines.c0 a(s0 s0Var) {
        m0.b bVarA;
        kotlin.jvm.internal.r.e(s0Var, "<this>");
        synchronized (f2822a) {
            bVarA = (m0.b) s0Var.c("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY");
            if (bVarA == null) {
                bVarA = m0.c.a();
                s0Var.a("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY", bVarA);
            }
        }
        return bVarA;
    }
}
