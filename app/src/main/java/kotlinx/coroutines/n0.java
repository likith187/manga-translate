package kotlinx.coroutines;

import n8.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n0 {
    public static final void a(m0 m0Var, int i10) {
        kotlin.coroutines.d dVarH = m0Var.h();
        boolean z10 = i10 == 4;
        if (z10 || !(dVarH instanceof kotlinx.coroutines.internal.j) || b(i10) != b(m0Var.f13320c)) {
            d(m0Var, dVarH, z10);
            return;
        }
        y yVar = ((kotlinx.coroutines.internal.j) dVarH).f13270f;
        kotlin.coroutines.g context = dVarH.getContext();
        if (yVar.D0(context)) {
            yVar.x0(context, m0Var);
        } else {
            e(m0Var);
        }
    }

    public static final boolean b(int i10) {
        return i10 == 1 || i10 == 2;
    }

    public static final boolean c(int i10) {
        return i10 == 2;
    }

    public static final void d(m0 m0Var, kotlin.coroutines.d dVar, boolean z10) {
        Object objJ;
        Object objL = m0Var.l();
        Throwable thI = m0Var.i(objL);
        if (thI != null) {
            r.a aVar = n8.r.Companion;
            objJ = n8.s.a(thI);
        } else {
            r.a aVar2 = n8.r.Companion;
            objJ = m0Var.j(objL);
        }
        Object objM59constructorimpl = n8.r.m59constructorimpl(objJ);
        if (!z10) {
            dVar.resumeWith(objM59constructorimpl);
            return;
        }
        kotlin.jvm.internal.r.c(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        kotlinx.coroutines.internal.j jVar = (kotlinx.coroutines.internal.j) dVar;
        kotlin.coroutines.d dVar2 = jVar.f13271h;
        Object obj = jVar.f13273j;
        kotlin.coroutines.g context = dVar2.getContext();
        Object objC = kotlinx.coroutines.internal.k0.c(context, obj);
        c2 c2VarG = objC != kotlinx.coroutines.internal.k0.f13276a ? x.g(dVar2, context, objC) : null;
        try {
            jVar.f13271h.resumeWith(objM59constructorimpl);
            n8.h0 h0Var = n8.h0.INSTANCE;
        } finally {
            if (c2VarG == null || c2VarG.B0()) {
                kotlinx.coroutines.internal.k0.a(context, objC);
            }
        }
    }

    private static final void e(m0 m0Var) {
        s0 s0VarA = z1.INSTANCE.a();
        if (s0VarA.L0()) {
            s0VarA.H0(m0Var);
            return;
        }
        s0VarA.J0(true);
        try {
            d(m0Var, m0Var.h(), true);
            do {
            } while (s0VarA.N0());
        } finally {
            try {
            } finally {
            }
        }
    }
}
