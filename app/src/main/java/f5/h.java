package f5;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class h extends com.google.android.gms.internal.mlkit_common.t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal f11938b = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ThreadPoolExecutor f11939a;

    public h() {
        final ThreadFactory threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: f5.s
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(final Runnable runnable) {
                return threadFactoryDefaultThreadFactory.newThread(new Runnable() { // from class: f5.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.x(runnable);
                    }
                });
            }
        });
        this.f11939a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void D(Deque deque, Runnable runnable) {
        com.google.android.gms.common.internal.k.g(deque);
        deque.add(runnable);
        if (deque.size() <= 1) {
            do {
                runnable.run();
                deque.removeFirst();
                runnable = (Runnable) deque.peekFirst();
            } while (runnable != null);
        }
    }

    static /* synthetic */ void x(Runnable runnable) {
        f11938b.set(new ArrayDeque());
        runnable.run();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(final Runnable runnable) {
        Deque deque = (Deque) f11938b.get();
        if (deque == null || deque.size() > 1) {
            this.f11939a.execute(new Runnable() { // from class: f5.r
                @Override // java.lang.Runnable
                public final void run() {
                    h.D((Deque) h.f11938b.get(), runnable);
                }
            });
        } else {
            D(deque, runnable);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.w0
    protected final /* synthetic */ Object i() {
        return this.f11939a;
    }

    @Override // com.google.android.gms.internal.mlkit_common.t
    protected final ExecutorService k() {
        return this.f11939a;
    }
}
