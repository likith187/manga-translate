package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes2.dex */
public interface SerializerCache<T> {

    public static final class DefaultImpls {
        public static <T> boolean isStored(SerializerCache<T> serializerCache, c9.c key) {
            r.e(key, "key");
            return false;
        }
    }

    KSerializer<T> get(c9.c cVar);

    boolean isStored(c9.c cVar);
}
