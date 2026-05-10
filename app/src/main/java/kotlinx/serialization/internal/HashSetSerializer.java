package kotlinx.serialization.internal;

import java.util.HashSet;
import java.util.Set;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class HashSetSerializer<E> extends CollectionSerializer<E, Set<? extends E>, HashSet<E>> {
    private final SerialDescriptor descriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashSetSerializer(KSerializer<E> eSerializer) {
        super(eSerializer);
        r.e(eSerializer, "eSerializer");
        this.descriptor = new HashSetClassDesc(eSerializer.getDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void checkCapacity(HashSet<E> hashSet, int i10) {
        r.e(hashSet, "<this>");
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Set<E> toResult(HashSet<E> hashSet) {
        r.e(hashSet, "<this>");
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public HashSet<E> builder() {
        return new HashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int builderSize(HashSet<E> hashSet) {
        r.e(hashSet, "<this>");
        return hashSet.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.CollectionLikeSerializer
    public void insert(HashSet<E> hashSet, int i10, E e10) {
        r.e(hashSet, "<this>");
        hashSet.add(e10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public HashSet<E> toBuilder(Set<? extends E> set) {
        r.e(set, "<this>");
        HashSet<E> hashSet = set instanceof HashSet ? (HashSet) set : null;
        return hashSet == null ? new HashSet<>(set) : hashSet;
    }
}
