package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public abstract class ListLikeDescriptor implements SerialDescriptor {
    private final SerialDescriptor elementDescriptor;
    private final int elementsCount;

    public /* synthetic */ ListLikeDescriptor(SerialDescriptor serialDescriptor, DefaultConstructorMarker defaultConstructorMarker) {
        this(serialDescriptor);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ListLikeDescriptor)) {
            return false;
        }
        ListLikeDescriptor listLikeDescriptor = (ListLikeDescriptor) obj;
        return r.a(this.elementDescriptor, listLikeDescriptor.elementDescriptor) && r.a(getSerialName(), listLikeDescriptor.getSerialName());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getAnnotations() {
        return SerialDescriptor.DefaultImpls.getAnnotations(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getElementAnnotations(int i10) {
        if (i10 >= 0) {
            return o.h();
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + getSerialName() + " expects only non-negative indices").toString());
    }

    public final SerialDescriptor getElementDescriptor() {
        return this.elementDescriptor;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String name) {
        r.e(name, "name");
        Integer numM = kotlin.text.r.m(name);
        if (numM != null) {
            return numM.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid list index");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getElementName(int i10) {
        return String.valueOf(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return this.elementsCount;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return StructureKind.LIST.INSTANCE;
    }

    public int hashCode() {
        return (this.elementDescriptor.hashCode() * 31) + getSerialName().hashCode();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isElementOptional(int i10) {
        if (i10 >= 0) {
            return false;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + getSerialName() + " expects only non-negative indices").toString());
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
        return getSerialName() + '(' + this.elementDescriptor + ')';
    }

    private ListLikeDescriptor(SerialDescriptor serialDescriptor) {
        this.elementDescriptor = serialDescriptor;
        this.elementsCount = 1;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i10) {
        if (i10 >= 0) {
            return this.elementDescriptor;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + getSerialName() + " expects only non-negative indices").toString());
    }
}
