package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
public final class BooleanSerializer implements KSerializer<Boolean> {
    public static final BooleanSerializer INSTANCE = new BooleanSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.Boolean", PrimitiveKind.BOOLEAN.INSTANCE);

    private BooleanSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, ((Boolean) obj).booleanValue());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Boolean deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        return Boolean.valueOf(decoder.decodeBoolean());
    }

    public void serialize(Encoder encoder, boolean z10) {
        r.e(encoder, "encoder");
        encoder.encodeBoolean(z10);
    }
}
