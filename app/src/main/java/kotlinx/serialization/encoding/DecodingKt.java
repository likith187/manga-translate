package kotlinx.serialization.encoding;

import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import w8.a;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class DecodingKt {
    public static final <T> T decodeIfNullable(Decoder decoder, DeserializationStrategy<? extends T> deserializer, a block) {
        r.e(decoder, "<this>");
        r.e(deserializer, "deserializer");
        r.e(block, "block");
        return (deserializer.getDescriptor().isNullable() || decoder.decodeNotNullMark()) ? (T) block.mo8invoke() : (T) decoder.decodeNull();
    }

    public static final <T> T decodeStructure(Decoder decoder, SerialDescriptor descriptor, l block) {
        r.e(decoder, "<this>");
        r.e(descriptor, "descriptor");
        r.e(block, "block");
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor);
        T t10 = (T) block.invoke(compositeDecoderBeginStructure);
        compositeDecoderBeginStructure.endStructure(descriptor);
        return t10;
    }
}
