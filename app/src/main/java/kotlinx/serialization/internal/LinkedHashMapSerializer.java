package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkedHashMapSerializer<K, V> extends MapLikeSerializer<K, V, Map<K, ? extends V>, LinkedHashMap<K, V>> {
    private final SerialDescriptor descriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkedHashMapSerializer(KSerializer<K> kSerializer, KSerializer<V> vSerializer) {
        super(kSerializer, vSerializer, null);
        r.e(kSerializer, "kSerializer");
        r.e(vSerializer, "vSerializer");
        this.descriptor = new LinkedHashMapClassDesc(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void checkCapacity(LinkedHashMap<K, V> linkedHashMap, int i10) {
        r.e(linkedHashMap, "<this>");
    }

    @Override // kotlinx.serialization.internal.MapLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Map<K, V> toResult(LinkedHashMap<K, V> linkedHashMap) {
        r.e(linkedHashMap, "<this>");
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public LinkedHashMap<K, V> builder() {
        return new LinkedHashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int builderSize(LinkedHashMap<K, V> linkedHashMap) {
        r.e(linkedHashMap, "<this>");
        return linkedHashMap.size() * 2;
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
    public void insertKeyValuePair(LinkedHashMap<K, V> linkedHashMap, int i10, K k10, V v10) {
        r.e(linkedHashMap, "<this>");
        linkedHashMap.put(k10, v10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public LinkedHashMap<K, V> toBuilder(Map<K, ? extends V> map) {
        r.e(map, "<this>");
        LinkedHashMap<K, V> linkedHashMap = map instanceof LinkedHashMap ? (LinkedHashMap) map : null;
        return linkedHashMap == null ? new LinkedHashMap<>(map) : linkedHashMap;
    }
}
