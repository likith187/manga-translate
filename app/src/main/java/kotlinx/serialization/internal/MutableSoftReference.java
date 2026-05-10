package kotlinx.serialization.internal;

import java.lang.ref.SoftReference;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
final class MutableSoftReference<T> {
    public volatile SoftReference<T> reference = new SoftReference<>(null);

    public final synchronized T getOrSetWithLock(w8.a factory) {
        r.e(factory, "factory");
        T t10 = this.reference.get();
        if (t10 != null) {
            return t10;
        }
        T t11 = (T) factory.mo8invoke();
        this.reference = new SoftReference<>(t11);
        return t11;
    }
}
