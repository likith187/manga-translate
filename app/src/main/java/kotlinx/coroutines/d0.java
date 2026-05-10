package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d0 {
    public static final c0 a(kotlin.coroutines.g gVar) {
        if (gVar.get(f1.f13228g) == null) {
            gVar = gVar.plus(k1.b(null, 1, null));
        }
        return new kotlinx.coroutines.internal.f(gVar);
    }

    public static final void b(c0 c0Var, CancellationException cancellationException) {
        f1 f1Var = (f1) c0Var.c().get(f1.f13228g);
        if (f1Var != null) {
            f1Var.X(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + c0Var).toString());
    }

    public static /* synthetic */ void c(c0 c0Var, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        b(c0Var, cancellationException);
    }

    public static final Object d(w8.p pVar, kotlin.coroutines.d dVar) {
        kotlinx.coroutines.internal.c0 c0Var = new kotlinx.coroutines.internal.c0(dVar.getContext(), dVar);
        Object objB = f9.b.b(c0Var, c0Var, pVar);
        if (objB == kotlin.coroutines.intrinsics.b.f()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objB;
    }

    public static final boolean e(c0 c0Var) {
        f1 f1Var = (f1) c0Var.c().get(f1.f13228g);
        if (f1Var != null) {
            return f1Var.isActive();
        }
        return true;
    }
}
