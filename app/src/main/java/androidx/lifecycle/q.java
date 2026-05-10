package androidx.lifecycle;

import kotlinx.coroutines.x1;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {
    public static final m a(l lVar) {
        n nVar;
        kotlin.jvm.internal.r.e(lVar, "<this>");
        do {
            n nVar2 = (n) lVar.c().b();
            if (nVar2 != null) {
                return nVar2;
            }
            nVar = new n(lVar, x1.b(null, 1, null).plus(kotlinx.coroutines.o0.c().F0()));
        } while (!lVar.c().a(null, nVar));
        nVar.b();
        return nVar;
    }
}
