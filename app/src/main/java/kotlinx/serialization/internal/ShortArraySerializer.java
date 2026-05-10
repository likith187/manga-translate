package kotlinx.serialization.internal;

import kotlin.jvm.internal.f0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* JADX INFO: loaded from: classes2.dex */
public final class ShortArraySerializer extends PrimitiveArraySerializer<Short, short[], ShortArrayBuilder> implements KSerializer<short[]> {
    public static final ShortArraySerializer INSTANCE = new ShortArraySerializer();

    private ShortArraySerializer() {
        super(BuiltinSerializersKt.serializer(f0.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(short[] sArr) {
        r.e(sArr, "<this>");
        return sArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public short[] empty() {
        return new short[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public ShortArrayBuilder toBuilder(short[] sArr) {
        r.e(sArr, "<this>");
        return new ShortArrayBuilder(sArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void writeContent(CompositeEncoder encoder, short[] content, int i10) {
        r.e(encoder, "encoder");
        r.e(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeShortElement(getDescriptor(), i11, content[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(CompositeDecoder decoder, int i10, ShortArrayBuilder builder, boolean z10) {
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        builder.append$kotlinx_serialization_core(decoder.decodeShortElement(getDescriptor(), i10));
    }
}
