package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
public final class UuidSerializer implements KSerializer<e9.b> {
    public static final UuidSerializer INSTANCE = new UuidSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.uuid.Uuid", PrimitiveKind.STRING.INSTANCE);

    private UuidSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public e9.b deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        return e9.b.Companion.c(decoder.decodeString());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, e9.b value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        encoder.encodeString(value.toString());
    }
}
