package kotlinx.serialization.internal;

import kotlin.jvm.internal.q;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import n8.z;

/* JADX INFO: loaded from: classes2.dex */
public final class UIntSerializer implements KSerializer<z> {
    public static final UIntSerializer INSTANCE = new UIntSerializer();
    private static final SerialDescriptor descriptor = InlineClassDescriptorKt.InlinePrimitiveDescriptor("kotlin.UInt", BuiltinSerializersKt.serializer(q.INSTANCE));

    private UIntSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return z.a(m34deserializeOGnWXxg(decoder));
    }

    /* JADX INFO: renamed from: deserialize-OGnWXxg, reason: not valid java name */
    public int m34deserializeOGnWXxg(Decoder decoder) {
        r.e(decoder, "decoder");
        return z.b(decoder.decodeInline(getDescriptor()).decodeInt());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m35serializeQn1smSk(encoder, ((z) obj).f());
    }

    /* JADX INFO: renamed from: serialize-Qn1smSk, reason: not valid java name */
    public void m35serializeQn1smSk(Encoder encoder, int i10) {
        r.e(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeInt(i10);
    }
}
