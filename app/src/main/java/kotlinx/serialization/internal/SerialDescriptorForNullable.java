package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;

/* JADX INFO: loaded from: classes2.dex */
public final class SerialDescriptorForNullable implements SerialDescriptor, CachedNames {
    private final SerialDescriptor original;
    private final String serialName;
    private final Set<String> serialNames;

    public SerialDescriptorForNullable(SerialDescriptor original) {
        r.e(original, "original");
        this.original = original;
        this.serialName = original.getSerialName() + '?';
        this.serialNames = Platform_commonKt.cachedSerialNames(original);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SerialDescriptorForNullable) && r.a(this.original, ((SerialDescriptorForNullable) obj).original);
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

    public final SerialDescriptor getOriginal$kotlinx_serialization_core() {
        return this.original;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.internal.CachedNames
    public Set<String> getSerialNames() {
        return this.serialNames;
    }

    public int hashCode() {
        return this.original.hashCode() * 31;
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
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.original);
        sb.append('?');
        return sb.toString();
    }
}
