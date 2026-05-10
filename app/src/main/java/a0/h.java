package a0;

import android.os.Handler;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
abstract class h {

    private static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f56a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f57b;

        /* JADX INFO: renamed from: a0.h$a$a, reason: collision with other inner class name */
        private static class C0001a extends Thread {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final int f58a;

            C0001a(Runnable runnable, String str, int i10) {
                super(runnable, str);
                this.f58a = i10;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f58a);
                super.run();
            }
        }

        a(String str, int i10) {
            this.f56a = str;
            this.f57b = i10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C0001a(runnable, this.f56a, this.f57b);
        }
    }

    private static class b implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f59a;

        b(Handler handler) {
            this.f59a = (Handler) c0.h.e(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (this.f59a.post((Runnable) c0.h.e(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f59a + " is shutting down");
        }
    }

    private static class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Callable f60a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private c0.a f61b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Handler f62c;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ c0.a f63a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Object f64b;

            a(c0.a aVar, Object obj) {
                this.f63a = aVar;
                this.f64b = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f63a.accept(this.f64b);
            }
        }

        c(Handler handler, Callable callable, c0.a aVar) {
            this.f60a = callable;
            this.f61b = aVar;
            this.f62c = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object objCall;
            try {
                objCall = this.f60a.call();
            } catch (Exception unused) {
                objCall = null;
            }
            this.f62c.post(new a(this.f61b, objCall));
        }
    }

    static ThreadPoolExecutor a(String str, int i10, int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i11, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new a(str, i10));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    static Executor b(Handler handler) {
        return new b(handler);
    }

    static void c(Executor executor, Callable callable, c0.a aVar) {
        executor.execute(new c(a0.b.a(), callable, aVar));
    }

    static Object d(ExecutorService executorService, Callable callable, int i10) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i10, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw e10;
        } catch (ExecutionException e11) {
            throw new RuntimeException(e11);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
