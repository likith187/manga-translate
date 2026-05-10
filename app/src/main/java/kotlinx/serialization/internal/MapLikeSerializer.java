package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.Map;
import kotlin.collections.j0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
@InternalSerializationApi
public abstract class MapLikeSerializer<Key, Value, Collection, Builder extends Map<Key, Value>> extends AbstractCollectionSerializer<Map.Entry<? extends Key, ? extends Value>, Collection, Builder> {
    private final KSerializer<Key> keySerializer;
    private final KSerializer<Value> valueSerializer;

    public /* synthetic */ MapLikeSerializer(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public abstract SerialDescriptor getDescriptor();

    public final KSerializer<Key> getKeySerializer() {
        return this.keySerializer;
    }

    public final KSerializer<Value> getValueSerializer() {
        return this.valueSerializer;
    }

    protected abstract void insertKeyValuePair(Builder builder, int i10, Key key, Value value);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer, kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Collection collection) {
        r.e(encoder, "encoder");
        int iCollectionSize = collectionSize(collection);
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder compositeEncoderBeginCollection = encoder.beginCollection(descriptor, iCollectionSize);
        Iterator<Map.Entry<? extends Key, ? extends Value>> itCollectionIterator = collectionIterator(collection);
        int i10 = 0;
        while (itCollectionIterator.hasNext()) {
            Map.Entry<? extends Key, ? extends Value> next = itCollectionIterator.next();
            Key key = next.getKey();
            Value value = next.getValue();
            int i11 = i10 + 1;
            compositeEncoderBeginCollection.encodeSerializableElement(getDescriptor(), i10, getKeySerializer(), key);
            i10 += 2;
            compositeEncoderBeginCollection.encodeSerializableElement(getDescriptor(), i11, getValueSerializer(), value);
        }
        compositeEncoderBeginCollection.endStructure(descriptor);
    }

    private MapLikeSerializer(KSerializer<Key> kSerializer, KSerializer<Value> kSerializer2) {
        super(null);
        this.keySerializer = kSerializer;
        this.valueSerializer = kSerializer2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readAll(CompositeDecoder decoder, Builder builder, int i10, int i11) {
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        if (i11 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
        }
        b9.a aVarK = b9.d.k(b9.d.l(0, i11 * 2), 2);
        int iA = aVarK.a();
        int iC = aVarK.c();
        int iD = aVarK.d();
        if ((iD <= 0 || iA > iC) && (iD >= 0 || iC > iA)) {
            return;
        }
        while (true) {
            readElement(decoder, i10 + iA, (Map) builder, false);
            if (iA == iC) {
                return;
            } else {
                iA += iD;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder decoder, int i10, Builder builder, boolean z10) {
        int iDecodeElementIndex;
        r.e(decoder, "decoder");
        r.e(builder, "builder");
        Object objDecodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(decoder, getDescriptor(), i10, this.keySerializer, null, 8, null);
        if (z10) {
            iDecodeElementIndex = decoder.decodeElementIndex(getDescriptor());
            if (iDecodeElementIndex != i10 + 1) {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i10 + ", returned index for value: " + iDecodeElementIndex).toString());
            }
        } else {
            iDecodeElementIndex = i10 + 1;
        }
        int i11 = iDecodeElementIndex;
        builder.put(objDecodeSerializableElement$default, (!builder.containsKey(objDecodeSerializableElement$default) || (this.valueSerializer.getDescriptor().getKind() instanceof PrimitiveKind)) ? CompositeDecoder.DefaultImpls.decodeSerializableElement$default(decoder, getDescriptor(), i11, this.valueSerializer, null, 8, null) : decoder.decodeSerializableElement(getDescriptor(), i11, this.valueSerializer, j0.i(builder, objDecodeSerializableElement$default)));
    }
}
