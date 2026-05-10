package kotlinx.serialization.descriptors;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class SerialDescriptorKt$elementNames$1$1 implements Iterator<String>, x8.a {
    final /* synthetic */ SerialDescriptor $this_elementNames;
    private int elementsLeft;

    SerialDescriptorKt$elementNames$1$1(SerialDescriptor serialDescriptor) {
        this.$this_elementNames = serialDescriptor;
        this.elementsLeft = serialDescriptor.getElementsCount();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.elementsLeft > 0;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public String next() {
        SerialDescriptor serialDescriptor = this.$this_elementNames;
        int elementsCount = serialDescriptor.getElementsCount();
        int i10 = this.elementsLeft;
        this.elementsLeft = i10 - 1;
        return serialDescriptor.getElementName(elementsCount - i10);
    }
}
