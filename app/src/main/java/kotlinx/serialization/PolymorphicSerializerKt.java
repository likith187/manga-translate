package kotlinx.serialization;

import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.AbstractPolymorphicSerializerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class PolymorphicSerializerKt {
    @InternalSerializationApi
    public static final <T> DeserializationStrategy<T> findPolymorphicSerializer(AbstractPolymorphicSerializer<T> abstractPolymorphicSerializer, CompositeDecoder decoder, String str) {
        r.e(abstractPolymorphicSerializer, "<this>");
        r.e(decoder, "decoder");
        DeserializationStrategy<T> deserializationStrategyFindPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(decoder, str);
        if (deserializationStrategyFindPolymorphicSerializerOrNull != null) {
            return deserializationStrategyFindPolymorphicSerializerOrNull;
        }
        AbstractPolymorphicSerializerKt.throwSubtypeNotRegistered(str, abstractPolymorphicSerializer.getBaseClass());
        throw new n8.i();
    }

    @InternalSerializationApi
    public static final <T> SerializationStrategy<T> findPolymorphicSerializer(AbstractPolymorphicSerializer<T> abstractPolymorphicSerializer, Encoder encoder, T value) {
        r.e(abstractPolymorphicSerializer, "<this>");
        r.e(encoder, "encoder");
        r.e(value, "value");
        SerializationStrategy<T> serializationStrategyFindPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(encoder, value);
        if (serializationStrategyFindPolymorphicSerializerOrNull != null) {
            return serializationStrategyFindPolymorphicSerializerOrNull;
        }
        AbstractPolymorphicSerializerKt.throwSubtypeNotRegistered(d0.b(value.getClass()), abstractPolymorphicSerializer.getBaseClass());
        throw new n8.i();
    }
}
