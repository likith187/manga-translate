package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;

/* JADX INFO: loaded from: classes2.dex */
public final class InlineClassDescriptorKt {
    @InternalSerializationApi
    public static final <T> SerialDescriptor InlinePrimitiveDescriptor(String name, final KSerializer<T> primitiveSerializer) {
        r.e(name, "name");
        r.e(primitiveSerializer, "primitiveSerializer");
        return new InlineClassDescriptor(name, new GeneratedSerializer<T>() { // from class: kotlinx.serialization.internal.InlineClassDescriptorKt.InlinePrimitiveDescriptor.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                return new KSerializer[]{primitiveSerializer};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public T deserialize(Decoder decoder) {
                r.e(decoder, "decoder");
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            public SerialDescriptor getDescriptor() {
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, T t10) {
                r.e(encoder, "encoder");
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        });
    }
}
