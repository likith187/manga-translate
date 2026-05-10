package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class k1 {

    /* synthetic */ class a extends kotlin.jvm.internal.o implements w8.l {
        a(Object obj) {
            super(1, obj, c1.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Throwable) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Throwable th) {
            ((c1) this.receiver).b(th);
        }
    }

    public static final r a(f1 f1Var) {
        return new i1(f1Var);
    }

    public static /* synthetic */ r b(f1 f1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f1Var = null;
        }
        return j1.a(f1Var);
    }

    public static final void c(kotlin.coroutines.g gVar, CancellationException cancellationException) {
        f1 f1Var = (f1) gVar.get(f1.f13228g);
        if (f1Var != null) {
            f1Var.X(cancellationException);
        }
    }

    public static /* synthetic */ void d(kotlin.coroutines.g gVar, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        j1.c(gVar, cancellationException);
    }

    public static final void e(kotlin.coroutines.g gVar) {
        f1 f1Var = (f1) gVar.get(f1.f13228g);
        if (f1Var != null) {
            j1.f(f1Var);
        }
    }

    public static final void f(f1 f1Var) {
        if (!f1Var.isActive()) {
            throw f1Var.N();
        }
    }

    public static final p0 g(f1 f1Var, boolean z10, boolean z11, c1 c1Var) {
        return f1Var instanceof m1 ? ((m1) f1Var).P(z10, z11, c1Var) : f1Var.i(z10, z11, new a(c1Var));
    }

    public static /* synthetic */ p0 h(f1 f1Var, boolean z10, boolean z11, c1 c1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        return j1.g(f1Var, z10, z11, c1Var);
    }
}
