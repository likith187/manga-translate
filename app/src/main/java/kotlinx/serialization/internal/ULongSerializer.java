package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlin.jvm.internal.t;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import n8.b0;

/* JADX INFO: loaded from: classes2.dex */
public final class ULongSerializer implements KSerializer<b0> {
    public static final ULongSerializer INSTANCE = new ULongSerializer();
    private static final SerialDescriptor descriptor = InlineClassDescriptorKt.InlinePrimitiveDescriptor("kotlin.ULong", BuiltinSerializersKt.serializer(t.INSTANCE));

    private ULongSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return b0.a(m42deserializeI7RO_PI(decoder));
    }

    /* JADX INFO: renamed from: deserialize-I7RO_PI, reason: not valid java name */
    public long m42deserializeI7RO_PI(Decoder decoder) {
        r.e(decoder, "decoder");
        return b0.b(decoder.decodeInline(getDescriptor()).decodeLong());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m43serialize2TYgG_w(encoder, ((b0) obj).f());
    }

    /* JADX INFO: renamed from: serialize-2TYgG_w, reason: not valid java name */
    public void m43serialize2TYgG_w(Encoder encoder, long j10) {
        r.e(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeLong(j10);
    }
}
