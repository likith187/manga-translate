package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes2.dex */
final class ClassValueCache<T> implements SerializerCache<T> {
    private final ClassValueReferences<CacheEntry<T>> classValue;
    private final w8.l compute;

    public ClassValueCache(w8.l compute) {
        r.e(compute, "compute");
        this.compute = compute;
        this.classValue = new ClassValueReferences<>();
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public KSerializer<T> get(final c9.c key) {
        r.e(key, "key");
        Object obj = this.classValue.get(v8.a.a(key));
        r.d(obj, "get(...)");
        MutableSoftReference mutableSoftReference = (MutableSoftReference) obj;
        T t10 = mutableSoftReference.reference.get();
        if (t10 == null) {
            t10 = (T) mutableSoftReference.getOrSetWithLock(new w8.a() { // from class: kotlinx.serialization.internal.ClassValueCache$get$$inlined$getOrSet$1
                /* JADX WARN: Type inference failed for: r0v0, types: [T, kotlinx.serialization.internal.CacheEntry] */
                @Override // w8.a
                /* JADX INFO: renamed from: invoke */
                public final T mo8invoke() {
                    return new CacheEntry((KSerializer) this.this$0.getCompute().invoke(key));
                }
            });
        }
        return t10.serializer;
    }

    public final w8.l getCompute() {
        return this.compute;
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public boolean isStored(c9.c key) {
        r.e(key, "key");
        return this.classValue.isStored(v8.a.a(key));
    }
}
