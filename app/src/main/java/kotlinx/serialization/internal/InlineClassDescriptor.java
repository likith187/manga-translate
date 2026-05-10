package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class InlineClassDescriptor extends PluginGeneratedSerialDescriptor {
    private final boolean isInline;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InlineClassDescriptor(String name, GeneratedSerializer<?> generatedSerializer) {
        super(name, generatedSerializer, 1);
        r.e(name, "name");
        r.e(generatedSerializer, "generatedSerializer");
        this.isInline = true;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InlineClassDescriptor) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (r.a(getSerialName(), serialDescriptor.getSerialName())) {
                InlineClassDescriptor inlineClassDescriptor = (InlineClassDescriptor) obj;
                if (inlineClassDescriptor.isInline() && Arrays.equals(getTypeParameterDescriptors$kotlinx_serialization_core(), inlineClassDescriptor.getTypeParameterDescriptors$kotlinx_serialization_core()) && getElementsCount() == serialDescriptor.getElementsCount()) {
                    int elementsCount = getElementsCount();
                    for (int i10 = 0; i10 < elementsCount; i10++) {
                        if (r.a(getElementDescriptor(i10).getSerialName(), serialDescriptor.getElementDescriptor(i10).getSerialName()) && r.a(getElementDescriptor(i10).getKind(), serialDescriptor.getElementDescriptor(i10).getKind())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public int hashCode() {
        return super.hashCode() * 31;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor, kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.isInline;
    }
}
