package g9;

import java.util.concurrent.Executor;
import kotlinx.coroutines.internal.h0;
import kotlinx.coroutines.internal.j0;
import kotlinx.coroutines.x0;
import kotlinx.coroutines.y;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends x0 implements Executor {
    public static final b INSTANCE = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final y f12142f = m.INSTANCE.E0(j0.e("kotlinx.coroutines.io.parallelism", b9.d.c(64, h0.a()), 0, 0, 12, null));

    private b() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        x0(kotlin.coroutines.h.INSTANCE, runnable);
    }

    @Override // kotlinx.coroutines.y
    public String toString() {
        return "Dispatchers.IO";
    }

    @Override // kotlinx.coroutines.y
    public void x0(kotlin.coroutines.g gVar, Runnable runnable) {
        f12142f.x0(gVar, runnable);
    }
}
