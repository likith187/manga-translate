package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
@InternalSerializationApi
public abstract class AbstractCollectionSerializer<Element, Collection, Builder> implements KSerializer<Collection> {
    public /* synthetic */ AbstractCollectionSerializer(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ void readElement$default(AbstractCollectionSerializer abstractCollectionSerializer, CompositeDecoder compositeDecoder, int i10, Object obj, boolean z10, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
        }
        if ((i11 & 8) != 0) {
            z10 = true;
        }
        abstractCollectionSerializer.readElement(compositeDecoder, i10, obj, z10);
    }

    private final int readSize(CompositeDecoder compositeDecoder, Builder builder) {
        int iDecodeCollectionSize = compositeDecoder.decodeCollectionSize(getDescriptor());
        checkCapacity(builder, iDecodeCollectionSize);
        return iDecodeCollectionSize;
    }

    protected abstract Builder builder();

    protected abstract int builderSize(Builder builder);

    protected abstract void checkCapacity(Builder builder, int i10);

    protected abstract Iterator<Element> collectionIterator(Collection collection);

    protected abstract int collectionSize(Collection collection);

    @Override // kotlinx.serialization.DeserializationStrategy
    public Collection deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        return merge(decoder, null);
    }

    @InternalSerializationApi
    public final Collection merge(Decoder decoder, Collection collection) {
        Builder builder;
        r.e(decoder, "decoder");
        if (collection == null || (builder = toBuilder(collection)) == null) {
            builder = builder();
        }
        int iBuilderSize = builderSize(builder);
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(getDescriptor());
        if (!compositeDecoderBeginStructure.decodeSequentially()) {
            while (true) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(getDescriptor());
                if (iDecodeElementIndex == -1) {
                    break;
                }
                readElement$default(this, compositeDecoderBeginStructure, iBuilderSize + iDecodeElementIndex, builder, false, 8, null);
            }
        } else {
            readAll(compositeDecoderBeginStructure, builder, iBuilderSize, readSize(compositeDecoderBeginStructure, builder));
        }
        compositeDecoderBeginStructure.endStructure(getDescriptor());
        return toResult(builder);
    }

    protected abstract void readAll(CompositeDecoder compositeDecoder, Builder builder, int i10, int i11);

    protected abstract void readElement(CompositeDecoder compositeDecoder, int i10, Builder builder, boolean z10);

    @Override // kotlinx.serialization.SerializationStrategy
    public abstract void serialize(Encoder encoder, Collection collection);

    protected abstract Builder toBuilder(Collection collection);

    protected abstract Collection toResult(Builder builder);

    private AbstractCollectionSerializer() {
    }
}
