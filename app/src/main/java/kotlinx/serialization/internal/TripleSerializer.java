package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import n8.h0;
import n8.v;

/* JADX INFO: loaded from: classes2.dex */
public final class TripleSerializer<A, B, C> implements KSerializer<v> {
    private final KSerializer<A> aSerializer;
    private final KSerializer<B> bSerializer;
    private final KSerializer<C> cSerializer;
    private final SerialDescriptor descriptor;

    public TripleSerializer(KSerializer<A> aSerializer, KSerializer<B> bSerializer, KSerializer<C> cSerializer) {
        r.e(aSerializer, "aSerializer");
        r.e(bSerializer, "bSerializer");
        r.e(cSerializer, "cSerializer");
        this.aSerializer = aSerializer;
        this.bSerializer = bSerializer;
        this.cSerializer = cSerializer;
        this.descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("kotlin.Triple", new SerialDescriptor[0], new w8.l() { // from class: kotlinx.serialization.internal.n
            @Override // w8.l
            public final Object invoke(Object obj) {
                return TripleSerializer.descriptor$lambda$0(this.f13429a, (ClassSerialDescriptorBuilder) obj);
            }
        });
    }

    private final v decodeSequentially(CompositeDecoder compositeDecoder) {
        Object objDecodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 0, this.aSerializer, null, 8, null);
        Object objDecodeSerializableElement$default2 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 1, this.bSerializer, null, 8, null);
        Object objDecodeSerializableElement$default3 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 2, this.cSerializer, null, 8, null);
        compositeDecoder.endStructure(getDescriptor());
        return new v(objDecodeSerializableElement$default, objDecodeSerializableElement$default2, objDecodeSerializableElement$default3);
    }

    private final v decodeStructure(CompositeDecoder compositeDecoder) {
        Object objDecodeSerializableElement$default = TuplesKt.NULL;
        Object objDecodeSerializableElement$default2 = TuplesKt.NULL;
        Object objDecodeSerializableElement$default3 = TuplesKt.NULL;
        while (true) {
            int iDecodeElementIndex = compositeDecoder.decodeElementIndex(getDescriptor());
            if (iDecodeElementIndex == -1) {
                compositeDecoder.endStructure(getDescriptor());
                if (objDecodeSerializableElement$default == TuplesKt.NULL) {
                    throw new SerializationException("Element 'first' is missing");
                }
                if (objDecodeSerializableElement$default2 == TuplesKt.NULL) {
                    throw new SerializationException("Element 'second' is missing");
                }
                if (objDecodeSerializableElement$default3 != TuplesKt.NULL) {
                    return new v(objDecodeSerializableElement$default, objDecodeSerializableElement$default2, objDecodeSerializableElement$default3);
                }
                throw new SerializationException("Element 'third' is missing");
            }
            if (iDecodeElementIndex == 0) {
                objDecodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 0, this.aSerializer, null, 8, null);
            } else if (iDecodeElementIndex == 1) {
                objDecodeSerializableElement$default2 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 1, this.bSerializer, null, 8, null);
            } else {
                if (iDecodeElementIndex != 2) {
                    throw new SerializationException("Unexpected index " + iDecodeElementIndex);
                }
                objDecodeSerializableElement$default3 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 2, this.cSerializer, null, 8, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h0 descriptor$lambda$0(TripleSerializer tripleSerializer, ClassSerialDescriptorBuilder buildClassSerialDescriptor) {
        r.e(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
        ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "first", tripleSerializer.aSerializer.getDescriptor(), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "second", tripleSerializer.bSerializer.getDescriptor(), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "third", tripleSerializer.cSerializer.getDescriptor(), null, false, 12, null);
        return h0.INSTANCE;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public v deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(getDescriptor());
        return compositeDecoderBeginStructure.decodeSequentially() ? decodeSequentially(compositeDecoderBeginStructure) : decodeStructure(compositeDecoderBeginStructure);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, v value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(getDescriptor());
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 0, this.aSerializer, value.getFirst());
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 1, this.bSerializer, value.getSecond());
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 2, this.cSerializer, value.getThird());
        compositeEncoderBeginStructure.endStructure(getDescriptor());
    }
}
