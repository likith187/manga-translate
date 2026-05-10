package kotlinx.serialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.SerialDescriptorForNullable;
import kotlinx.serialization.modules.SerialModuleImpl;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes2.dex */
public final class ContextAwareKt {
    public static final c9.c getCapturedKClass(SerialDescriptor serialDescriptor) {
        r.e(serialDescriptor, "<this>");
        if (serialDescriptor instanceof ContextDescriptor) {
            return ((ContextDescriptor) serialDescriptor).kClass;
        }
        if (serialDescriptor instanceof SerialDescriptorForNullable) {
            return getCapturedKClass(((SerialDescriptorForNullable) serialDescriptor).getOriginal$kotlinx_serialization_core());
        }
        return null;
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getCapturedKClass$annotations(SerialDescriptor serialDescriptor) {
    }

    @ExperimentalSerializationApi
    public static final SerialDescriptor getContextualDescriptor(SerializersModule serializersModule, SerialDescriptor descriptor) {
        KSerializer contextual$default;
        r.e(serializersModule, "<this>");
        r.e(descriptor, "descriptor");
        c9.c capturedKClass = getCapturedKClass(descriptor);
        if (capturedKClass == null || (contextual$default = SerializersModule.getContextual$default(serializersModule, capturedKClass, null, 2, null)) == null) {
            return null;
        }
        return contextual$default.getDescriptor();
    }

    @ExperimentalSerializationApi
    public static final List<SerialDescriptor> getPolymorphicDescriptors(SerializersModule serializersModule, SerialDescriptor descriptor) {
        r.e(serializersModule, "<this>");
        r.e(descriptor, "descriptor");
        c9.c capturedKClass = getCapturedKClass(descriptor);
        if (capturedKClass == null) {
            return o.h();
        }
        Map<c9.c, KSerializer<?>> map = ((SerialModuleImpl) serializersModule).polyBase2Serializers.get(capturedKClass);
        Collection<KSerializer<?>> collectionValues = map != null ? map.values() : null;
        if (collectionValues == null) {
            collectionValues = o.h();
        }
        ArrayList arrayList = new ArrayList(o.r(collectionValues, 10));
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            arrayList.add(((KSerializer) it.next()).getDescriptor());
        }
        return arrayList;
    }

    public static final SerialDescriptor withContext(SerialDescriptor serialDescriptor, c9.c context) {
        r.e(serialDescriptor, "<this>");
        r.e(context, "context");
        return new ContextDescriptor(serialDescriptor, context);
    }
}
