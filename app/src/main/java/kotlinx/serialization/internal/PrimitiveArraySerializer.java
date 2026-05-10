package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveArrayBuilder;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PrimitiveArraySerializer<Element, Array, Builder extends PrimitiveArrayBuilder<Array>> extends CollectionLikeSerializer<Element, Array, Builder> {
    private final SerialDescriptor descriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrimitiveArraySerializer(KSerializer<Element> primitiveSerializer) {
        super(primitiveSerializer, null);
        r.e(primitiveSerializer, "primitiveSerializer");
        this.descriptor = new PrimitiveArrayDescriptor(primitiveSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    protected final Iterator<Element> collectionIterator(Array array) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer, kotlinx.serialization.DeserializationStrategy
    public final Array deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        return merge(decoder, null);
    }

    protected abstract Array empty();

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    protected abstract void readElement(CompositeDecoder compositeDecoder, int i10, Builder builder, boolean z10);

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer, kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, Array array) {
        r.e(encoder, "encoder");
        int iCollectionSize = collectionSize(array);
        SerialDescriptor serialDescriptor = this.descriptor;
        CompositeEncoder compositeEncoderBeginCollection = encoder.beginCollection(serialDescriptor, iCollectionSize);
        writeContent(compositeEncoderBeginCollection, array, iCollectionSize);
        compositeEncoderBeginCollection.endStructure(serialDescriptor);
    }

    protected abstract void writeContent(CompositeEncoder compositeEncoder, Array array, int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Builder builder() {
        return toBuilder(empty());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int builderSize(Builder builder) {
        r.e(builder, "<this>");
        return builder.getPosition$kotlinx_serialization_core();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void checkCapacity(Builder builder, int i10) {
        r.e(builder, "<this>");
        builder.ensureCapacity$kotlinx_serialization_core(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.CollectionLikeSerializer
    public final void insert(Builder builder, int i10, Element element) {
        r.e(builder, "<this>");
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Array toResult(Builder builder) {
        r.e(builder, "<this>");
        return (Array) builder.build$kotlinx_serialization_core();
    }
}
