package h;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class c extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile c f12165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Executor f12166d = new Executor() { // from class: h.a
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            c.h(runnable);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Executor f12167e = new Executor() { // from class: h.b
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            c.i(runnable);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f12168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f12169b;

    private c() {
        d dVar = new d();
        this.f12169b = dVar;
        this.f12168a = dVar;
    }

    public static Executor f() {
        return f12167e;
    }

    public static c g() {
        if (f12165c != null) {
            return f12165c;
        }
        synchronized (c.class) {
            try {
                if (f12165c == null) {
                    f12165c = new c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f12165c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(Runnable runnable) {
        g().c(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(Runnable runnable) {
        g().a(runnable);
    }

    @Override // h.e
    public void a(Runnable runnable) {
        this.f12168a.a(runnable);
    }

    @Override // h.e
    public boolean b() {
        return this.f12168a.b();
    }

    @Override // h.e
    public void c(Runnable runnable) {
        this.f12168a.c(runnable);
    }
}
