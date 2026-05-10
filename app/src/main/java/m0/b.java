package m0;

import kotlin.jvm.internal.r;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.k1;

/* JADX INFO: loaded from: classes.dex */
public final class b implements AutoCloseable, c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.coroutines.g f13807a;

    public b(kotlin.coroutines.g coroutineContext) {
        r.e(coroutineContext, "coroutineContext");
        this.f13807a = coroutineContext;
    }

    @Override // kotlinx.coroutines.c0
    public kotlin.coroutines.g c() {
        return this.f13807a;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        k1.d(c(), null, 1, null);
    }
}
