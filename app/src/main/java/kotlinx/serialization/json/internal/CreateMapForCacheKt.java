package kotlinx.serialization.json.internal;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class CreateMapForCacheKt {
    public static final <K, V> Map<K, V> createMapForCache(int i10) {
        return new ConcurrentHashMap(i10);
    }
}
