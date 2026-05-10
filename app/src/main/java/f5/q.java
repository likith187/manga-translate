package f5;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
enum q implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        f.a().f11934a.post(runnable);
    }
}
