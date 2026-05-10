package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public final class ObjectSerializer<T> implements KSerializer<T> {
    private List<? extends Annotation> _annotations;
    private final n8.j descriptor$delegate;
    private final T objectInstance;

    public ObjectSerializer(final String serialName, T objectInstance) {
        r.e(serialName, "serialName");
        r.e(objectInstance, "objectInstance");
        this.objectInstance = objectInstance;
        this._annotations = o.h();
        this.descriptor$delegate = n8.k.a(n8.n.PUBLICATION, new w8.a() { // from class: kotlinx.serialization.internal.e
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return ObjectSerializer.descriptor_delegate$lambda$1(serialName, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor descriptor_delegate$lambda$1(String str, final ObjectSerializer objectSerializer) {
        return SerialDescriptorsKt.buildSerialDescriptor(str, StructureKind.OBJECT.INSTANCE, new SerialDescriptor[0], new w8.l() { // from class: kotlinx.serialization.internal.f
            @Override // w8.l
            public final Object invoke(Object obj) {
                return ObjectSerializer.descriptor_delegate$lambda$1$lambda$0(this.f13416a, (ClassSerialDescriptorBuilder) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h0 descriptor_delegate$lambda$1$lambda$0(ObjectSerializer objectSerializer, ClassSerialDescriptorBuilder buildSerialDescriptor) {
        r.e(buildSerialDescriptor, "$this$buildSerialDescriptor");
        buildSerialDescriptor.setAnnotations(objectSerializer._annotations);
        return h0.INSTANCE;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public T deserialize(Decoder decoder) {
        int iDecodeElementIndex;
        r.e(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor);
        if (compositeDecoderBeginStructure.decodeSequentially() || (iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(getDescriptor())) == -1) {
            h0 h0Var = h0.INSTANCE;
            compositeDecoderBeginStructure.endStructure(descriptor);
            return this.objectInstance;
        }
        throw new SerializationException("Unexpected index " + iDecodeElementIndex);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, T value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        encoder.beginStructure(getDescriptor()).endStructure(getDescriptor());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ObjectSerializer(String serialName, T objectInstance, Annotation[] classAnnotations) {
        this(serialName, objectInstance);
        r.e(serialName, "serialName");
        r.e(objectInstance, "objectInstance");
        r.e(classAnnotations, "classAnnotations");
        this._annotations = kotlin.collections.i.f(classAnnotations);
    }
}
