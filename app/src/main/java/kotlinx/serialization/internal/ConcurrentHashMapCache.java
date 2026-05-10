package kotlinx.serialization.internal;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes2.dex */
final class ConcurrentHashMapCache<T> implements SerializerCache<T> {
    private final ConcurrentHashMap<Class<?>, CacheEntry<T>> cache;
    private final w8.l compute;

    public ConcurrentHashMapCache(w8.l compute) {
        r.e(compute, "compute");
        this.compute = compute;
        this.cache = new ConcurrentHashMap<>();
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public KSerializer<T> get(c9.c key) {
        CacheEntry<T> cacheEntryPutIfAbsent;
        r.e(key, "key");
        ConcurrentHashMap<Class<?>, CacheEntry<T>> concurrentHashMap = this.cache;
        Class<?> clsA = v8.a.a(key);
        CacheEntry<T> cacheEntry = concurrentHashMap.get(clsA);
        if (cacheEntry == null && (cacheEntryPutIfAbsent = concurrentHashMap.putIfAbsent(clsA, (cacheEntry = new CacheEntry<>((KSerializer) this.compute.invoke(key))))) != null) {
            cacheEntry = cacheEntryPutIfAbsent;
        }
        return cacheEntry.serializer;
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public boolean isStored(c9.c key) {
        r.e(key, "key");
        return this.cache.containsKey(v8.a.a(key));
    }
}
