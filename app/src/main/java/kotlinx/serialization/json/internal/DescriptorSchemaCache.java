package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class DescriptorSchemaCache {
    private final Map<SerialDescriptor, Map<Key<Object>, Object>> map = CreateMapForCacheKt.createMapForCache(16);

    public static final class Key<T> {
    }

    public final <T> T get(SerialDescriptor descriptor, Key<T> key) {
        r.e(descriptor, "descriptor");
        r.e(key, "key");
        Map<Key<Object>, Object> map = this.map.get(descriptor);
        Object obj = map != null ? map.get(key) : null;
        if (obj == null) {
            return null;
        }
        return (T) obj;
    }

    public final <T> T getOrPut(SerialDescriptor descriptor, Key<T> key, w8.a defaultValue) {
        r.e(descriptor, "descriptor");
        r.e(key, "key");
        r.e(defaultValue, "defaultValue");
        T t10 = (T) get(descriptor, key);
        if (t10 != null) {
            return t10;
        }
        T t11 = (T) defaultValue.mo8invoke();
        set(descriptor, key, t11);
        return t11;
    }

    public final <T> void set(SerialDescriptor descriptor, Key<T> key, T value) {
        r.e(descriptor, "descriptor");
        r.e(key, "key");
        r.e(value, "value");
        Map<SerialDescriptor, Map<Key<Object>, Object>> map = this.map;
        Map<Key<Object>, Object> mapCreateMapForCache = map.get(descriptor);
        if (mapCreateMapForCache == null) {
            mapCreateMapForCache = CreateMapForCacheKt.createMapForCache(2);
            map.put(descriptor, mapCreateMapForCache);
        }
        mapCreateMapForCache.put(key, value);
    }
}
