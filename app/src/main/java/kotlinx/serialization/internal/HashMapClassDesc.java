package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class HashMapClassDesc extends MapLikeDescriptor {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashMapClassDesc(SerialDescriptor keyDesc, SerialDescriptor valueDesc) {
        super(CollectionDescriptorsKt.HASH_MAP_NAME, keyDesc, valueDesc, null);
        r.e(keyDesc, "keyDesc");
        r.e(valueDesc, "valueDesc");
    }
}
