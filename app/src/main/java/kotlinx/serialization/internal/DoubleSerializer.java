package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
public final class DoubleSerializer implements KSerializer<Double> {
    public static final DoubleSerializer INSTANCE = new DoubleSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.Double", PrimitiveKind.DOUBLE.INSTANCE);

    private DoubleSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, ((Number) obj).doubleValue());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Double deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        return Double.valueOf(decoder.decodeDouble());
    }

    public void serialize(Encoder encoder, double d10) {
        r.e(encoder, "encoder");
        encoder.encodeDouble(d10);
    }
}
