package kotlinx.serialization.internal;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class Platform_commonKt {
    private static final SerialDescriptor[] EMPTY_DESCRIPTOR_ARRAY = new SerialDescriptor[0];

    public static final Set<String> cachedSerialNames(SerialDescriptor serialDescriptor) {
        r.e(serialDescriptor, "<this>");
        if (serialDescriptor instanceof CachedNames) {
            return ((CachedNames) serialDescriptor).getSerialNames();
        }
        HashSet hashSet = new HashSet(serialDescriptor.getElementsCount());
        int elementsCount = serialDescriptor.getElementsCount();
        for (int i10 = 0; i10 < elementsCount; i10++) {
            hashSet.add(serialDescriptor.getElementName(i10));
        }
        return hashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> DeserializationStrategy<T> cast(DeserializationStrategy<?> deserializationStrategy) {
        r.e(deserializationStrategy, "<this>");
        return deserializationStrategy;
    }

    public static final SerialDescriptor[] compactArray(List<? extends SerialDescriptor> list) {
        SerialDescriptor[] serialDescriptorArr;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        return (list == null || (serialDescriptorArr = (SerialDescriptor[]) list.toArray(new SerialDescriptor[0])) == null) ? EMPTY_DESCRIPTOR_ARRAY : serialDescriptorArr;
    }

    public static final <T, K> int elementsHashCodeBy(Iterable<? extends T> iterable, w8.l selector) {
        r.e(iterable, "<this>");
        r.e(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        int iHashCode = 1;
        while (it.hasNext()) {
            int i10 = iHashCode * 31;
            Object objInvoke = selector.invoke(it.next());
            iHashCode = i10 + (objInvoke != null ? objInvoke.hashCode() : 0);
        }
        return iHashCode;
    }

    public static final c9.c kclass(c9.j jVar) {
        r.e(jVar, "<this>");
        c9.e classifier = jVar.getClassifier();
        if (classifier instanceof c9.c) {
            return (c9.c) classifier;
        }
        throw new IllegalArgumentException("Only KClass supported as classifier, got " + classifier);
    }

    public static final String notRegisteredMessage(c9.c cVar) {
        r.e(cVar, "<this>");
        String strC = cVar.c();
        if (strC == null) {
            strC = "<local class name not available>";
        }
        return notRegisteredMessage(strC);
    }

    public static final Void serializerNotRegistered(c9.c cVar) {
        r.e(cVar, "<this>");
        throw new SerializationException(notRegisteredMessage(cVar));
    }

    public static final c9.j typeOrThrow(c9.k kVar) {
        r.e(kVar, "<this>");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> KSerializer<T> cast(KSerializer<?> kSerializer) {
        r.e(kSerializer, "<this>");
        return kSerializer;
    }

    public static final String notRegisteredMessage(String className) {
        r.e(className, "className");
        return "Serializer for class '" + className + "' is not found.\nPlease ensure that class is marked as '@Serializable' and that the serialization compiler plugin is applied.\n";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> SerializationStrategy<T> cast(SerializationStrategy<?> serializationStrategy) {
        r.e(serializationStrategy, "<this>");
        return serializationStrategy;
    }
}
