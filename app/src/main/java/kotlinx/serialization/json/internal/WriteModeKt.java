package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.ContextAwareKt;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes2.dex */
public final class WriteModeKt {
    public static final SerialDescriptor carrierDescriptor(SerialDescriptor serialDescriptor, SerializersModule module) {
        SerialDescriptor serialDescriptorCarrierDescriptor;
        r.e(serialDescriptor, "<this>");
        r.e(module, "module");
        if (!r.a(serialDescriptor.getKind(), SerialKind.CONTEXTUAL.INSTANCE)) {
            return serialDescriptor.isInline() ? carrierDescriptor(serialDescriptor.getElementDescriptor(0), module) : serialDescriptor;
        }
        SerialDescriptor contextualDescriptor = ContextAwareKt.getContextualDescriptor(module, serialDescriptor);
        return (contextualDescriptor == null || (serialDescriptorCarrierDescriptor = carrierDescriptor(contextualDescriptor, module)) == null) ? serialDescriptor : serialDescriptorCarrierDescriptor;
    }

    public static final <T, R1 extends T, R2 extends T> T selectMapMode(Json json, SerialDescriptor mapDescriptor, w8.a ifMap, w8.a ifList) {
        r.e(json, "<this>");
        r.e(mapDescriptor, "mapDescriptor");
        r.e(ifMap, "ifMap");
        r.e(ifList, "ifList");
        SerialDescriptor serialDescriptorCarrierDescriptor = carrierDescriptor(mapDescriptor.getElementDescriptor(0), json.getSerializersModule());
        SerialKind kind = serialDescriptorCarrierDescriptor.getKind();
        if ((kind instanceof PrimitiveKind) || r.a(kind, SerialKind.ENUM.INSTANCE)) {
            return (T) ifMap.mo8invoke();
        }
        if (json.getConfiguration().getAllowStructuredMapKeys()) {
            return (T) ifList.mo8invoke();
        }
        throw JsonExceptionsKt.InvalidKeyKindException(serialDescriptorCarrierDescriptor);
    }

    public static final WriteMode switchMode(Json json, SerialDescriptor desc) {
        r.e(json, "<this>");
        r.e(desc, "desc");
        SerialKind kind = desc.getKind();
        if (kind instanceof PolymorphicKind) {
            return WriteMode.POLY_OBJ;
        }
        if (r.a(kind, StructureKind.LIST.INSTANCE)) {
            return WriteMode.LIST;
        }
        if (!r.a(kind, StructureKind.MAP.INSTANCE)) {
            return WriteMode.OBJ;
        }
        SerialDescriptor serialDescriptorCarrierDescriptor = carrierDescriptor(desc.getElementDescriptor(0), json.getSerializersModule());
        SerialKind kind2 = serialDescriptorCarrierDescriptor.getKind();
        if ((kind2 instanceof PrimitiveKind) || r.a(kind2, SerialKind.ENUM.INSTANCE)) {
            return WriteMode.MAP;
        }
        if (json.getConfiguration().getAllowStructuredMapKeys()) {
            return WriteMode.LIST;
        }
        throw JsonExceptionsKt.InvalidKeyKindException(serialDescriptorCarrierDescriptor);
    }
}
