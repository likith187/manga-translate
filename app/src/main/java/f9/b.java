package f9;

import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.i0;
import kotlinx.coroutines.internal.c0;
import kotlinx.coroutines.internal.k0;
import kotlinx.coroutines.n1;
import kotlinx.coroutines.t;
import n8.r;
import n8.s;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static final void a(p pVar, Object obj, d dVar) {
        d dVarA = h.a(dVar);
        try {
            g context = dVar.getContext();
            Object objC = k0.c(context, null);
            try {
                Object objD = !(pVar instanceof kotlin.coroutines.jvm.internal.a) ? kotlin.coroutines.intrinsics.b.d(pVar, obj, dVarA) : ((p) i0.d(pVar, 2)).invoke(obj, dVarA);
                k0.a(context, objC);
                if (objD != kotlin.coroutines.intrinsics.b.f()) {
                    dVarA.resumeWith(r.m59constructorimpl(objD));
                }
            } catch (Throwable th) {
                k0.a(context, objC);
                throw th;
            }
        } catch (Throwable th2) {
            r.a aVar = r.Companion;
            dVarA.resumeWith(r.m59constructorimpl(s.a(th2)));
        }
    }

    public static final Object b(c0 c0Var, Object obj, p pVar) {
        Object tVar;
        Object objV;
        try {
            tVar = !(pVar instanceof kotlin.coroutines.jvm.internal.a) ? kotlin.coroutines.intrinsics.b.d(pVar, obj, c0Var) : ((p) i0.d(pVar, 2)).invoke(obj, c0Var);
        } catch (Throwable th) {
            tVar = new t(th, false, 2, null);
        }
        if (tVar != kotlin.coroutines.intrinsics.b.f() && (objV = c0Var.V(tVar)) != n1.f13335b) {
            if (objV instanceof t) {
                throw ((t) objV).f13378a;
            }
            return n1.h(objV);
        }
        return kotlin.coroutines.intrinsics.b.f();
    }
}
