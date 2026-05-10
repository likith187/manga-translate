package y2;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
class k implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f16537a;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Runnable f16538a;

        a(Runnable runnable) {
            this.f16538a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f16538a.run();
            } catch (Exception e10) {
                b3.a.c("Executor", "Background execution failure.", e10);
            }
        }
    }

    k(Executor executor) {
        this.f16537a = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f16537a.execute(new a(runnable));
    }
}
