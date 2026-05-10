package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkedHashSetClassDesc extends ListLikeDescriptor {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkedHashSetClassDesc(SerialDescriptor elementDesc) {
        super(elementDesc, null);
        r.e(elementDesc, "elementDesc");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return CollectionDescriptorsKt.LINKED_HASH_SET_NAME;
    }
}
