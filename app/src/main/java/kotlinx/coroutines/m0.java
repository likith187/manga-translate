package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import n8.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m0 extends g9.h {

    /* JADX INFO: renamed from: c */
    public int f13320c;

    public m0(int i10) {
        this.f13320c = i10;
    }

    public abstract void c(Object obj, Throwable th);

    public abstract kotlin.coroutines.d h();

    public Throwable i(Object obj) {
        t tVar = obj instanceof t ? (t) obj : null;
        if (tVar != null) {
            return tVar.f13378a;
        }
        return null;
    }

    public Object j(Object obj) {
        return obj;
    }

    public final void k(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            n8.e.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        kotlin.jvm.internal.r.b(th);
        a0.a(h().getContext(), new f0("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object l();

    @Override // java.lang.Runnable
    public final void run() {
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        g9.i iVar = this.f12149b;
        try {
            kotlin.coroutines.d dVarH = h();
            kotlin.jvm.internal.r.c(dVarH, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            kotlinx.coroutines.internal.j jVar = (kotlinx.coroutines.internal.j) dVarH;
            kotlin.coroutines.d dVar = jVar.f13271h;
            Object obj = jVar.f13273j;
            kotlin.coroutines.g context = dVar.getContext();
            Object objC = kotlinx.coroutines.internal.k0.c(context, obj);
            c2 c2VarG = objC != kotlinx.coroutines.internal.k0.f13276a ? x.g(dVar, context, objC) : null;
            try {
                kotlin.coroutines.g context2 = dVar.getContext();
                Object objL = l();
                Throwable thI = i(objL);
                f1 f1Var = (thI == null && n0.b(this.f13320c)) ? (f1) context2.get(f1.f13228g) : null;
                if (f1Var != null && !f1Var.isActive()) {
                    CancellationException cancellationExceptionN = f1Var.N();
                    c(objL, cancellationExceptionN);
                    r.a aVar = n8.r.Companion;
                    dVar.resumeWith(n8.r.m59constructorimpl(n8.s.a(cancellationExceptionN)));
                } else if (thI != null) {
                    r.a aVar2 = n8.r.Companion;
                    dVar.resumeWith(n8.r.m59constructorimpl(n8.s.a(thI)));
                } else {
                    r.a aVar3 = n8.r.Companion;
                    dVar.resumeWith(n8.r.m59constructorimpl(j(objL)));
                }
                n8.h0 h0Var = n8.h0.INSTANCE;
                if (c2VarG == null || c2VarG.B0()) {
                    kotlinx.coroutines.internal.k0.a(context, objC);
                }
                try {
                    iVar.a();
                    objM59constructorimpl2 = n8.r.m59constructorimpl(n8.h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar4 = n8.r.Companion;
                    objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th));
                }
                k(null, n8.r.m62exceptionOrNullimpl(objM59constructorimpl2));
            } catch (Throwable th2) {
                if (c2VarG == null || c2VarG.B0()) {
                    kotlinx.coroutines.internal.k0.a(context, objC);
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                r.a aVar5 = n8.r.Companion;
                iVar.a();
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th4) {
                r.a aVar6 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th4));
            }
            k(th3, n8.r.m62exceptionOrNullimpl(objM59constructorimpl));
        }
    }
}
