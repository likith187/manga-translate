package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import n8.x;
import n8.y;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public final class UByteArraySerializer extends PrimitiveArraySerializer<x, y, UByteArrayBuilder> implements KSerializer<y> {
    public static final UByteArraySerializer INSTANCE = new UByteArraySerializer();

    private UByteArraySerializer() {
        super(BuiltinSerializersKt.serializer(x.f14102b));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m22collectionSizeGBYM_sE(((y) obj).q());
    }

    /* JADX INFO: renamed from: collectionSize-GBYM_sE, reason: not valid java name */
    protected int m22collectionSizeGBYM_sE(byte[] collectionSize) {
        r.e(collectionSize, "$this$collectionSize");
        return y.k(collectionSize);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ y empty() {
        return y.a(m23emptyTcUX1vc());
    }

    /* JADX INFO: renamed from: empty-TcUX1vc, reason: not valid java name */
    protected byte[] m23emptyTcUX1vc() {
        return y.c(0);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m24toBuilderGBYM_sE(((y) obj).q());
    }

    /* JADX INFO: renamed from: toBuilder-GBYM_sE, reason: not valid java name */
    protected UByteArrayBuilder m24toBuilderGBYM_sE(byte[] toBuilder) {
        r.e(toBuilder, "$this$toBuilder");
        return new UByteArrayBuilder(toBuilder, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, y yVar, int i10) {
        m25writeContentCoi6ktg(compositeEncoder, yVar.q(), i10);
    }

    /* JADX INFO: renamed from: writeContent-Coi6ktg, reason: not valid java name */
    protected void m25writeContentCoi6ktg(CompositeEncoder encoder, byte[] content, int i10) {
        r.e(encoder, "encoder");
        r.e(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeInlineElement(getDescriptor(), i11).encodeByte(y.i(content, i11));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(CompositeDecoder decoder, int i10, UByteArrayBuilder builder, boolean z10) {
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        builder.m20append7apg3OU$kotlinx_serialization_core(x.b(decoder.decodeInlineElement(getDescriptor(), i10).decodeByte()));
    }
}
