package kotlinx.serialization.encoding;

import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes2.dex */
public interface Decoder {

    public static final class DefaultImpls {
        @ExperimentalSerializationApi
        public static <T> T decodeNullableSerializableValue(Decoder decoder, DeserializationStrategy<? extends T> deserializer) {
            r.e(deserializer, "deserializer");
            return (deserializer.getDescriptor().isNullable() || decoder.decodeNotNullMark()) ? (T) decoder.decodeSerializableValue(deserializer) : (T) decoder.decodeNull();
        }

        public static <T> T decodeSerializableValue(Decoder decoder, DeserializationStrategy<? extends T> deserializer) {
            r.e(deserializer, "deserializer");
            return deserializer.deserialize(decoder);
        }
    }

    CompositeDecoder beginStructure(SerialDescriptor serialDescriptor);

    boolean decodeBoolean();

    byte decodeByte();

    char decodeChar();

    double decodeDouble();

    int decodeEnum(SerialDescriptor serialDescriptor);

    float decodeFloat();

    Decoder decodeInline(SerialDescriptor serialDescriptor);

    int decodeInt();

    long decodeLong();

    @ExperimentalSerializationApi
    boolean decodeNotNullMark();

    @ExperimentalSerializationApi
    Void decodeNull();

    @ExperimentalSerializationApi
    <T> T decodeNullableSerializableValue(DeserializationStrategy<? extends T> deserializationStrategy);

    <T> T decodeSerializableValue(DeserializationStrategy<? extends T> deserializationStrategy);

    short decodeShort();

    String decodeString();

    SerializersModule getSerializersModule();
}
