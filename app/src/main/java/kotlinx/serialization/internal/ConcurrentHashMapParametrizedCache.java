package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import n8.r;
import n8.s;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
final class ConcurrentHashMapParametrizedCache<T> implements ParametrizedSerializerCache<T> {
    private final ConcurrentHashMap<Class<?>, ParametrizedCacheEntry<T>> cache;
    private final p compute;

    public ConcurrentHashMapParametrizedCache(p compute) {
        r.e(compute, "compute");
        this.compute = compute;
        this.cache = new ConcurrentHashMap<>();
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    /* JADX INFO: renamed from: get-gIAlu-s */
    public Object mo15getgIAlus(c9.c key, List<? extends c9.j> types) {
        Object objM59constructorimpl;
        ParametrizedCacheEntry<T> parametrizedCacheEntryPutIfAbsent;
        r.e(key, "key");
        r.e(types, "types");
        ConcurrentHashMap<Class<?>, ParametrizedCacheEntry<T>> concurrentHashMap = this.cache;
        Class<?> clsA = v8.a.a(key);
        ParametrizedCacheEntry<T> parametrizedCacheEntry = concurrentHashMap.get(clsA);
        if (parametrizedCacheEntry == null && (parametrizedCacheEntryPutIfAbsent = concurrentHashMap.putIfAbsent(clsA, (parametrizedCacheEntry = new ParametrizedCacheEntry<>()))) != null) {
            parametrizedCacheEntry = parametrizedCacheEntryPutIfAbsent;
        }
        ParametrizedCacheEntry<T> parametrizedCacheEntry2 = parametrizedCacheEntry;
        ArrayList arrayList = new ArrayList(o.r(types, 10));
        Iterator<T> it = types.iterator();
        while (it.hasNext()) {
            arrayList.add(new KTypeWrapper((c9.j) it.next()));
        }
        ConcurrentHashMap concurrentHashMap2 = ((ParametrizedCacheEntry) parametrizedCacheEntry2).serializers;
        Object obj = concurrentHashMap2.get(arrayList);
        if (obj == null) {
            try {
                r.a aVar = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl((KSerializer) this.compute.invoke(key, types));
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            n8.r rVarM58boximpl = n8.r.m58boximpl(objM59constructorimpl);
            Object objPutIfAbsent = concurrentHashMap2.putIfAbsent(arrayList, rVarM58boximpl);
            obj = objPutIfAbsent == null ? rVarM58boximpl : objPutIfAbsent;
        }
        kotlin.jvm.internal.r.d(obj, "getOrPut(...)");
        return ((n8.r) obj).m68unboximpl();
    }
}
