package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import n8.e0;
import n8.f0;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public final class UShortArraySerializer extends PrimitiveArraySerializer<e0, f0, UShortArrayBuilder> implements KSerializer<f0> {
    public static final UShortArraySerializer INSTANCE = new UShortArraySerializer();

    private UShortArraySerializer() {
        super(BuiltinSerializersKt.serializer(e0.f14096b));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m46collectionSizerL5Bavg(((f0) obj).q());
    }

    /* JADX INFO: renamed from: collectionSize-rL5Bavg, reason: not valid java name */
    protected int m46collectionSizerL5Bavg(short[] collectionSize) {
        r.e(collectionSize, "$this$collectionSize");
        return f0.k(collectionSize);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ f0 empty() {
        return f0.a(m47emptyamswpOA());
    }

    /* JADX INFO: renamed from: empty-amswpOA, reason: not valid java name */
    protected short[] m47emptyamswpOA() {
        return f0.c(0);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m48toBuilderrL5Bavg(((f0) obj).q());
    }

    /* JADX INFO: renamed from: toBuilder-rL5Bavg, reason: not valid java name */
    protected UShortArrayBuilder m48toBuilderrL5Bavg(short[] toBuilder) {
        r.e(toBuilder, "$this$toBuilder");
        return new UShortArrayBuilder(toBuilder, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, f0 f0Var, int i10) {
        m49writeContenteny0XGE(compositeEncoder, f0Var.q(), i10);
    }

    /* JADX INFO: renamed from: writeContent-eny0XGE, reason: not valid java name */
    protected void m49writeContenteny0XGE(CompositeEncoder encoder, short[] content, int i10) {
        r.e(encoder, "encoder");
        r.e(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeInlineElement(getDescriptor(), i11).encodeShort(f0.i(content, i11));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(CompositeDecoder decoder, int i10, UShortArrayBuilder builder, boolean z10) {
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        builder.m44appendxj2QHRw$kotlinx_serialization_core(e0.b(decoder.decodeInlineElement(getDescriptor(), i10).decodeShort()));
    }
}
