package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MapLikeDescriptor implements SerialDescriptor {
    private final int elementsCount;
    private final SerialDescriptor keyDescriptor;
    private final String serialName;
    private final SerialDescriptor valueDescriptor;

    public /* synthetic */ MapLikeDescriptor(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, serialDescriptor, serialDescriptor2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MapLikeDescriptor)) {
            return false;
        }
        MapLikeDescriptor mapLikeDescriptor = (MapLikeDescriptor) obj;
        return r.a(getSerialName(), mapLikeDescriptor.getSerialName()) && r.a(this.keyDescriptor, mapLikeDescriptor.keyDescriptor) && r.a(this.valueDescriptor, mapLikeDescriptor.valueDescriptor);
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

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i10) {
        if (i10 >= 0) {
            int i11 = i10 % 2;
            if (i11 == 0) {
                return this.keyDescriptor;
            }
            if (i11 == 1) {
                return this.valueDescriptor;
            }
            throw new IllegalStateException("Unreached");
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + getSerialName() + " expects only non-negative indices").toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String name) {
        r.e(name, "name");
        Integer numM = kotlin.text.r.m(name);
        if (numM != null) {
            return numM.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid map index");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getElementName(int i10) {
        return String.valueOf(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return this.elementsCount;
    }

    public final SerialDescriptor getKeyDescriptor() {
        return this.keyDescriptor;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return StructureKind.MAP.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    public final SerialDescriptor getValueDescriptor() {
        return this.valueDescriptor;
    }

    public int hashCode() {
        return (((getSerialName().hashCode() * 31) + this.keyDescriptor.hashCode()) * 31) + this.valueDescriptor.hashCode();
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
        return getSerialName() + '(' + this.keyDescriptor + ", " + this.valueDescriptor + ')';
    }

    private MapLikeDescriptor(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2) {
        this.serialName = str;
        this.keyDescriptor = serialDescriptor;
        this.valueDescriptor = serialDescriptor2;
        this.elementsCount = 2;
    }
}
