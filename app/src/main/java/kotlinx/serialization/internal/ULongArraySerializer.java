package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import n8.b0;
import n8.c0;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public final class ULongArraySerializer extends PrimitiveArraySerializer<b0, c0, ULongArrayBuilder> implements KSerializer<c0> {
    public static final ULongArraySerializer INSTANCE = new ULongArraySerializer();

    private ULongArraySerializer() {
        super(BuiltinSerializersKt.serializer(b0.f14087b));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m38collectionSizeQwZRm1k(((c0) obj).q());
    }

    /* JADX INFO: renamed from: collectionSize-QwZRm1k, reason: not valid java name */
    protected int m38collectionSizeQwZRm1k(long[] collectionSize) {
        r.e(collectionSize, "$this$collectionSize");
        return c0.k(collectionSize);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ c0 empty() {
        return c0.a(m39emptyY2RjT0g());
    }

    /* JADX INFO: renamed from: empty-Y2RjT0g, reason: not valid java name */
    protected long[] m39emptyY2RjT0g() {
        return c0.c(0);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m40toBuilderQwZRm1k(((c0) obj).q());
    }

    /* JADX INFO: renamed from: toBuilder-QwZRm1k, reason: not valid java name */
    protected ULongArrayBuilder m40toBuilderQwZRm1k(long[] toBuilder) {
        r.e(toBuilder, "$this$toBuilder");
        return new ULongArrayBuilder(toBuilder, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, c0 c0Var, int i10) {
        m41writeContent0q3Fkuo(compositeEncoder, c0Var.q(), i10);
    }

    /* JADX INFO: renamed from: writeContent-0q3Fkuo, reason: not valid java name */
    protected void m41writeContent0q3Fkuo(CompositeEncoder encoder, long[] content, int i10) {
        r.e(encoder, "encoder");
        r.e(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeInlineElement(getDescriptor(), i11).encodeLong(c0.i(content, i11));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(CompositeDecoder decoder, int i10, ULongArrayBuilder builder, boolean z10) {
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        builder.m36appendVKZWuLQ$kotlinx_serialization_core(b0.b(decoder.decodeInlineElement(getDescriptor(), i10).decodeLong()));
    }
}
