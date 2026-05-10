package w3;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class y implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f16012a = new u3.a(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f16012a.post(runnable);
    }
}
