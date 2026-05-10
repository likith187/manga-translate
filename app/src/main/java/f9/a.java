package f9;

import kotlin.coroutines.d;
import kotlinx.coroutines.internal.k;
import n8.h0;
import n8.r;
import n8.s;
import w8.l;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    private static final void a(d dVar, Throwable th) throws Throwable {
        r.a aVar = r.Companion;
        dVar.resumeWith(r.m59constructorimpl(s.a(th)));
        throw th;
    }

    public static final void b(d dVar, d dVar2) throws Throwable {
        try {
            d dVarC = kotlin.coroutines.intrinsics.b.c(dVar);
            r.a aVar = r.Companion;
            k.c(dVarC, r.m59constructorimpl(h0.INSTANCE), null, 2, null);
        } catch (Throwable th) {
            a(dVar2, th);
        }
    }

    public static final void c(p pVar, Object obj, d dVar, l lVar) throws Throwable {
        try {
            d dVarC = kotlin.coroutines.intrinsics.b.c(kotlin.coroutines.intrinsics.b.a(pVar, obj, dVar));
            r.a aVar = r.Companion;
            k.b(dVarC, r.m59constructorimpl(h0.INSTANCE), lVar);
        } catch (Throwable th) {
            a(dVar, th);
        }
    }

    public static /* synthetic */ void d(p pVar, Object obj, d dVar, l lVar, int i10, Object obj2) throws Throwable {
        if ((i10 & 4) != 0) {
            lVar = null;
        }
        c(pVar, obj, dVar, lVar);
    }
}
