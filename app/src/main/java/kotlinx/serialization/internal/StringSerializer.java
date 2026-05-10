package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
public final class StringSerializer implements KSerializer<String> {
    public static final StringSerializer INSTANCE = new StringSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.String", PrimitiveKind.STRING.INSTANCE);

    private StringSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public String deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        return decoder.decodeString();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, String value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        encoder.encodeString(value);
    }
}
