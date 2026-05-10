package kotlinx.serialization.json;

import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import n8.i;

/* JADX INFO: loaded from: classes2.dex */
public abstract class JsonContentPolymorphicSerializer<T> implements KSerializer<T> {
    private final c9.c baseClass;
    private final SerialDescriptor descriptor;

    public JsonContentPolymorphicSerializer(c9.c baseClass) {
        r.e(baseClass, "baseClass");
        this.baseClass = baseClass;
        this.descriptor = SerialDescriptorsKt.buildSerialDescriptor$default("JsonContentPolymorphicSerializer<" + baseClass.c() + '>', PolymorphicKind.SEALED.INSTANCE, new SerialDescriptor[0], null, 8, null);
    }

    private final Void throwSubtypeNotRegistered(c9.c cVar, c9.c cVar2) {
        String strC = cVar.c();
        if (strC == null) {
            strC = String.valueOf(cVar);
        }
        throw new SerializationException("Class '" + strC + "' is not registered for polymorphic serialization " + ("in the scope of '" + cVar2.c() + '\'') + ".\nMark the base class as 'sealed' or register the serializer explicitly.");
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final T deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        JsonDecoder jsonDecoderAsJsonDecoder = JsonElementSerializersKt.asJsonDecoder(decoder);
        JsonElement jsonElementDecodeJsonElement = jsonDecoderAsJsonDecoder.decodeJsonElement();
        DeserializationStrategy<T> deserializationStrategySelectDeserializer = selectDeserializer(jsonElementDecodeJsonElement);
        r.c(deserializationStrategySelectDeserializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.json.JsonContentPolymorphicSerializer>");
        return (T) jsonDecoderAsJsonDecoder.getJson().decodeFromJsonElement((KSerializer) deserializationStrategySelectDeserializer, jsonElementDecodeJsonElement);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    protected abstract DeserializationStrategy<T> selectDeserializer(JsonElement jsonElement);

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, T value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        SerializationStrategy<T> polymorphic = encoder.getSerializersModule().getPolymorphic(this.baseClass, value);
        if (polymorphic == null && (polymorphic = SerializersKt.serializerOrNull(d0.b(value.getClass()))) == null) {
            throwSubtypeNotRegistered(d0.b(value.getClass()), this.baseClass);
            throw new i();
        }
        ((KSerializer) polymorphic).serialize(encoder, value);
    }
}
