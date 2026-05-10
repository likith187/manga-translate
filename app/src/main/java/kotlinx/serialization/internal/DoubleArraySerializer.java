package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* JADX INFO: loaded from: classes2.dex */
public final class DoubleArraySerializer extends PrimitiveArraySerializer<Double, double[], DoubleArrayBuilder> implements KSerializer<double[]> {
    public static final DoubleArraySerializer INSTANCE = new DoubleArraySerializer();

    private DoubleArraySerializer() {
        super(BuiltinSerializersKt.serializer(kotlin.jvm.internal.j.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(double[] dArr) {
        r.e(dArr, "<this>");
        return dArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public double[] empty() {
        return new double[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public DoubleArrayBuilder toBuilder(double[] dArr) {
        r.e(dArr, "<this>");
        return new DoubleArrayBuilder(dArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void writeContent(CompositeEncoder encoder, double[] content, int i10) {
        r.e(encoder, "encoder");
        r.e(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeDoubleElement(getDescriptor(), i11, content[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(CompositeDecoder decoder, int i10, DoubleArrayBuilder builder, boolean z10) {
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        builder.append$kotlinx_serialization_core(decoder.decodeDoubleElement(getDescriptor(), i10));
    }
}
