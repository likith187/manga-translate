package kotlinx.serialization.internal;

import kotlin.jvm.internal.f0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import n8.e0;

/* JADX INFO: loaded from: classes2.dex */
public final class UShortSerializer implements KSerializer<e0> {
    public static final UShortSerializer INSTANCE = new UShortSerializer();
    private static final SerialDescriptor descriptor = InlineClassDescriptorKt.InlinePrimitiveDescriptor("kotlin.UShort", BuiltinSerializersKt.serializer(f0.INSTANCE));

    private UShortSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return e0.a(m50deserializeBwKQO78(decoder));
    }

    /* JADX INFO: renamed from: deserialize-BwKQO78, reason: not valid java name */
    public short m50deserializeBwKQO78(Decoder decoder) {
        r.e(decoder, "decoder");
        return e0.b(decoder.decodeInline(getDescriptor()).decodeShort());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m51serializei8woANY(encoder, ((e0) obj).f());
    }

    /* JADX INFO: renamed from: serialize-i8woANY, reason: not valid java name */
    public void m51serializei8woANY(Encoder encoder, short s10) {
        r.e(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeShort(s10);
    }
}
