package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class PrimitiveSerialDescriptor implements SerialDescriptor {
    private final PrimitiveKind kind;
    private final String serialName;

    public PrimitiveSerialDescriptor(String serialName, PrimitiveKind kind) {
        r.e(serialName, "serialName");
        r.e(kind, "kind");
        this.serialName = serialName;
        this.kind = kind;
    }

    private final Void error() {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrimitiveSerialDescriptor)) {
            return false;
        }
        PrimitiveSerialDescriptor primitiveSerialDescriptor = (PrimitiveSerialDescriptor) obj;
        return r.a(getSerialName(), primitiveSerialDescriptor.getSerialName()) && r.a(getKind(), primitiveSerialDescriptor.getKind());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getAnnotations() {
        return SerialDescriptor.DefaultImpls.getAnnotations(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getElementAnnotations(int i10) {
        error();
        throw new n8.i();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i10) {
        error();
        throw new n8.i();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String name) {
        r.e(name, "name");
        error();
        throw new n8.i();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getElementName(int i10) {
        error();
        throw new n8.i();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return 0;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    public int hashCode() {
        return getSerialName().hashCode() + (getKind().hashCode() * 31);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isElementOptional(int i10) {
        error();
        throw new n8.i();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.DefaultImpls.isInline(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isNullable() {
        return SerialDescriptor.DefaultImpls.isNullable(this);
    }

    public String toString() {
        return "PrimitiveDescriptor(" + getSerialName() + ')';
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public PrimitiveKind getKind() {
        return this.kind;
    }
}
