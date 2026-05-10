package kotlinx.serialization.internal;

import kotlin.jvm.internal.c0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
@InternalSerializationApi
public abstract class AbstractPolymorphicSerializer<T> implements KSerializer<T> {
    /* JADX INFO: Access modifiers changed from: private */
    public final T decodeSequentially(CompositeDecoder compositeDecoder) {
        return (T) CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 1, PolymorphicSerializerKt.findPolymorphicSerializer(this, compositeDecoder, compositeDecoder.decodeStringElement(getDescriptor(), 0)), null, 8, null);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final T deserialize(Decoder decoder) {
        T t10;
        r.e(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor);
        c0 c0Var = new c0();
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            t10 = (T) decodeSequentially(compositeDecoderBeginStructure);
        } else {
            Object objDecodeSerializableElement$default = null;
            while (true) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(getDescriptor());
                if (iDecodeElementIndex != -1) {
                    if (iDecodeElementIndex == 0) {
                        c0Var.element = compositeDecoderBeginStructure.decodeStringElement(getDescriptor(), iDecodeElementIndex);
                    } else {
                        if (iDecodeElementIndex != 1) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Invalid index in polymorphic deserialization of ");
                            String str = (String) c0Var.element;
                            if (str == null) {
                                str = "unknown class";
                            }
                            sb.append(str);
                            sb.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                            sb.append(iDecodeElementIndex);
                            throw new SerializationException(sb.toString());
                        }
                        Object obj = c0Var.element;
                        if (obj == null) {
                            throw new IllegalArgumentException("Cannot read polymorphic value before its type token");
                        }
                        c0Var.element = obj;
                        objDecodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, getDescriptor(), iDecodeElementIndex, PolymorphicSerializerKt.findPolymorphicSerializer(this, compositeDecoderBeginStructure, (String) obj), null, 8, null);
                    }
                } else {
                    if (objDecodeSerializableElement$default == null) {
                        throw new IllegalArgumentException(("Polymorphic value has not been read for class " + ((String) c0Var.element)).toString());
                    }
                    r.c(objDecodeSerializableElement$default, "null cannot be cast to non-null type T of kotlinx.serialization.internal.AbstractPolymorphicSerializer");
                    t10 = (T) objDecodeSerializableElement$default;
                }
            }
        }
        compositeDecoderBeginStructure.endStructure(descriptor);
        return t10;
    }

    @InternalSerializationApi
    public DeserializationStrategy<T> findPolymorphicSerializerOrNull(CompositeDecoder decoder, String str) {
        r.e(decoder, "decoder");
        return decoder.getSerializersModule().getPolymorphic(getBaseClass(), str);
    }

    public abstract c9.c getBaseClass();

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, T value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        SerializationStrategy<? super T> serializationStrategyFindPolymorphicSerializer = PolymorphicSerializerKt.findPolymorphicSerializer(this, encoder, value);
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor);
        compositeEncoderBeginStructure.encodeStringElement(getDescriptor(), 0, serializationStrategyFindPolymorphicSerializer.getDescriptor().getSerialName());
        SerialDescriptor descriptor2 = getDescriptor();
        r.c(serializationStrategyFindPolymorphicSerializer, "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        compositeEncoderBeginStructure.encodeSerializableElement(descriptor2, 1, serializationStrategyFindPolymorphicSerializer, value);
        compositeEncoderBeginStructure.endStructure(descriptor);
    }

    @InternalSerializationApi
    public SerializationStrategy<T> findPolymorphicSerializerOrNull(Encoder encoder, T value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        return encoder.getSerializersModule().getPolymorphic(getBaseClass(), value);
    }
}
