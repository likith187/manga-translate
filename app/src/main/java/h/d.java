package h;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class d extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f12170a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f12171b = Executors.newFixedThreadPool(4, new a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile Handler f12172c;

    class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f12173a = new AtomicInteger(0);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("arch_disk_io_" + this.f12173a.getAndIncrement());
            return thread;
        }
    }

    private static class b {
        public static Handler a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    private static Handler d(Looper looper) {
        return b.a(looper);
    }

    @Override // h.e
    public void a(Runnable runnable) {
        this.f12171b.execute(runnable);
    }

    @Override // h.e
    public boolean b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // h.e
    public void c(Runnable runnable) {
        if (this.f12172c == null) {
            synchronized (this.f12170a) {
                try {
                    if (this.f12172c == null) {
                        this.f12172c = d(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        this.f12172c.post(runnable);
    }
}
