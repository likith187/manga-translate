package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
class o implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayDeque f3607b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Runnable f3608c;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Runnable f3609a;

        a(Runnable runnable) {
            this.f3609a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f3609a.run();
            } finally {
                o.this.a();
            }
        }
    }

    o(Executor executor) {
        this.f3606a = executor;
    }

    synchronized void a() {
        Runnable runnable = (Runnable) this.f3607b.poll();
        this.f3608c = runnable;
        if (runnable != null) {
            this.f3606a.execute(runnable);
        }
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        this.f3607b.offer(new a(runnable));
        if (this.f3608c == null) {
            a();
        }
    }
}
