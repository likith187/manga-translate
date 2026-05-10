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
final class ClassValueParametrizedCache<T> implements ParametrizedSerializerCache<T> {
    private final ClassValueReferences<ParametrizedCacheEntry<T>> classValue;
    private final p compute;

    public ClassValueParametrizedCache(p compute) {
        r.e(compute, "compute");
        this.compute = compute;
        this.classValue = new ClassValueReferences<>();
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    /* JADX INFO: renamed from: get-gIAlu-s, reason: not valid java name */
    public Object mo15getgIAlus(c9.c key, List<? extends c9.j> types) {
        Object objM59constructorimpl;
        r.e(key, "key");
        r.e(types, "types");
        Object obj = this.classValue.get(v8.a.a(key));
        r.d(obj, "get(...)");
        MutableSoftReference mutableSoftReference = (MutableSoftReference) obj;
        T t10 = mutableSoftReference.reference.get();
        if (t10 == null) {
            t10 = (T) mutableSoftReference.getOrSetWithLock(new w8.a() { // from class: kotlinx.serialization.internal.ClassValueParametrizedCache$get-gIAlu-s$$inlined$getOrSet$1
                /* JADX WARN: Type inference failed for: r0v1, types: [T, kotlinx.serialization.internal.ParametrizedCacheEntry] */
                @Override // w8.a
                /* JADX INFO: renamed from: invoke */
                public final T mo8invoke() {
                    return new ParametrizedCacheEntry();
                }
            });
        }
        ParametrizedCacheEntry parametrizedCacheEntry = t10;
        ArrayList arrayList = new ArrayList(o.r(types, 10));
        Iterator<T> it = types.iterator();
        while (it.hasNext()) {
            arrayList.add(new KTypeWrapper((c9.j) it.next()));
        }
        ConcurrentHashMap concurrentHashMap = parametrizedCacheEntry.serializers;
        Object obj2 = concurrentHashMap.get(arrayList);
        if (obj2 == null) {
            try {
                r.a aVar = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl((KSerializer) this.compute.invoke(key, types));
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            n8.r rVarM58boximpl = n8.r.m58boximpl(objM59constructorimpl);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(arrayList, rVarM58boximpl);
            obj2 = objPutIfAbsent == null ? rVarM58boximpl : objPutIfAbsent;
        }
        kotlin.jvm.internal.r.d(obj2, "getOrPut(...)");
        return ((n8.r) obj2).m68unboximpl();
    }
}
