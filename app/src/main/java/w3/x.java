package w3;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class x implements Executor {
    x() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
