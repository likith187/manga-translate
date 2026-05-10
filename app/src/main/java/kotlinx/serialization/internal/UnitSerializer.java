package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public final class UnitSerializer implements KSerializer<h0> {
    public static final UnitSerializer INSTANCE = new UnitSerializer();
    private final /* synthetic */ ObjectSerializer<h0> $$delegate_0 = new ObjectSerializer<>("kotlin.Unit", h0.INSTANCE);

    private UnitSerializer() {
    }

    /* JADX INFO: renamed from: deserialize, reason: collision with other method in class */
    public void m52deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        this.$$delegate_0.deserialize(decoder);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.$$delegate_0.getDescriptor();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, h0 value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        this.$$delegate_0.serialize(encoder, value);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        m52deserialize(decoder);
        return h0.INSTANCE;
    }
}
