package f5;

import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f11946b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f11945a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Queue f11947c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicReference f11948d = new AtomicReference();

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        synchronized (this.f11945a) {
            try {
                if (this.f11947c.isEmpty()) {
                    this.f11946b = false;
                } else {
                    a0 a0Var = (a0) this.f11947c.remove();
                    f(a0Var.f11925a, a0Var.f11926b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void f(Executor executor, final Runnable runnable) {
        try {
            executor.execute(new Runnable() { // from class: f5.y
                @Override // java.lang.Runnable
                public final void run() {
                    c0 c0Var = new c0(this.f11969a, null);
                    try {
                        runnable.run();
                        c0Var.close();
                    } catch (Throwable th) {
                        try {
                            c0Var.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            e();
        }
    }

    public void a() {
        com.google.android.gms.common.internal.k.j(Thread.currentThread().equals(this.f11948d.get()));
    }

    public void b(Executor executor, Runnable runnable) {
        synchronized (this.f11945a) {
            try {
                if (this.f11946b) {
                    this.f11947c.add(new a0(executor, runnable, null));
                } else {
                    this.f11946b = true;
                    f(executor, runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
