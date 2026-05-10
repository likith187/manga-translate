package kotlin.collections;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l0 extends k0 {
    public static Map b(Map builder) {
        kotlin.jvm.internal.r.e(builder, "builder");
        return ((o8.c) builder).build();
    }

    public static Map c() {
        return new o8.c();
    }

    public static Map d(int i10) {
        return new o8.c(i10);
    }

    public static int e(int i10) {
        if (i10 < 0) {
            return i10;
        }
        if (i10 < 3) {
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map f(n8.q pair) {
        kotlin.jvm.internal.r.e(pair, "pair");
        Map mapSingletonMap = Collections.singletonMap(pair.getFirst(), pair.getSecond());
        kotlin.jvm.internal.r.d(mapSingletonMap, "singletonMap(...)");
        return mapSingletonMap;
    }

    public static final Map g(Map map) {
        kotlin.jvm.internal.r.e(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        kotlin.jvm.internal.r.d(mapSingletonMap, "with(...)");
        return mapSingletonMap;
    }
}
