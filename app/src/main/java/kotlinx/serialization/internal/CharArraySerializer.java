package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* JADX INFO: loaded from: classes2.dex */
public final class CharArraySerializer extends PrimitiveArraySerializer<Character, char[], CharArrayBuilder> implements KSerializer<char[]> {
    public static final CharArraySerializer INSTANCE = new CharArraySerializer();

    private CharArraySerializer() {
        super(BuiltinSerializersKt.serializer(kotlin.jvm.internal.f.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(char[] cArr) {
        r.e(cArr, "<this>");
        return cArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public char[] empty() {
        return new char[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public CharArrayBuilder toBuilder(char[] cArr) {
        r.e(cArr, "<this>");
        return new CharArrayBuilder(cArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void writeContent(CompositeEncoder encoder, char[] content, int i10) {
        r.e(encoder, "encoder");
        r.e(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeCharElement(getDescriptor(), i11, content[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(CompositeDecoder decoder, int i10, CharArrayBuilder builder, boolean z10) {
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        builder.append$kotlinx_serialization_core(decoder.decodeCharElement(getDescriptor(), i10));
    }
}
