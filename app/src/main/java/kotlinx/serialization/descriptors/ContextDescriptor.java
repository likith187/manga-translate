package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;

/* JADX INFO: loaded from: classes2.dex */
final class ContextDescriptor implements SerialDescriptor {
    public final c9.c kClass;
    private final SerialDescriptor original;
    private final String serialName;

    public ContextDescriptor(SerialDescriptor original, c9.c kClass) {
        r.e(original, "original");
        r.e(kClass, "kClass");
        this.original = original;
        this.kClass = kClass;
        this.serialName = original.getSerialName() + '<' + kClass.c() + '>';
    }

    public boolean equals(Object obj) {
        ContextDescriptor contextDescriptor = obj instanceof ContextDescriptor ? (ContextDescriptor) obj : null;
        return contextDescriptor != null && r.a(this.original, contextDescriptor.original) && r.a(contextDescriptor.kClass, this.kClass);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getAnnotations() {
        return this.original.getAnnotations();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public List<Annotation> getElementAnnotations(int i10) {
        return this.original.getElementAnnotations(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public SerialDescriptor getElementDescriptor(int i10) {
        return this.original.getElementDescriptor(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public int getElementIndex(String name) {
        r.e(name, "name");
        return this.original.getElementIndex(name);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public String getElementName(int i10) {
        return this.original.getElementName(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return this.original.getElementsCount();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return this.original.getKind();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    public int hashCode() {
        return (this.kClass.hashCode() * 31) + getSerialName().hashCode();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public boolean isElementOptional(int i10) {
        return this.original.isElementOptional(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.original.isInline();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isNullable() {
        return this.original.isNullable();
    }

    public String toString() {
        return "ContextDescriptor(kClass: " + this.kClass + ", original: " + this.original + ')';
    }
}
