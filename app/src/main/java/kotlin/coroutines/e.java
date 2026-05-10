package kotlin.coroutines;

import kotlin.coroutines.g;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public interface e extends g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f13037d = b.f13038a;

    public static final class a {
        public static g.b a(e eVar, g.c key) {
            g.b bVarB;
            r.e(key, "key");
            if (!(key instanceof kotlin.coroutines.b)) {
                if (e.f13037d != key) {
                    return null;
                }
                r.c(eVar, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
                return eVar;
            }
            kotlin.coroutines.b bVar = (kotlin.coroutines.b) key;
            if (!bVar.a(eVar.getKey()) || (bVarB = bVar.b(eVar)) == null) {
                return null;
            }
            return bVarB;
        }

        public static g b(e eVar, g.c key) {
            r.e(key, "key");
            if (!(key instanceof kotlin.coroutines.b)) {
                return e.f13037d == key ? h.INSTANCE : eVar;
            }
            kotlin.coroutines.b bVar = (kotlin.coroutines.b) key;
            return (!bVar.a(eVar.getKey()) || bVar.b(eVar) == null) ? eVar : h.INSTANCE;
        }
    }

    public static final class b implements g.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ b f13038a = new b();

        private b() {
        }
    }

    void k(d dVar);

    d v(d dVar);
}
