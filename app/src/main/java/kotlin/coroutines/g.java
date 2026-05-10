package kotlin.coroutines;

import kotlin.coroutines.e;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public interface g {

    public static final class a {

        /* JADX INFO: renamed from: kotlin.coroutines.g$a$a */
        static final class C0165a extends s implements p {
            public static final C0165a INSTANCE = new C0165a();

            C0165a() {
                super(2);
            }

            @Override // w8.p
            public final g invoke(g acc, b element) {
                kotlin.coroutines.c cVar;
                r.e(acc, "acc");
                r.e(element, "element");
                g gVarMinusKey = acc.minusKey(element.getKey());
                h hVar = h.INSTANCE;
                if (gVarMinusKey == hVar) {
                    return element;
                }
                e.b bVar = e.f13037d;
                e eVar = (e) gVarMinusKey.get(bVar);
                if (eVar == null) {
                    cVar = new kotlin.coroutines.c(gVarMinusKey, element);
                } else {
                    g gVarMinusKey2 = gVarMinusKey.minusKey(bVar);
                    if (gVarMinusKey2 == hVar) {
                        return new kotlin.coroutines.c(element, eVar);
                    }
                    cVar = new kotlin.coroutines.c(new kotlin.coroutines.c(gVarMinusKey2, element), eVar);
                }
                return cVar;
            }
        }

        public static g a(g gVar, g context) {
            r.e(context, "context");
            return context == h.INSTANCE ? gVar : (g) context.fold(gVar, C0165a.INSTANCE);
        }
    }

    public interface b extends g {

        public static final class a {
            public static Object a(b bVar, Object obj, p operation) {
                r.e(operation, "operation");
                return operation.invoke(obj, bVar);
            }

            public static b b(b bVar, c key) {
                r.e(key, "key");
                if (!r.a(bVar.getKey(), key)) {
                    return null;
                }
                r.c(bVar, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                return bVar;
            }

            public static g c(b bVar, c key) {
                r.e(key, "key");
                return r.a(bVar.getKey(), key) ? h.INSTANCE : bVar;
            }

            public static g d(b bVar, g context) {
                r.e(context, "context");
                return a.a(bVar, context);
            }
        }

        @Override // kotlin.coroutines.g
        b get(c cVar);

        c getKey();
    }

    public interface c {
    }

    Object fold(Object obj, p pVar);

    b get(c cVar);

    g minusKey(c cVar);

    g plus(g gVar);
}
