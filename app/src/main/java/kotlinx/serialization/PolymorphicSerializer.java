package kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.ContextAwareKt;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public final class PolymorphicSerializer<T> extends AbstractPolymorphicSerializer<T> {
    private List<? extends Annotation> _annotations;
    private final c9.c baseClass;
    private final n8.j descriptor$delegate;

    public PolymorphicSerializer(c9.c baseClass) {
        r.e(baseClass, "baseClass");
        this.baseClass = baseClass;
        this._annotations = o.h();
        this.descriptor$delegate = n8.k.a(n8.n.PUBLICATION, new w8.a() { // from class: kotlinx.serialization.c
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return PolymorphicSerializer.descriptor_delegate$lambda$1(this.f13400a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor descriptor_delegate$lambda$1(final PolymorphicSerializer polymorphicSerializer) {
        return ContextAwareKt.withContext(SerialDescriptorsKt.buildSerialDescriptor("kotlinx.serialization.Polymorphic", PolymorphicKind.OPEN.INSTANCE, new SerialDescriptor[0], new w8.l() { // from class: kotlinx.serialization.b
            @Override // w8.l
            public final Object invoke(Object obj) {
                return PolymorphicSerializer.descriptor_delegate$lambda$1$lambda$0(this.f13399a, (ClassSerialDescriptorBuilder) obj);
            }
        }), polymorphicSerializer.getBaseClass());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h0 descriptor_delegate$lambda$1$lambda$0(PolymorphicSerializer polymorphicSerializer, ClassSerialDescriptorBuilder buildSerialDescriptor) {
        r.e(buildSerialDescriptor, "$this$buildSerialDescriptor");
        ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "type", BuiltinSerializersKt.serializer(kotlin.jvm.internal.h0.INSTANCE).getDescriptor(), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "value", SerialDescriptorsKt.buildSerialDescriptor$default("kotlinx.serialization.Polymorphic<" + polymorphicSerializer.getBaseClass().c() + '>', SerialKind.CONTEXTUAL.INSTANCE, new SerialDescriptor[0], null, 8, null), null, false, 12, null);
        buildSerialDescriptor.setAnnotations(polymorphicSerializer._annotations);
        return h0.INSTANCE;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public c9.c getBaseClass() {
        return this.baseClass;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    public String toString() {
        return "kotlinx.serialization.PolymorphicSerializer(baseClass: " + getBaseClass() + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PolymorphicSerializer(c9.c baseClass, Annotation[] classAnnotations) {
        this(baseClass);
        r.e(baseClass, "baseClass");
        r.e(classAnnotations, "classAnnotations");
        this._annotations = kotlin.collections.i.f(classAnnotations);
    }
}
