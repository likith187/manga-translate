package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.o;
import kotlinx.serialization.KSerializer;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes2.dex */
final class ParametrizedCacheEntry<T> {
    private final ConcurrentHashMap<List<KTypeWrapper>, r> serializers = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: computeIfAbsent-gIAlu-s, reason: not valid java name */
    public final Object m18computeIfAbsentgIAlus(List<? extends c9.j> types, w8.a producer) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(types, "types");
        kotlin.jvm.internal.r.e(producer, "producer");
        ArrayList arrayList = new ArrayList(o.r(types, 10));
        Iterator<T> it = types.iterator();
        while (it.hasNext()) {
            arrayList.add(new KTypeWrapper((c9.j) it.next()));
        }
        ConcurrentHashMap concurrentHashMap = this.serializers;
        Object objM58boximpl = concurrentHashMap.get(arrayList);
        if (objM58boximpl == null) {
            try {
                r.a aVar = r.Companion;
                objM59constructorimpl = r.m59constructorimpl((KSerializer) producer.mo8invoke());
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(s.a(th));
            }
            objM58boximpl = r.m58boximpl(objM59constructorimpl);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(arrayList, objM58boximpl);
            if (objPutIfAbsent != null) {
                objM58boximpl = objPutIfAbsent;
            }
        }
        kotlin.jvm.internal.r.d(objM58boximpl, "getOrPut(...)");
        return ((r) objM58boximpl).m68unboximpl();
    }
}
