package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public final class CachingKt {
    private static final boolean useClassValue;

    static {
        boolean z10;
        try {
            Class.forName("java.lang.ClassValue");
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        useClassValue = z10;
    }

    public static final <T> SerializerCache<T> createCache(w8.l factory) {
        r.e(factory, "factory");
        return useClassValue ? new ClassValueCache(factory) : new ConcurrentHashMapCache(factory);
    }

    public static final <T> ParametrizedSerializerCache<T> createParametrizedCache(p factory) {
        r.e(factory, "factory");
        return useClassValue ? new ClassValueParametrizedCache(factory) : new ConcurrentHashMapParametrizedCache(factory);
    }
}
