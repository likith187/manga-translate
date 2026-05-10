package t9;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public class c extends b0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f15736i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final ReentrantLock f15737j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Condition f15738k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f15739l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f15740m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static c f15741n;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f15742f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f15743g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f15744h;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean d(c cVar) {
            ReentrantLock reentrantLockF = c.f15736i.f();
            reentrantLockF.lock();
            try {
                if (!cVar.f15742f) {
                    return false;
                }
                cVar.f15742f = false;
                for (c cVar2 = c.f15741n; cVar2 != null; cVar2 = cVar2.f15743g) {
                    if (cVar2.f15743g == cVar) {
                        cVar2.f15743g = cVar.f15743g;
                        cVar.f15743g = null;
                        return false;
                    }
                }
                reentrantLockF.unlock();
                return true;
            } finally {
                reentrantLockF.unlock();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void g(c cVar, long j10, boolean z10) {
            ReentrantLock reentrantLockF = c.f15736i.f();
            reentrantLockF.lock();
            try {
                if (cVar.f15742f) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                cVar.f15742f = true;
                if (c.f15741n == null) {
                    c.f15741n = new c();
                    new b().start();
                }
                long jNanoTime = System.nanoTime();
                if (j10 != 0 && z10) {
                    cVar.f15744h = Math.min(j10, cVar.c() - jNanoTime) + jNanoTime;
                } else if (j10 != 0) {
                    cVar.f15744h = j10 + jNanoTime;
                } else {
                    if (!z10) {
                        throw new AssertionError();
                    }
                    cVar.f15744h = cVar.c();
                }
                long jY = cVar.y(jNanoTime);
                c cVar2 = c.f15741n;
                kotlin.jvm.internal.r.b(cVar2);
                while (cVar2.f15743g != null) {
                    c cVar3 = cVar2.f15743g;
                    kotlin.jvm.internal.r.b(cVar3);
                    if (jY < cVar3.y(jNanoTime)) {
                        break;
                    }
                    cVar2 = cVar2.f15743g;
                    kotlin.jvm.internal.r.b(cVar2);
                }
                cVar.f15743g = cVar2.f15743g;
                cVar2.f15743g = cVar;
                if (cVar2 == c.f15741n) {
                    c.f15736i.e().signal();
                }
                h0 h0Var = h0.INSTANCE;
                reentrantLockF.unlock();
            } catch (Throwable th) {
                reentrantLockF.unlock();
                throw th;
            }
        }

        public final c c() throws InterruptedException {
            c cVar = c.f15741n;
            kotlin.jvm.internal.r.b(cVar);
            c cVar2 = cVar.f15743g;
            if (cVar2 == null) {
                long jNanoTime = System.nanoTime();
                e().await(c.f15739l, TimeUnit.MILLISECONDS);
                c cVar3 = c.f15741n;
                kotlin.jvm.internal.r.b(cVar3);
                if (cVar3.f15743g != null || System.nanoTime() - jNanoTime < c.f15740m) {
                    return null;
                }
                return c.f15741n;
            }
            long jY = cVar2.y(System.nanoTime());
            if (jY > 0) {
                e().await(jY, TimeUnit.NANOSECONDS);
                return null;
            }
            c cVar4 = c.f15741n;
            kotlin.jvm.internal.r.b(cVar4);
            cVar4.f15743g = cVar2.f15743g;
            cVar2.f15743g = null;
            return cVar2;
        }

        public final Condition e() {
            return c.f15738k;
        }

        public final ReentrantLock f() {
            return c.f15737j;
        }

        private a() {
        }
    }

    private static final class b extends Thread {
        public b() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ReentrantLock reentrantLockF;
            c cVarC;
            while (true) {
                try {
                    a aVar = c.f15736i;
                    reentrantLockF = aVar.f();
                    reentrantLockF.lock();
                    try {
                        cVarC = aVar.c();
                    } finally {
                        reentrantLockF.unlock();
                    }
                } catch (InterruptedException unused) {
                }
                if (cVarC == c.f15741n) {
                    c.f15741n = null;
                    return;
                }
                h0 h0Var = h0.INSTANCE;
                reentrantLockF.unlock();
                if (cVarC != null) {
                    cVarC.B();
                }
            }
        }
    }

    /* JADX INFO: renamed from: t9.c$c, reason: collision with other inner class name */
    public static final class C0227c implements y {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ y f15746b;

        C0227c(y yVar) {
            this.f15746b = yVar;
        }

        @Override // t9.y
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public c f() {
            return c.this;
        }

        @Override // t9.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            c cVar = c.this;
            y yVar = this.f15746b;
            cVar.v();
            try {
                yVar.close();
                h0 h0Var = h0.INSTANCE;
                if (cVar.w()) {
                    throw cVar.p(null);
                }
            } catch (IOException e10) {
                if (!cVar.w()) {
                    throw e10;
                }
                throw cVar.p(e10);
            } finally {
                cVar.w();
            }
        }

        @Override // t9.y, java.io.Flushable
        public void flush() throws IOException {
            c cVar = c.this;
            y yVar = this.f15746b;
            cVar.v();
            try {
                yVar.flush();
                h0 h0Var = h0.INSTANCE;
                if (cVar.w()) {
                    throw cVar.p(null);
                }
            } catch (IOException e10) {
                if (!cVar.w()) {
                    throw e10;
                }
                throw cVar.p(e10);
            } finally {
                cVar.w();
            }
        }

        @Override // t9.y
        public void p(t9.d source, long j10) throws IOException {
            kotlin.jvm.internal.r.e(source, "source");
            t9.b.b(source.G0(), 0L, j10);
            while (true) {
                long j11 = 0;
                if (j10 <= 0) {
                    return;
                }
                v vVar = source.f15749a;
                kotlin.jvm.internal.r.b(vVar);
                while (true) {
                    if (j11 >= 65536) {
                        break;
                    }
                    j11 += (long) (vVar.f15794c - vVar.f15793b);
                    if (j11 >= j10) {
                        j11 = j10;
                        break;
                    } else {
                        vVar = vVar.f15797f;
                        kotlin.jvm.internal.r.b(vVar);
                    }
                }
                c cVar = c.this;
                y yVar = this.f15746b;
                cVar.v();
                try {
                    yVar.p(source, j11);
                    h0 h0Var = h0.INSTANCE;
                    if (cVar.w()) {
                        throw cVar.p(null);
                    }
                    j10 -= j11;
                } catch (IOException e10) {
                    if (!cVar.w()) {
                        throw e10;
                    }
                    throw cVar.p(e10);
                } finally {
                    cVar.w();
                }
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f15746b + ')';
        }
    }

    public static final class d implements a0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ a0 f15748b;

        d(a0 a0Var) {
            this.f15748b = a0Var;
        }

        @Override // t9.a0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public c f() {
            return c.this;
        }

        @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            c cVar = c.this;
            a0 a0Var = this.f15748b;
            cVar.v();
            try {
                a0Var.close();
                h0 h0Var = h0.INSTANCE;
                if (cVar.w()) {
                    throw cVar.p(null);
                }
            } catch (IOException e10) {
                if (!cVar.w()) {
                    throw e10;
                }
                throw cVar.p(e10);
            } finally {
                cVar.w();
            }
        }

        @Override // t9.a0
        public long i0(t9.d sink, long j10) throws IOException {
            kotlin.jvm.internal.r.e(sink, "sink");
            c cVar = c.this;
            a0 a0Var = this.f15748b;
            cVar.v();
            try {
                long jI0 = a0Var.i0(sink, j10);
                if (cVar.w()) {
                    throw cVar.p(null);
                }
                return jI0;
            } catch (IOException e10) {
                if (cVar.w()) {
                    throw cVar.p(e10);
                }
                throw e10;
            } finally {
                cVar.w();
            }
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f15748b + ')';
        }
    }

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        f15737j = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        kotlin.jvm.internal.r.d(conditionNewCondition, "newCondition(...)");
        f15738k = conditionNewCondition;
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f15739l = millis;
        f15740m = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long y(long j10) {
        return this.f15744h - j10;
    }

    public final a0 A(a0 source) {
        kotlin.jvm.internal.r.e(source, "source");
        return new d(source);
    }

    protected void B() {
    }

    public final IOException p(IOException iOException) {
        return x(iOException);
    }

    public final void v() {
        long jH = h();
        boolean zE = e();
        if (jH != 0 || zE) {
            f15736i.g(this, jH, zE);
        }
    }

    public final boolean w() {
        return f15736i.d(this);
    }

    protected IOException x(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final y z(y sink) {
        kotlin.jvm.internal.r.e(sink, "sink");
        return new C0227c(sink);
    }
}
