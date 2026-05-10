package kotlinx.serialization.internal;

import java.util.Arrays;
import java.util.Iterator;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorKt;
import kotlinx.serialization.descriptors.SerialKind;

/* JADX INFO: loaded from: classes2.dex */
public final class PluginGeneratedSerialDescriptorKt {
    public static final /* synthetic */ <SD extends SerialDescriptor> boolean equalsImpl(SD sd, Object obj, w8.l typeParamsAreEqual) {
        r.e(sd, "<this>");
        r.e(typeParamsAreEqual, "typeParamsAreEqual");
        if (sd == obj) {
            return true;
        }
        r.i(3, "SD");
        if (!(obj instanceof SerialDescriptor)) {
            return false;
        }
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        if (!r.a(sd.getSerialName(), serialDescriptor.getSerialName()) || !((Boolean) typeParamsAreEqual.invoke(obj)).booleanValue() || sd.getElementsCount() != serialDescriptor.getElementsCount()) {
            return false;
        }
        int elementsCount = sd.getElementsCount();
        for (int i10 = 0; i10 < elementsCount; i10++) {
            if (!r.a(sd.getElementDescriptor(i10).getSerialName(), serialDescriptor.getElementDescriptor(i10).getSerialName()) || !r.a(sd.getElementDescriptor(i10).getKind(), serialDescriptor.getElementDescriptor(i10).getKind())) {
                return false;
            }
        }
        return true;
    }

    public static final int hashCodeImpl(SerialDescriptor serialDescriptor, SerialDescriptor[] typeParams) {
        r.e(serialDescriptor, "<this>");
        r.e(typeParams, "typeParams");
        int iHashCode = (serialDescriptor.getSerialName().hashCode() * 31) + Arrays.hashCode(typeParams);
        Iterable<SerialDescriptor> elementDescriptors = SerialDescriptorKt.getElementDescriptors(serialDescriptor);
        Iterator<SerialDescriptor> it = elementDescriptors.iterator();
        int iHashCode2 = 1;
        int i10 = 1;
        while (true) {
            int iHashCode3 = 0;
            if (!it.hasNext()) {
                break;
            }
            int i11 = i10 * 31;
            String serialName = it.next().getSerialName();
            if (serialName != null) {
                iHashCode3 = serialName.hashCode();
            }
            i10 = i11 + iHashCode3;
        }
        Iterator<SerialDescriptor> it2 = elementDescriptors.iterator();
        while (it2.hasNext()) {
            int i12 = iHashCode2 * 31;
            SerialKind kind = it2.next().getKind();
            iHashCode2 = i12 + (kind != null ? kind.hashCode() : 0);
        }
        return (((iHashCode * 31) + i10) * 31) + iHashCode2;
    }
}
