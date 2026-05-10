package kotlinx.serialization.encoding;

import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes2.dex */
public interface Encoder {

    public static final class DefaultImpls {
        public static CompositeEncoder beginCollection(Encoder encoder, SerialDescriptor descriptor, int i10) {
            r.e(descriptor, "descriptor");
            return encoder.beginStructure(descriptor);
        }

        @ExperimentalSerializationApi
        public static void encodeNotNullMark(Encoder encoder) {
        }

        @ExperimentalSerializationApi
        public static <T> void encodeNullableSerializableValue(Encoder encoder, SerializationStrategy<? super T> serializer, T t10) {
            r.e(serializer, "serializer");
            if (serializer.getDescriptor().isNullable()) {
                encoder.encodeSerializableValue(serializer, t10);
            } else if (t10 == null) {
                encoder.encodeNull();
            } else {
                encoder.encodeNotNullMark();
                encoder.encodeSerializableValue(serializer, t10);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <T> void encodeSerializableValue(Encoder encoder, SerializationStrategy<? super T> serializer, T t10) {
            r.e(serializer, "serializer");
            serializer.serialize(encoder, t10);
        }
    }

    CompositeEncoder beginCollection(SerialDescriptor serialDescriptor, int i10);

    CompositeEncoder beginStructure(SerialDescriptor serialDescriptor);

    void encodeBoolean(boolean z10);

    void encodeByte(byte b10);

    void encodeChar(char c10);

    void encodeDouble(double d10);

    void encodeEnum(SerialDescriptor serialDescriptor, int i10);

    void encodeFloat(float f10);

    Encoder encodeInline(SerialDescriptor serialDescriptor);

    void encodeInt(int i10);

    void encodeLong(long j10);

    @ExperimentalSerializationApi
    void encodeNotNullMark();

    @ExperimentalSerializationApi
    void encodeNull();

    @ExperimentalSerializationApi
    <T> void encodeNullableSerializableValue(SerializationStrategy<? super T> serializationStrategy, T t10);

    <T> void encodeSerializableValue(SerializationStrategy<? super T> serializationStrategy, T t10);

    void encodeShort(short s10);

    void encodeString(String str);

    SerializersModule getSerializersModule();
}
