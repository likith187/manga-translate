package kotlinx.coroutines;

import kotlin.coroutines.e;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class g {
    public static final f1 a(c0 c0Var, kotlin.coroutines.g gVar, e0 e0Var, w8.p pVar) {
        kotlin.coroutines.g gVarE = x.e(c0Var, gVar);
        v1 o1Var = e0Var.isLazy() ? new o1(gVarE, pVar) : new v1(gVarE, true);
        o1Var.A0(e0Var, o1Var, pVar);
        return o1Var;
    }

    public static /* synthetic */ f1 b(c0 c0Var, kotlin.coroutines.g gVar, e0 e0Var, w8.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = kotlin.coroutines.h.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            e0Var = e0.DEFAULT;
        }
        return f.a(c0Var, gVar, e0Var, pVar);
    }

    public static final Object c(kotlin.coroutines.g gVar, w8.p pVar, kotlin.coroutines.d dVar) throws Throwable {
        Object objB0;
        kotlin.coroutines.g context = dVar.getContext();
        kotlin.coroutines.g gVarD = x.d(context, gVar);
        j1.e(gVarD);
        if (gVarD == context) {
            kotlinx.coroutines.internal.c0 c0Var = new kotlinx.coroutines.internal.c0(gVarD, dVar);
            objB0 = f9.b.b(c0Var, c0Var, pVar);
        } else {
            e.b bVar = kotlin.coroutines.e.f13037d;
            if (kotlin.jvm.internal.r.a(gVarD.get(bVar), context.get(bVar))) {
                c2 c2Var = new c2(gVarD, dVar);
                kotlin.coroutines.g context2 = c2Var.getContext();
                Object objC = kotlinx.coroutines.internal.k0.c(context2, null);
                try {
                    Object objB = f9.b.b(c2Var, c2Var, pVar);
                    kotlinx.coroutines.internal.k0.a(context2, objC);
                    objB0 = objB;
                } catch (Throwable th) {
                    kotlinx.coroutines.internal.k0.a(context2, objC);
                    throw th;
                }
            } else {
                l0 l0Var = new l0(gVarD, dVar);
                f9.a.d(pVar, l0Var, l0Var, null, 4, null);
                objB0 = l0Var.B0();
            }
        }
        if (objB0 == kotlin.coroutines.intrinsics.b.f()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objB0;
    }
}
