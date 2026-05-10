package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlinx.coroutines.t0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class u0 extends s0 {
    protected abstract Thread O0();

    protected void P0(long j10, t0.b bVar) {
        h0.INSTANCE.e1(j10, bVar);
    }

    protected final void Q0() {
        Thread threadO0 = O0();
        if (Thread.currentThread() != threadO0) {
            c.a();
            LockSupport.unpark(threadO0);
        }
    }
}
