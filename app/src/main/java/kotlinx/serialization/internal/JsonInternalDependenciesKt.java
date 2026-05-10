package kotlinx.serialization.internal;

import java.util.Set;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonInternalDependenciesKt {
    @CoreFriendModuleApi
    public static final Set<String> jsonCachedSerialNames(SerialDescriptor serialDescriptor) {
        r.e(serialDescriptor, "<this>");
        return Platform_commonKt.cachedSerialNames(serialDescriptor);
    }
}
