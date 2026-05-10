package kotlinx.coroutines;

import n8.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g0 {
    public static final String a(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String b(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String c(kotlin.coroutines.d dVar) {
        Object objM59constructorimpl;
        if (dVar instanceof kotlinx.coroutines.internal.j) {
            return dVar.toString();
        }
        try {
            r.a aVar = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(dVar + '@' + b(dVar));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            objM59constructorimpl = dVar.getClass().getName() + '@' + b(dVar);
        }
        return (String) objM59constructorimpl;
    }
}
