package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import n8.x;

/* JADX INFO: loaded from: classes2.dex */
public final class UByteSerializer implements KSerializer<x> {
    public static final UByteSerializer INSTANCE = new UByteSerializer();
    private static final SerialDescriptor descriptor = InlineClassDescriptorKt.InlinePrimitiveDescriptor("kotlin.UByte", BuiltinSerializersKt.serializer(kotlin.jvm.internal.d.INSTANCE));

    private UByteSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return x.a(m26deserializeWa3L5BU(decoder));
    }

    /* JADX INFO: renamed from: deserialize-Wa3L5BU, reason: not valid java name */
    public byte m26deserializeWa3L5BU(Decoder decoder) {
        r.e(decoder, "decoder");
        return x.b(decoder.decodeInline(getDescriptor()).decodeByte());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m27serializeEK6454(encoder, ((x) obj).f());
    }

    /* JADX INFO: renamed from: serialize-EK-6454, reason: not valid java name */
    public void m27serializeEK6454(Encoder encoder, byte b10) {
        r.e(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeByte(b10);
    }
}
