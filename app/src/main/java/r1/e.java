package r1;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class e implements ThreadFactory {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicInteger f15402d = new AtomicInteger(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ThreadGroup f15403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f15404b = new AtomicInteger(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f15405c;

    public e() {
        SecurityManager securityManager = System.getSecurityManager();
        this.f15403a = securityManager == null ? Thread.currentThread().getThreadGroup() : securityManager.getThreadGroup();
        this.f15405c = "lottie-" + f15402d.getAndIncrement() + "-thread-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f15403a, runnable, this.f15405c + this.f15404b.getAndIncrement(), 0L);
        thread.setDaemon(false);
        thread.setPriority(10);
        return thread;
    }
}
