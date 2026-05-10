package kotlin.collections;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class m0 extends l0 {
    public static Map h() {
        b0 b0Var = b0.INSTANCE;
        kotlin.jvm.internal.r.c(b0Var, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return b0Var;
    }

    public static Object i(Map map, Object obj) {
        kotlin.jvm.internal.r.e(map, "<this>");
        return k0.a(map, obj);
    }

    public static HashMap j(n8.q... pairs) {
        kotlin.jvm.internal.r.e(pairs, "pairs");
        HashMap map = new HashMap(j0.e(pairs.length));
        n(map, pairs);
        return map;
    }

    public static Map k(n8.q... pairs) {
        kotlin.jvm.internal.r.e(pairs, "pairs");
        return pairs.length > 0 ? r(pairs, new LinkedHashMap(j0.e(pairs.length))) : j0.h();
    }

    public static final Map l(Map map) {
        kotlin.jvm.internal.r.e(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? map : l0.g(map) : j0.h();
    }

    public static final void m(Map map, Iterable pairs) {
        kotlin.jvm.internal.r.e(map, "<this>");
        kotlin.jvm.internal.r.e(pairs, "pairs");
        Iterator it = pairs.iterator();
        while (it.hasNext()) {
            n8.q qVar = (n8.q) it.next();
            map.put(qVar.component1(), qVar.component2());
        }
    }

    public static final void n(Map map, n8.q[] pairs) {
        kotlin.jvm.internal.r.e(map, "<this>");
        kotlin.jvm.internal.r.e(pairs, "pairs");
        for (n8.q qVar : pairs) {
            map.put(qVar.component1(), qVar.component2());
        }
    }

    public static Map o(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return l(p(iterable, new LinkedHashMap()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return j0.h();
        }
        if (size != 1) {
            return p(iterable, new LinkedHashMap(j0.e(collection.size())));
        }
        return j0.f((n8.q) (iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next()));
    }

    public static final Map p(Iterable iterable, Map destination) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        kotlin.jvm.internal.r.e(destination, "destination");
        m(destination, iterable);
        return destination;
    }

    public static Map q(Map map) {
        kotlin.jvm.internal.r.e(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? j0.s(map) : l0.g(map) : j0.h();
    }

    public static final Map r(n8.q[] qVarArr, Map destination) {
        kotlin.jvm.internal.r.e(qVarArr, "<this>");
        kotlin.jvm.internal.r.e(destination, "destination");
        n(destination, qVarArr);
        return destination;
    }

    public static Map s(Map map) {
        kotlin.jvm.internal.r.e(map, "<this>");
        return new LinkedHashMap(map);
    }
}
