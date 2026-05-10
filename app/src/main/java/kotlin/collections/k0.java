package kotlin.collections;

import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
abstract class k0 {
    public static final Object a(Map map, Object obj) {
        kotlin.jvm.internal.r.e(map, "<this>");
        if (map instanceof i0) {
            return ((i0) map).b(obj);
        }
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }
}
