package kotlinx.coroutines;

import n8.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w {
    public static final Object a(Object obj, kotlin.coroutines.d dVar) {
        if (!(obj instanceof t)) {
            return n8.r.m59constructorimpl(obj);
        }
        r.a aVar = n8.r.Companion;
        return n8.r.m59constructorimpl(n8.s.a(((t) obj).f13378a));
    }

    public static final Object b(Object obj, i iVar) {
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(obj);
        return thM62exceptionOrNullimpl == null ? obj : new t(thM62exceptionOrNullimpl, false, 2, null);
    }

    public static final Object c(Object obj, w8.l lVar) {
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(obj);
        return thM62exceptionOrNullimpl == null ? lVar != null ? new u(obj, lVar) : obj : new t(thM62exceptionOrNullimpl, false, 2, null);
    }

    public static /* synthetic */ Object d(Object obj, w8.l lVar, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            lVar = null;
        }
        return c(obj, lVar);
    }
}
