package kotlinx.serialization.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class HashMapSerializer<K, V> extends MapLikeSerializer<K, V, Map<K, ? extends V>, HashMap<K, V>> {
    private final SerialDescriptor descriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashMapSerializer(KSerializer<K> kSerializer, KSerializer<V> vSerializer) {
        super(kSerializer, vSerializer, null);
        r.e(kSerializer, "kSerializer");
        r.e(vSerializer, "vSerializer");
        this.descriptor = new HashMapClassDesc(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void checkCapacity(HashMap<K, V> map, int i10) {
        r.e(map, "<this>");
    }

    @Override // kotlinx.serialization.internal.MapLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Map<K, V> toResult(HashMap<K, V> map) {
        r.e(map, "<this>");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public HashMap<K, V> builder() {
        return new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int builderSize(HashMap<K, V> map) {
        r.e(map, "<this>");
        return map.size() * 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Iterator<Map.Entry<K, V>> collectionIterator(Map<K, ? extends V> map) {
        r.e(map, "<this>");
        return map.entrySet().iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(Map<K, ? extends V> map) {
        r.e(map, "<this>");
        return map.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.MapLikeSerializer
    public void insertKeyValuePair(HashMap<K, V> map, int i10, K k10, V v10) {
        r.e(map, "<this>");
        map.put(k10, v10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public HashMap<K, V> toBuilder(Map<K, ? extends V> map) {
        r.e(map, "<this>");
        HashMap<K, V> map2 = map instanceof HashMap ? (HashMap) map : null;
        return map2 == null ? new HashMap<>(map) : map2;
    }
}
