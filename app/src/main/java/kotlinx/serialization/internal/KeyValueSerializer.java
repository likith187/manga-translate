package kotlinx.serialization.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
public abstract class KeyValueSerializer<K, V, R> implements KSerializer<R> {
    private final KSerializer<K> keySerializer;
    private final KSerializer<V> valueSerializer;

    public /* synthetic */ KeyValueSerializer(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.DeserializationStrategy
    public R deserialize(Decoder decoder) {
        R r10;
        r.e(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor);
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            r10 = (R) toResult(CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, getDescriptor(), 0, getKeySerializer(), null, 8, null), CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, getDescriptor(), 1, getValueSerializer(), null, 8, null));
        } else {
            Object objDecodeSerializableElement$default = TuplesKt.NULL;
            Object objDecodeSerializableElement$default2 = TuplesKt.NULL;
            while (true) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(getDescriptor());
                if (iDecodeElementIndex != -1) {
                    if (iDecodeElementIndex == 0) {
                        objDecodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, getDescriptor(), 0, getKeySerializer(), null, 8, null);
                    } else {
                        if (iDecodeElementIndex != 1) {
                            throw new SerializationException("Invalid index: " + iDecodeElementIndex);
                        }
                        objDecodeSerializableElement$default2 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, getDescriptor(), 1, getValueSerializer(), null, 8, null);
                    }
                } else {
                    if (objDecodeSerializableElement$default == TuplesKt.NULL) {
                        throw new SerializationException("Element 'key' is missing");
                    }
                    if (objDecodeSerializableElement$default2 == TuplesKt.NULL) {
                        throw new SerializationException("Element 'value' is missing");
                    }
                    r10 = (R) toResult(objDecodeSerializableElement$default, objDecodeSerializableElement$default2);
                }
            }
        }
        compositeDecoderBeginStructure.endStructure(descriptor);
        return r10;
    }

    protected abstract K getKey(R r10);

    protected final KSerializer<K> getKeySerializer() {
        return this.keySerializer;
    }

    protected abstract V getValue(R r10);

    protected final KSerializer<V> getValueSerializer() {
        return this.valueSerializer;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, R r10) {
        r.e(encoder, "encoder");
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(getDescriptor());
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 0, this.keySerializer, getKey(r10));
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 1, this.valueSerializer, getValue(r10));
        compositeEncoderBeginStructure.endStructure(getDescriptor());
    }

    protected abstract R toResult(K k10, V v10);

    private KeyValueSerializer(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        this.keySerializer = kSerializer;
        this.valueSerializer = kSerializer2;
    }
}
