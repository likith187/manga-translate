package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
@InternalSerializationApi
public abstract class NamedValueEncoder extends TaggedEncoder<String> {
    protected String composeName(String parentName, String childName) {
        r.e(parentName, "parentName");
        r.e(childName, "childName");
        if (parentName.length() == 0) {
            return childName;
        }
        return parentName + '.' + childName;
    }

    protected String elementName(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return descriptor.getElementName(i10);
    }

    protected final String nested(String nestedName) {
        r.e(nestedName, "nestedName");
        String currentTagOrNull = getCurrentTagOrNull();
        if (currentTagOrNull == null) {
            currentTagOrNull = "";
        }
        return composeName(currentTagOrNull, nestedName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    public final String getTag(SerialDescriptor serialDescriptor, int i10) {
        r.e(serialDescriptor, "<this>");
        return nested(elementName(serialDescriptor, i10));
    }
}
