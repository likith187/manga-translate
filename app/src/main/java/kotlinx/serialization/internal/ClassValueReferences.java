package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@SuppressAnimalSniffer
final class ClassValueReferences<T> extends ClassValue<MutableSoftReference<T>> {
    @Override // java.lang.ClassValue
    public /* bridge */ /* synthetic */ Object computeValue(Class cls) {
        return computeValue((Class<?>) cls);
    }

    public final T getOrSet(Class<?> key, final w8.a factory) {
        r.e(key, "key");
        r.e(factory, "factory");
        Object obj = get(key);
        r.d(obj, "get(...)");
        MutableSoftReference mutableSoftReference = (MutableSoftReference) obj;
        T t10 = mutableSoftReference.reference.get();
        return t10 != null ? t10 : (T) mutableSoftReference.getOrSetWithLock(new w8.a() { // from class: kotlinx.serialization.internal.ClassValueReferences.getOrSet.2
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final T mo8invoke() {
                return (T) factory.mo8invoke();
            }
        });
    }

    public final boolean isStored(Class<?> key) {
        r.e(key, "key");
        return ((MutableSoftReference) get(key)).reference.get() != null;
    }

    @Override // java.lang.ClassValue
    protected MutableSoftReference<T> computeValue(Class<?> type) {
        r.e(type, "type");
        return new MutableSoftReference<>();
    }
}
