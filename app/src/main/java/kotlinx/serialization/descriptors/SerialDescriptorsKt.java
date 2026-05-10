package kotlinx.serialization.descriptors;

import c9.j;
import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.i;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.u;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.internal.ArrayListClassDesc;
import kotlinx.serialization.internal.HashMapClassDesc;
import kotlinx.serialization.internal.HashSetClassDesc;
import kotlinx.serialization.internal.PrimitivesKt;
import kotlinx.serialization.internal.SerialDescriptorForNullable;
import n8.h0;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class SerialDescriptorsKt {
    public static final SerialDescriptor PrimitiveSerialDescriptor(String serialName, PrimitiveKind kind) {
        r.e(serialName, "serialName");
        r.e(kind, "kind");
        if (kotlin.text.r.Y(serialName)) {
            throw new IllegalArgumentException("Blank serial names are prohibited");
        }
        return PrimitivesKt.PrimitiveDescriptorSafe(serialName, kind);
    }

    @ExperimentalSerializationApi
    public static final SerialDescriptor SerialDescriptor(String serialName, SerialDescriptor original) {
        r.e(serialName, "serialName");
        r.e(original, "original");
        if (kotlin.text.r.Y(serialName)) {
            throw new IllegalArgumentException("Blank serial names are prohibited");
        }
        if (original.getKind() instanceof PrimitiveKind) {
            throw new IllegalArgumentException("For primitive descriptors please use 'PrimitiveSerialDescriptor' instead");
        }
        if (!r.a(serialName, original.getSerialName())) {
            return new WrappedSerialDescriptor(serialName, original);
        }
        throw new IllegalArgumentException(("The name of the wrapped descriptor (" + serialName + ") cannot be the same as the name of the original descriptor (" + original.getSerialName() + ')').toString());
    }

    public static final SerialDescriptor buildClassSerialDescriptor(String serialName, SerialDescriptor[] typeParameters, l builderAction) {
        r.e(serialName, "serialName");
        r.e(typeParameters, "typeParameters");
        r.e(builderAction, "builderAction");
        if (kotlin.text.r.Y(serialName)) {
            throw new IllegalArgumentException("Blank serial names are prohibited");
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(serialName);
        builderAction.invoke(classSerialDescriptorBuilder);
        return new SerialDescriptorImpl(serialName, StructureKind.CLASS.INSTANCE, classSerialDescriptorBuilder.getElementNames$kotlinx_serialization_core().size(), i.W(typeParameters), classSerialDescriptorBuilder);
    }

    public static /* synthetic */ SerialDescriptor buildClassSerialDescriptor$default(String str, SerialDescriptor[] serialDescriptorArr, l lVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            lVar = new l() { // from class: kotlinx.serialization.descriptors.c
                @Override // w8.l
                public final Object invoke(Object obj2) {
                    return SerialDescriptorsKt.buildClassSerialDescriptor$lambda$0((ClassSerialDescriptorBuilder) obj2);
                }
            };
        }
        return buildClassSerialDescriptor(str, serialDescriptorArr, lVar);
    }

    public static final h0 buildClassSerialDescriptor$lambda$0(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        r.e(classSerialDescriptorBuilder, "<this>");
        return h0.INSTANCE;
    }

    @InternalSerializationApi
    public static final SerialDescriptor buildSerialDescriptor(String serialName, SerialKind kind, SerialDescriptor[] typeParameters, l builder) {
        r.e(serialName, "serialName");
        r.e(kind, "kind");
        r.e(typeParameters, "typeParameters");
        r.e(builder, "builder");
        if (kotlin.text.r.Y(serialName)) {
            throw new IllegalArgumentException("Blank serial names are prohibited");
        }
        if (r.a(kind, StructureKind.CLASS.INSTANCE)) {
            throw new IllegalArgumentException("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(serialName);
        builder.invoke(classSerialDescriptorBuilder);
        return new SerialDescriptorImpl(serialName, kind, classSerialDescriptorBuilder.getElementNames$kotlinx_serialization_core().size(), i.W(typeParameters), classSerialDescriptorBuilder);
    }

    public static /* synthetic */ SerialDescriptor buildSerialDescriptor$default(String str, SerialKind serialKind, SerialDescriptor[] serialDescriptorArr, l lVar, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            lVar = new l() { // from class: kotlinx.serialization.descriptors.d
                @Override // w8.l
                public final Object invoke(Object obj2) {
                    return SerialDescriptorsKt.buildSerialDescriptor$lambda$6((ClassSerialDescriptorBuilder) obj2);
                }
            };
        }
        return buildSerialDescriptor(str, serialKind, serialDescriptorArr, lVar);
    }

    public static final h0 buildSerialDescriptor$lambda$6(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        r.e(classSerialDescriptorBuilder, "<this>");
        return h0.INSTANCE;
    }

    public static final /* synthetic */ <T> void element(ClassSerialDescriptorBuilder classSerialDescriptorBuilder, String elementName, List<? extends Annotation> annotations, boolean z10) {
        r.e(classSerialDescriptorBuilder, "<this>");
        r.e(elementName, "elementName");
        r.e(annotations, "annotations");
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.simple");
        classSerialDescriptorBuilder.element(elementName, SerializersKt.serializer((j) null).getDescriptor(), annotations, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void element$default(ClassSerialDescriptorBuilder classSerialDescriptorBuilder, String elementName, List annotations, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            annotations = o.h();
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        r.e(classSerialDescriptorBuilder, "<this>");
        r.e(elementName, "elementName");
        r.e(annotations, "annotations");
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.simple");
        classSerialDescriptorBuilder.element(elementName, SerializersKt.serializer((j) null).getDescriptor(), annotations, z10);
    }

    public static final SerialDescriptor getNonNullOriginal(SerialDescriptor serialDescriptor) {
        r.e(serialDescriptor, "<this>");
        return serialDescriptor instanceof SerialDescriptorForNullable ? ((SerialDescriptorForNullable) serialDescriptor).getOriginal$kotlinx_serialization_core() : serialDescriptor;
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getNonNullOriginal$annotations(SerialDescriptor serialDescriptor) {
    }

    public static final SerialDescriptor getNullable(SerialDescriptor serialDescriptor) {
        r.e(serialDescriptor, "<this>");
        return serialDescriptor.isNullable() ? serialDescriptor : new SerialDescriptorForNullable(serialDescriptor);
    }

    public static /* synthetic */ void getNullable$annotations(SerialDescriptor serialDescriptor) {
    }

    @ExperimentalSerializationApi
    public static final SerialDescriptor listSerialDescriptor(SerialDescriptor elementDescriptor) {
        r.e(elementDescriptor, "elementDescriptor");
        return new ArrayListClassDesc(elementDescriptor);
    }

    @ExperimentalSerializationApi
    public static final SerialDescriptor mapSerialDescriptor(SerialDescriptor keyDescriptor, SerialDescriptor valueDescriptor) {
        r.e(keyDescriptor, "keyDescriptor");
        r.e(valueDescriptor, "valueDescriptor");
        return new HashMapClassDesc(keyDescriptor, valueDescriptor);
    }

    public static final /* synthetic */ <T> SerialDescriptor serialDescriptor() {
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.simple");
        return SerializersKt.serializer((j) null).getDescriptor();
    }

    @ExperimentalSerializationApi
    public static final SerialDescriptor setSerialDescriptor(SerialDescriptor elementDescriptor) {
        r.e(elementDescriptor, "elementDescriptor");
        return new HashSetClassDesc(elementDescriptor);
    }

    @ExperimentalSerializationApi
    public static final /* synthetic */ <T> SerialDescriptor listSerialDescriptor() {
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.simple");
        return listSerialDescriptor(SerializersKt.serializer((j) null).getDescriptor());
    }

    @ExperimentalSerializationApi
    public static final /* synthetic */ <K, V> SerialDescriptor mapSerialDescriptor() {
        r.i(6, "K");
        u.a("kotlinx.serialization.serializer.simple");
        SerialDescriptor descriptor = SerializersKt.serializer((j) null).getDescriptor();
        r.i(6, "V");
        u.a("kotlinx.serialization.serializer.simple");
        return mapSerialDescriptor(descriptor, SerializersKt.serializer((j) null).getDescriptor());
    }

    public static final SerialDescriptor serialDescriptor(j type) {
        r.e(type, "type");
        return SerializersKt.serializer(type).getDescriptor();
    }

    @ExperimentalSerializationApi
    public static final /* synthetic */ <T> SerialDescriptor setSerialDescriptor() {
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.simple");
        return setSerialDescriptor(SerializersKt.serializer((j) null).getDescriptor());
    }
}
