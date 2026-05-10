package kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.ContextAwareKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginHelperInterfacesKt;
import kotlinx.serialization.modules.SerializersModule;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public final class ContextualSerializer<T> implements KSerializer<T> {
    private final SerialDescriptor descriptor;
    private final KSerializer<T> fallbackSerializer;
    private final c9.c serializableClass;
    private final List<KSerializer<?>> typeArgumentsSerializers;

    public ContextualSerializer(c9.c serializableClass, KSerializer<T> kSerializer, KSerializer<?>[] typeArgumentsSerializers) {
        r.e(serializableClass, "serializableClass");
        r.e(typeArgumentsSerializers, "typeArgumentsSerializers");
        this.serializableClass = serializableClass;
        this.fallbackSerializer = kSerializer;
        this.typeArgumentsSerializers = kotlin.collections.i.f(typeArgumentsSerializers);
        this.descriptor = ContextAwareKt.withContext(SerialDescriptorsKt.buildSerialDescriptor("kotlinx.serialization.ContextualSerializer", SerialKind.CONTEXTUAL.INSTANCE, new SerialDescriptor[0], new w8.l() { // from class: kotlinx.serialization.a
            @Override // w8.l
            public final Object invoke(Object obj) {
                return ContextualSerializer.descriptor$lambda$0(this.f13398a, (ClassSerialDescriptorBuilder) obj);
            }
        }), serializableClass);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h0 descriptor$lambda$0(ContextualSerializer contextualSerializer, ClassSerialDescriptorBuilder buildSerialDescriptor) {
        SerialDescriptor descriptor;
        r.e(buildSerialDescriptor, "$this$buildSerialDescriptor");
        KSerializer<T> kSerializer = contextualSerializer.fallbackSerializer;
        List<Annotation> annotations = (kSerializer == null || (descriptor = kSerializer.getDescriptor()) == null) ? null : descriptor.getAnnotations();
        if (annotations == null) {
            annotations = o.h();
        }
        buildSerialDescriptor.setAnnotations(annotations);
        return h0.INSTANCE;
    }

    private final KSerializer<T> serializer(SerializersModule serializersModule) {
        KSerializer<T> contextual = serializersModule.getContextual(this.serializableClass, this.typeArgumentsSerializers);
        if (contextual != null || (contextual = this.fallbackSerializer) != null) {
            return contextual;
        }
        Platform_commonKt.serializerNotRegistered(this.serializableClass);
        throw new n8.i();
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public T deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        return (T) decoder.decodeSerializableValue(serializer(decoder.getSerializersModule()));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, T value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        encoder.encodeSerializableValue(serializer(encoder.getSerializersModule()), value);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ContextualSerializer(c9.c serializableClass) {
        this(serializableClass, null, PluginHelperInterfacesKt.EMPTY_SERIALIZER_ARRAY);
        r.e(serializableClass, "serializableClass");
    }
}
