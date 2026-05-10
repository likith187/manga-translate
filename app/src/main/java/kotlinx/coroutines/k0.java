package kotlinx.coroutines;

import kotlin.coroutines.g;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k0 {
    public static final Object a(long j10, kotlin.coroutines.d dVar) {
        if (j10 <= 0) {
            return n8.h0.INSTANCE;
        }
        j jVar = new j(kotlin.coroutines.intrinsics.b.c(dVar), 1);
        jVar.D();
        if (j10 < Long.MAX_VALUE) {
            b(jVar.getContext()).x(j10, jVar);
        }
        Object objX = jVar.x();
        if (objX == kotlin.coroutines.intrinsics.b.f()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objX == kotlin.coroutines.intrinsics.b.f() ? objX : n8.h0.INSTANCE;
    }

    public static final j0 b(kotlin.coroutines.g gVar) {
        g.b bVar = gVar.get(kotlin.coroutines.e.f13037d);
        j0 j0Var = bVar instanceof j0 ? (j0) bVar : null;
        return j0Var == null ? i0.a() : j0Var;
    }
}
