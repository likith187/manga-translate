package kotlinx.serialization.internal;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkedHashSetSerializer<E> extends CollectionSerializer<E, Set<? extends E>, LinkedHashSet<E>> {
    private final SerialDescriptor descriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkedHashSetSerializer(KSerializer<E> eSerializer) {
        super(eSerializer);
        r.e(eSerializer, "eSerializer");
        this.descriptor = new LinkedHashSetClassDesc(eSerializer.getDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void checkCapacity(LinkedHashSet<E> linkedHashSet, int i10) {
        r.e(linkedHashSet, "<this>");
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Set<E> toResult(LinkedHashSet<E> linkedHashSet) {
        r.e(linkedHashSet, "<this>");
        return linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public LinkedHashSet<E> builder() {
        return new LinkedHashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int builderSize(LinkedHashSet<E> linkedHashSet) {
        r.e(linkedHashSet, "<this>");
        return linkedHashSet.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.CollectionLikeSerializer
    public void insert(LinkedHashSet<E> linkedHashSet, int i10, E e10) {
        r.e(linkedHashSet, "<this>");
        linkedHashSet.add(e10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public LinkedHashSet<E> toBuilder(Set<? extends E> set) {
        r.e(set, "<this>");
        LinkedHashSet<E> linkedHashSet = set instanceof LinkedHashSet ? (LinkedHashSet) set : null;
        return linkedHashSet == null ? new LinkedHashSet<>(set) : linkedHashSet;
    }
}
