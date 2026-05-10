package kotlinx.coroutines.internal;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlinx.coroutines.p1;

/* JADX INFO: loaded from: classes2.dex */
public final class v {
    public static final v INSTANCE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p1 f13310a;

    static {
        v vVar = new v();
        INSTANCE = vVar;
        h0.f("kotlinx.coroutines.fast.service.loader", true);
        f13310a = vVar.a();
    }

    private v() {
    }

    private final p1 a() {
        Object next;
        p1 p1VarE;
        try {
            List listQ = kotlin.sequences.i.q(kotlin.sequences.i.c(ServiceLoader.load(u.class, u.class.getClassLoader()).iterator()));
            Iterator it = listQ.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int iC = ((u) next).c();
                    do {
                        Object next2 = it.next();
                        int iC2 = ((u) next2).c();
                        if (iC < iC2) {
                            next = next2;
                            iC = iC2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            u uVar = (u) next;
            if (uVar != null && (p1VarE = w.e(uVar, listQ)) != null) {
                return p1VarE;
            }
            w.b(null, null, 3, null);
            return null;
        } catch (Throwable th) {
            w.b(th, null, 2, null);
            return null;
        }
    }
}
