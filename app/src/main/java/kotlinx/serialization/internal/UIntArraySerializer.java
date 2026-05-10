package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import n8.a0;
import n8.z;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public final class UIntArraySerializer extends PrimitiveArraySerializer<z, a0, UIntArrayBuilder> implements KSerializer<a0> {
    public static final UIntArraySerializer INSTANCE = new UIntArraySerializer();

    private UIntArraySerializer() {
        super(BuiltinSerializersKt.serializer(z.f14107b));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m30collectionSizeajY9A(((a0) obj).q());
    }

    /* JADX INFO: renamed from: collectionSize--ajY-9A, reason: not valid java name */
    protected int m30collectionSizeajY9A(int[] collectionSize) {
        r.e(collectionSize, "$this$collectionSize");
        return a0.k(collectionSize);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ a0 empty() {
        return a0.a(m31emptyhP7Qyg());
    }

    /* JADX INFO: renamed from: empty--hP7Qyg, reason: not valid java name */
    protected int[] m31emptyhP7Qyg() {
        return a0.c(0);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m32toBuilderajY9A(((a0) obj).q());
    }

    /* JADX INFO: renamed from: toBuilder--ajY-9A, reason: not valid java name */
    protected UIntArrayBuilder m32toBuilderajY9A(int[] toBuilder) {
        r.e(toBuilder, "$this$toBuilder");
        return new UIntArrayBuilder(toBuilder, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, a0 a0Var, int i10) {
        m33writeContentCPlH8fI(compositeEncoder, a0Var.q(), i10);
    }

    /* JADX INFO: renamed from: writeContent-CPlH8fI, reason: not valid java name */
    protected void m33writeContentCPlH8fI(CompositeEncoder encoder, int[] content, int i10) {
        r.e(encoder, "encoder");
        r.e(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeInlineElement(getDescriptor(), i11).encodeInt(a0.i(content, i11));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(CompositeDecoder decoder, int i10, UIntArrayBuilder builder, boolean z10) {
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        builder.m28appendWZ4Q5Ns$kotlinx_serialization_core(z.b(decoder.decodeInlineElement(getDescriptor(), i10).decodeInt()));
    }
}
