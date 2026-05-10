package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorKt;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;

/* JADX INFO: loaded from: classes2.dex */
public final class EnumDescriptor extends PluginGeneratedSerialDescriptor {
    private final n8.j elementDescriptors$delegate;
    private final SerialKind kind;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumDescriptor(final String name, final int i10) {
        super(name, null, i10, 2, null);
        r.e(name, "name");
        this.kind = SerialKind.ENUM.INSTANCE;
        this.elementDescriptors$delegate = n8.k.b(new w8.a() { // from class: kotlinx.serialization.internal.b
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return EnumDescriptor.elementDescriptors_delegate$lambda$0(i10, name, this);
            }
        });
    }

    public static final SerialDescriptor[] elementDescriptors_delegate$lambda$0(int i10, String str, EnumDescriptor enumDescriptor) {
        SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            serialDescriptorArr[i11] = SerialDescriptorsKt.buildSerialDescriptor$default(str + '.' + enumDescriptor.getElementName(i11), StructureKind.OBJECT.INSTANCE, new SerialDescriptor[0], null, 8, null);
        }
        return serialDescriptorArr;
    }

    private final SerialDescriptor[] getElementDescriptors() {
        return (SerialDescriptor[]) this.elementDescriptors$delegate.getValue();
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SerialDescriptor)) {
            return false;
        }
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        return serialDescriptor.getKind() == SerialKind.ENUM.INSTANCE && r.a(getSerialName(), serialDescriptor.getSerialName()) && r.a(Platform_commonKt.cachedSerialNames(this), Platform_commonKt.cachedSerialNames(serialDescriptor));
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor, kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i10) {
        return getElementDescriptors()[i10];
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor, kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return this.kind;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public int hashCode() {
        int iHashCode = getSerialName().hashCode();
        Iterator<String> it = SerialDescriptorKt.getElementNames(this).iterator();
        int iHashCode2 = 1;
        while (it.hasNext()) {
            int i10 = iHashCode2 * 31;
            String next = it.next();
            iHashCode2 = i10 + (next != null ? next.hashCode() : 0);
        }
        return (iHashCode * 31) + iHashCode2;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public String toString() {
        return o.a0(SerialDescriptorKt.getElementNames(this), ", ", getSerialName() + '(', ")", 0, null, null, 56, null);
    }
}
