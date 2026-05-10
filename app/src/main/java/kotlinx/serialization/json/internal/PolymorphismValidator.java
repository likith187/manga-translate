package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.modules.SerializersModuleCollector;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class PolymorphismValidator implements SerializersModuleCollector {
    private final String discriminator;
    private final boolean useArrayPolymorphism;

    public PolymorphismValidator(boolean z10, String discriminator) {
        r.e(discriminator, "discriminator");
        this.useArrayPolymorphism = z10;
        this.discriminator = discriminator;
    }

    private final void checkDiscriminatorCollisions(SerialDescriptor serialDescriptor, c9.c cVar) {
        int elementsCount = serialDescriptor.getElementsCount();
        for (int i10 = 0; i10 < elementsCount; i10++) {
            String elementName = serialDescriptor.getElementName(i10);
            if (r.a(elementName, this.discriminator)) {
                throw new IllegalArgumentException("Polymorphic serializer for " + cVar + " has property '" + elementName + "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
            }
        }
    }

    private final void checkKind(SerialDescriptor serialDescriptor, c9.c cVar) {
        SerialKind kind = serialDescriptor.getKind();
        if ((kind instanceof PolymorphicKind) || r.a(kind, SerialKind.CONTEXTUAL.INSTANCE)) {
            throw new IllegalArgumentException("Serializer for " + cVar.c() + " can't be registered as a subclass for polymorphic serialization because its kind " + kind + " is not concrete. To work with multiple hierarchies, register it as a base class.");
        }
        if (this.useArrayPolymorphism) {
            return;
        }
        if (r.a(kind, StructureKind.LIST.INSTANCE) || r.a(kind, StructureKind.MAP.INSTANCE) || (kind instanceof PrimitiveKind) || (kind instanceof SerialKind.ENUM)) {
            throw new IllegalArgumentException("Serializer for " + cVar.c() + " of kind " + kind + " cannot be serialized polymorphically with class discriminator.");
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <T> void contextual(c9.c kClass, l provider) {
        r.e(kClass, "kClass");
        r.e(provider, "provider");
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base, Sub extends Base> void polymorphic(c9.c baseClass, c9.c actualClass, KSerializer<Sub> actualSerializer) {
        r.e(baseClass, "baseClass");
        r.e(actualClass, "actualClass");
        r.e(actualSerializer, "actualSerializer");
        SerialDescriptor descriptor = actualSerializer.getDescriptor();
        checkKind(descriptor, actualClass);
        if (this.useArrayPolymorphism) {
            return;
        }
        checkDiscriminatorCollisions(descriptor, actualClass);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void polymorphicDefault(c9.c cVar, l lVar) {
        SerializersModuleCollector.DefaultImpls.polymorphicDefault(this, cVar, lVar);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void polymorphicDefaultDeserializer(c9.c baseClass, l defaultDeserializerProvider) {
        r.e(baseClass, "baseClass");
        r.e(defaultDeserializerProvider, "defaultDeserializerProvider");
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void polymorphicDefaultSerializer(c9.c baseClass, l defaultSerializerProvider) {
        r.e(baseClass, "baseClass");
        r.e(defaultSerializerProvider, "defaultSerializerProvider");
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <T> void contextual(c9.c cVar, KSerializer<T> kSerializer) {
        SerializersModuleCollector.DefaultImpls.contextual(this, cVar, kSerializer);
    }
}
