package f5;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f11941b = new AtomicInteger(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f11942c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final k f11940a = new k();

    public w3.i a(final Executor executor, final Callable callable, final w3.a aVar) {
        com.google.android.gms.common.internal.k.j(this.f11941b.get() > 0);
        if (aVar.a()) {
            return w3.l.a();
        }
        final w3.b bVar = new w3.b();
        final w3.j jVar = new w3.j(bVar.b());
        this.f11940a.b(new Executor() { // from class: f5.v
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                try {
                    executor.execute(runnable);
                } catch (RuntimeException e10) {
                    if (aVar.a()) {
                        bVar.a();
                    } else {
                        jVar.b(e10);
                    }
                    throw e10;
                }
            }
        }, new Runnable() { // from class: f5.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f11964a.h(aVar, bVar, callable, jVar);
            }
        });
        return jVar.a();
    }

    public boolean b() {
        return this.f11942c.get();
    }

    public abstract void c();

    public void d() {
        this.f11941b.incrementAndGet();
    }

    protected abstract void e();

    public void f(Executor executor) {
        g(executor);
    }

    public w3.i g(Executor executor) {
        com.google.android.gms.common.internal.k.j(this.f11941b.get() > 0);
        final w3.j jVar = new w3.j();
        this.f11940a.b(executor, new Runnable() { // from class: f5.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f11958a.i(jVar);
            }
        });
        return jVar.a();
    }

    final /* synthetic */ void h(w3.a aVar, w3.b bVar, Callable callable, w3.j jVar) {
        try {
            if (aVar.a()) {
                bVar.a();
                return;
            }
            try {
                if (!this.f11942c.get()) {
                    c();
                    this.f11942c.set(true);
                }
                if (aVar.a()) {
                    bVar.a();
                    return;
                }
                Object objCall = callable.call();
                if (aVar.a()) {
                    bVar.a();
                } else {
                    jVar.c(objCall);
                }
            } catch (RuntimeException e10) {
                throw new b5.a("Internal error has occurred when executing ML Kit tasks", 13, e10);
            }
        } catch (Exception e11) {
            if (aVar.a()) {
                bVar.a();
            } else {
                jVar.b(e11);
            }
        }
    }

    final /* synthetic */ void i(w3.j jVar) {
        int iDecrementAndGet = this.f11941b.decrementAndGet();
        com.google.android.gms.common.internal.k.j(iDecrementAndGet >= 0);
        if (iDecrementAndGet == 0) {
            e();
            this.f11942c.set(false);
        }
        com.google.android.gms.internal.mlkit_common.w.a();
        jVar.c(null);
    }
}
