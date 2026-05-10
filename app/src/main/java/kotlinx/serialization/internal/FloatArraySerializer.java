package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* JADX INFO: loaded from: classes2.dex */
public final class FloatArraySerializer extends PrimitiveArraySerializer<Float, float[], FloatArrayBuilder> implements KSerializer<float[]> {
    public static final FloatArraySerializer INSTANCE = new FloatArraySerializer();

    private FloatArraySerializer() {
        super(BuiltinSerializersKt.serializer(kotlin.jvm.internal.k.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(float[] fArr) {
        r.e(fArr, "<this>");
        return fArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public float[] empty() {
        return new float[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public FloatArrayBuilder toBuilder(float[] fArr) {
        r.e(fArr, "<this>");
        return new FloatArrayBuilder(fArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void writeContent(CompositeEncoder encoder, float[] content, int i10) {
        r.e(encoder, "encoder");
        r.e(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeFloatElement(getDescriptor(), i11, content[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(CompositeDecoder decoder, int i10, FloatArrayBuilder builder, boolean z10) {
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        builder.append$kotlinx_serialization_core(decoder.decodeFloatElement(getDescriptor(), i10));
    }
}
