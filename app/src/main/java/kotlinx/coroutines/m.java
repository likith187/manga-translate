package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public final class m extends t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f13319c = AtomicIntegerFieldUpdater.newUpdater(m.class, "_resumed$volatile");
    private volatile /* synthetic */ int _resumed$volatile;

    public m(kotlin.coroutines.d dVar, Throwable th, boolean z10) {
        if (th == null) {
            th = new CancellationException("Continuation " + dVar + " was cancelled normally");
        }
        super(th, z10);
        this._resumed$volatile = 0;
    }

    public final boolean e() {
        return f13319c.compareAndSet(this, 0, 1);
    }
}
