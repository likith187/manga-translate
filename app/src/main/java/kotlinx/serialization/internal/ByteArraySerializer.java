package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* JADX INFO: loaded from: classes2.dex */
public final class ByteArraySerializer extends PrimitiveArraySerializer<Byte, byte[], ByteArrayBuilder> implements KSerializer<byte[]> {
    public static final ByteArraySerializer INSTANCE = new ByteArraySerializer();

    private ByteArraySerializer() {
        super(BuiltinSerializersKt.serializer(kotlin.jvm.internal.d.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(byte[] bArr) {
        r.e(bArr, "<this>");
        return bArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public byte[] empty() {
        return new byte[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public ByteArrayBuilder toBuilder(byte[] bArr) {
        r.e(bArr, "<this>");
        return new ByteArrayBuilder(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void writeContent(CompositeEncoder encoder, byte[] content, int i10) {
        r.e(encoder, "encoder");
        r.e(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeByteElement(getDescriptor(), i11, content[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(CompositeDecoder decoder, int i10, ByteArrayBuilder builder, boolean z10) {
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        builder.append$kotlinx_serialization_core(decoder.decodeByteElement(getDescriptor(), i10));
    }
}
