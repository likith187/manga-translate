package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class ReferenceArraySerializer<ElementKlass, Element extends ElementKlass> extends CollectionLikeSerializer<Element, Element[], ArrayList<Element>> {
    private final SerialDescriptor descriptor;
    private final c9.c kClass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReferenceArraySerializer(c9.c kClass, KSerializer<Element> eSerializer) {
        super(eSerializer, null);
        r.e(kClass, "kClass");
        r.e(eSerializer, "eSerializer");
        this.kClass = kClass;
        this.descriptor = new ArrayClassDesc(eSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public ArrayList<Element> builder() {
        return new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int builderSize(ArrayList<Element> arrayList) {
        r.e(arrayList, "<this>");
        return arrayList.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void checkCapacity(ArrayList<Element> arrayList, int i10) {
        r.e(arrayList, "<this>");
        arrayList.ensureCapacity(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Iterator<Element> collectionIterator(Element[] elementArr) {
        r.e(elementArr, "<this>");
        return kotlin.jvm.internal.b.a(elementArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(Element[] elementArr) {
        r.e(elementArr, "<this>");
        return elementArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.CollectionLikeSerializer
    public void insert(ArrayList<Element> arrayList, int i10, Element element) {
        r.e(arrayList, "<this>");
        arrayList.add(i10, element);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public ArrayList<Element> toBuilder(Element[] elementArr) {
        r.e(elementArr, "<this>");
        return new ArrayList<>(kotlin.collections.i.f(elementArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Element[] toResult(ArrayList<Element> arrayList) {
        r.e(arrayList, "<this>");
        return (Element[]) PlatformKt.toNativeArrayImpl(arrayList, this.kClass);
    }
}
