package g1;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ExecutorService f12050a = new ThreadPoolExecutor(5, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue());

    public static void b(Runnable runnable) {
        c(null, runnable);
    }

    public static void c(final z0.b bVar, final Runnable runnable) {
        if (bVar == null) {
            f12050a.execute(runnable);
        } else {
            f12050a.execute(new Runnable() { // from class: g1.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.d(runnable, bVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(Runnable runnable, z0.b bVar) {
        try {
            runnable.run();
        } catch (Throwable th) {
            bVar.i(th);
        }
    }
}
