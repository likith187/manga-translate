package kotlinx.coroutines;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlinx.coroutines.t0;

/* JADX INFO: loaded from: classes2.dex */
public final class h0 extends t0 implements Runnable {
    public static final h0 INSTANCE;
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f13249l;

    static {
        Long l10;
        h0 h0Var = new h0();
        INSTANCE = h0Var;
        s0.K0(h0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l10 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l10 = 1000L;
        }
        f13249l = timeUnit.toNanos(l10.longValue());
    }

    private h0() {
    }

    private final synchronized void i1() {
        if (l1()) {
            debugStatus = 3;
            d1();
            kotlin.jvm.internal.r.c(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    private final synchronized Thread j1() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setContextClassLoader(h0.class.getClassLoader());
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private final boolean k1() {
        return debugStatus == 4;
    }

    private final boolean l1() {
        int i10 = debugStatus;
        return i10 == 2 || i10 == 3;
    }

    private final synchronized boolean m1() {
        if (l1()) {
            return false;
        }
        debugStatus = 1;
        kotlin.jvm.internal.r.c(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return true;
    }

    private final void n1() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // kotlinx.coroutines.u0
    protected Thread O0() {
        Thread thread = _thread;
        return thread == null ? j1() : thread;
    }

    @Override // kotlinx.coroutines.u0
    protected void P0(long j10, t0.b bVar) {
        n1();
    }

    @Override // kotlinx.coroutines.t0
    public void U0(Runnable runnable) {
        if (k1()) {
            n1();
        }
        super.U0(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zA1;
        z1.INSTANCE.c(this);
        c.a();
        try {
            if (!m1()) {
                if (zA1) {
                    return;
                } else {
                    return;
                }
            }
            long j10 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long jB1 = b1();
                if (jB1 == Long.MAX_VALUE) {
                    c.a();
                    long jNanoTime = System.nanoTime();
                    if (j10 == Long.MAX_VALUE) {
                        j10 = f13249l + jNanoTime;
                    }
                    long j11 = j10 - jNanoTime;
                    if (j11 <= 0) {
                        _thread = null;
                        i1();
                        c.a();
                        if (a1()) {
                            return;
                        }
                        O0();
                        return;
                    }
                    jB1 = b9.d.f(jB1, j11);
                } else {
                    j10 = Long.MAX_VALUE;
                }
                if (jB1 > 0) {
                    if (l1()) {
                        _thread = null;
                        i1();
                        c.a();
                        if (a1()) {
                            return;
                        }
                        O0();
                        return;
                    }
                    c.a();
                    LockSupport.parkNanos(this, jB1);
                }
            }
        } finally {
            _thread = null;
            i1();
            c.a();
            if (!a1()) {
                O0();
            }
        }
    }

    @Override // kotlinx.coroutines.t0, kotlinx.coroutines.s0
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
