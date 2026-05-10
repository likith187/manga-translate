package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import n8.h0;
import n8.q;
import n8.w;

/* JADX INFO: loaded from: classes2.dex */
public final class PairSerializer<K, V> extends KeyValueSerializer<K, V, q> {
    private final SerialDescriptor descriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PairSerializer(final KSerializer<K> keySerializer, final KSerializer<V> valueSerializer) {
        super(keySerializer, valueSerializer, null);
        r.e(keySerializer, "keySerializer");
        r.e(valueSerializer, "valueSerializer");
        this.descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("kotlin.Pair", new SerialDescriptor[0], new w8.l() { // from class: kotlinx.serialization.internal.g
            @Override // w8.l
            public final Object invoke(Object obj) {
                return PairSerializer.descriptor$lambda$0(keySerializer, valueSerializer, (ClassSerialDescriptorBuilder) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h0 descriptor$lambda$0(KSerializer kSerializer, KSerializer kSerializer2, ClassSerialDescriptorBuilder buildClassSerialDescriptor) {
        r.e(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
        ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "first", kSerializer.getDescriptor(), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "second", kSerializer2.getDescriptor(), null, false, 12, null);
        return h0.INSTANCE;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.KeyValueSerializer
    public K getKey(q qVar) {
        r.e(qVar, "<this>");
        return (K) qVar.getFirst();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.KeyValueSerializer
    public V getValue(q qVar) {
        r.e(qVar, "<this>");
        return (V) qVar.getSecond();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.KeyValueSerializer
    public q toResult(K k10, V v10) {
        return w.a(k10, v10);
    }
}
