package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
public final class DurationSerializer implements KSerializer<d9.a> {
    public static final DurationSerializer INSTANCE = new DurationSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.time.Duration", PrimitiveKind.STRING.INSTANCE);

    private DurationSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return d9.a.e(m16deserialize5sfh64U(decoder));
    }

    /* JADX INFO: renamed from: deserialize-5sfh64U, reason: not valid java name */
    public long m16deserialize5sfh64U(Decoder decoder) {
        r.e(decoder, "decoder");
        return d9.a.f11667b.c(decoder.decodeString());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m17serializeHG0u8IE(encoder, ((d9.a) obj).F());
    }

    /* JADX INFO: renamed from: serialize-HG0u8IE, reason: not valid java name */
    public void m17serializeHG0u8IE(Encoder encoder, long j10) {
        r.e(encoder, "encoder");
        encoder.encodeString(d9.a.B(j10));
    }
}
