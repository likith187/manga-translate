package x9;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class j {

    /* JADX INFO: renamed from: d */
    private static final List f16462d = new ArrayList();

    /* JADX INFO: renamed from: a */
    Object f16463a;

    /* JADX INFO: renamed from: b */
    q f16464b;

    /* JADX INFO: renamed from: c */
    j f16465c;

    private j(Object obj, q qVar) {
        this.f16463a = obj;
        this.f16464b = qVar;
    }

    static j a(q qVar, Object obj) {
        List list = f16462d;
        synchronized (list) {
            try {
                int size = list.size();
                if (size <= 0) {
                    return new j(obj, qVar);
                }
                j jVar = (j) list.remove(size - 1);
                jVar.f16463a = obj;
                jVar.f16464b = qVar;
                jVar.f16465c = null;
                return jVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static void b(j jVar) {
        jVar.f16463a = null;
        jVar.f16464b = null;
        jVar.f16465c = null;
        List list = f16462d;
        synchronized (list) {
            try {
                if (list.size() < 10000) {
                    list.add(jVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
