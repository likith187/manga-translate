package kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.j0;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
@InternalSerializationApi
public final class SealedClassSerializer<T> extends AbstractPolymorphicSerializer<T> {
    private List<? extends Annotation> _annotations;
    private final c9.c baseClass;
    private final Map<c9.c, KSerializer<? extends T>> class2Serializer;
    private final n8.j descriptor$delegate;
    private final Map<String, KSerializer<? extends T>> serialName2Serializer;

    public SealedClassSerializer(final String serialName, c9.c baseClass, c9.c[] subclasses, KSerializer<? extends T>[] subclassSerializers) {
        r.e(serialName, "serialName");
        r.e(baseClass, "baseClass");
        r.e(subclasses, "subclasses");
        r.e(subclassSerializers, "subclassSerializers");
        this.baseClass = baseClass;
        this._annotations = o.h();
        this.descriptor$delegate = n8.k.a(n8.n.PUBLICATION, new w8.a() { // from class: kotlinx.serialization.d
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return SealedClassSerializer.descriptor_delegate$lambda$3(serialName, this);
            }
        });
        if (subclasses.length != subclassSerializers.length) {
            throw new IllegalArgumentException("All subclasses of sealed class " + getBaseClass().c() + " should be marked @Serializable");
        }
        Map<c9.c, KSerializer<? extends T>> mapO = j0.o(kotlin.collections.i.b0(subclasses, subclassSerializers));
        this.class2Serializer = mapO;
        final Set<Map.Entry<c9.c, KSerializer<? extends T>>> setEntrySet = mapO.entrySet();
        d0 d0Var = new d0() { // from class: kotlinx.serialization.SealedClassSerializer$special$$inlined$groupingBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.collections.d0
            public String keyOf(Map.Entry<? extends c9.c, ? extends KSerializer<? extends T>> entry) {
                return ((KSerializer) entry.getValue()).getDescriptor().getSerialName();
            }

            @Override // kotlin.collections.d0
            public Iterator<Map.Entry<? extends c9.c, ? extends KSerializer<? extends T>>> sourceIterator() {
                return setEntrySet.iterator();
            }
        };
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator itSourceIterator = d0Var.sourceIterator();
        while (itSourceIterator.hasNext()) {
            Object next = itSourceIterator.next();
            Object objKeyOf = d0Var.keyOf(next);
            Object obj = linkedHashMap.get(objKeyOf);
            if (obj == null) {
                linkedHashMap.containsKey(objKeyOf);
            }
            Map.Entry entry = (Map.Entry) next;
            Map.Entry entry2 = (Map.Entry) obj;
            String str = (String) objKeyOf;
            if (entry2 != null) {
                throw new IllegalStateException(("Multiple sealed subclasses of '" + getBaseClass() + "' have the same serial name '" + str + "': '" + entry2.getKey() + "', '" + entry.getKey() + '\'').toString());
            }
            linkedHashMap.put(objKeyOf, entry);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(j0.e(linkedHashMap.size()));
        for (Map.Entry entry3 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry3.getKey(), (KSerializer) ((Map.Entry) entry3.getValue()).getValue());
        }
        this.serialName2Serializer = linkedHashMap2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor descriptor_delegate$lambda$3(String str, final SealedClassSerializer sealedClassSerializer) {
        return SerialDescriptorsKt.buildSerialDescriptor(str, PolymorphicKind.SEALED.INSTANCE, new SerialDescriptor[0], new w8.l() { // from class: kotlinx.serialization.e
            @Override // w8.l
            public final Object invoke(Object obj) {
                return SealedClassSerializer.descriptor_delegate$lambda$3$lambda$2(this.f13405a, (ClassSerialDescriptorBuilder) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h0 descriptor_delegate$lambda$3$lambda$2(final SealedClassSerializer sealedClassSerializer, ClassSerialDescriptorBuilder buildSerialDescriptor) {
        r.e(buildSerialDescriptor, "$this$buildSerialDescriptor");
        ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "type", BuiltinSerializersKt.serializer(kotlin.jvm.internal.h0.INSTANCE).getDescriptor(), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "value", SerialDescriptorsKt.buildSerialDescriptor("kotlinx.serialization.Sealed<" + sealedClassSerializer.getBaseClass().c() + '>', SerialKind.CONTEXTUAL.INSTANCE, new SerialDescriptor[0], new w8.l() { // from class: kotlinx.serialization.f
            @Override // w8.l
            public final Object invoke(Object obj) {
                return SealedClassSerializer.descriptor_delegate$lambda$3$lambda$2$lambda$1(this.f13406a, (ClassSerialDescriptorBuilder) obj);
            }
        }), null, false, 12, null);
        buildSerialDescriptor.setAnnotations(sealedClassSerializer._annotations);
        return h0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h0 descriptor_delegate$lambda$3$lambda$2$lambda$1(SealedClassSerializer sealedClassSerializer, ClassSerialDescriptorBuilder buildSerialDescriptor) {
        r.e(buildSerialDescriptor, "$this$buildSerialDescriptor");
        for (Map.Entry<String, KSerializer<? extends T>> entry : sealedClassSerializer.serialName2Serializer.entrySet()) {
            ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, entry.getKey(), entry.getValue().getDescriptor(), null, false, 12, null);
        }
        return h0.INSTANCE;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public DeserializationStrategy<T> findPolymorphicSerializerOrNull(CompositeDecoder decoder, String str) {
        r.e(decoder, "decoder");
        KSerializer<? extends T> kSerializer = this.serialName2Serializer.get(str);
        return kSerializer != null ? kSerializer : super.findPolymorphicSerializerOrNull(decoder, str);
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public c9.c getBaseClass() {
        return this.baseClass;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public SerializationStrategy<T> findPolymorphicSerializerOrNull(Encoder encoder, T value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        KSerializer<? extends T> kSerializerFindPolymorphicSerializerOrNull = this.class2Serializer.get(kotlin.jvm.internal.d0.b(value.getClass()));
        if (kSerializerFindPolymorphicSerializerOrNull == null) {
            kSerializerFindPolymorphicSerializerOrNull = super.findPolymorphicSerializerOrNull(encoder, value);
        }
        if (kSerializerFindPolymorphicSerializerOrNull != null) {
            return kSerializerFindPolymorphicSerializerOrNull;
        }
        return null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SealedClassSerializer(String serialName, c9.c baseClass, c9.c[] subclasses, KSerializer<? extends T>[] subclassSerializers, Annotation[] classAnnotations) {
        this(serialName, baseClass, subclasses, subclassSerializers);
        r.e(serialName, "serialName");
        r.e(baseClass, "baseClass");
        r.e(subclasses, "subclasses");
        r.e(subclassSerializers, "subclassSerializers");
        r.e(classAnnotations, "classAnnotations");
        this._annotations = kotlin.collections.i.f(classAnnotations);
    }
}
