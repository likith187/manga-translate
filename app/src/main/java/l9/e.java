package l9;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: i */
    private static final Logger f13664i;

    /* JADX INFO: renamed from: a */
    private final a f13665a;

    /* JADX INFO: renamed from: b */
    private int f13666b;

    /* JADX INFO: renamed from: c */
    private boolean f13667c;

    /* JADX INFO: renamed from: d */
    private long f13668d;

    /* JADX INFO: renamed from: e */
    private final List f13669e;

    /* JADX INFO: renamed from: f */
    private final List f13670f;

    /* JADX INFO: renamed from: g */
    private final Runnable f13671g;

    /* JADX INFO: renamed from: h */
    public static final b f13663h = new b(null);
    public static final e INSTANCE = new e(new c(i9.d.K(i9.d.f12675i + " TaskRunner", true)));

    public interface a {
        long a();

        void b(e eVar, long j10);

        void c(e eVar);

        void execute(Runnable runnable);
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Logger a() {
            return e.f13664i;
        }

        private b() {
        }
    }

    public static final class c implements a {

        /* JADX INFO: renamed from: a */
        private final ThreadPoolExecutor f13672a;

        public c(ThreadFactory threadFactory) {
            r.e(threadFactory, "threadFactory");
            this.f13672a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // l9.e.a
        public long a() {
            return System.nanoTime();
        }

        @Override // l9.e.a
        public void b(e taskRunner, long j10) throws InterruptedException {
            r.e(taskRunner, "taskRunner");
            long j11 = j10 / 1000000;
            long j12 = j10 - (1000000 * j11);
            if (j11 > 0 || j10 > 0) {
                taskRunner.wait(j11, (int) j12);
            }
        }

        @Override // l9.e.a
        public void c(e taskRunner) {
            r.e(taskRunner, "taskRunner");
            taskRunner.notify();
        }

        @Override // l9.e.a
        public void execute(Runnable runnable) {
            r.e(runnable, "runnable");
            this.f13672a.execute(runnable);
        }
    }

    public static final class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l9.a aVarD;
            long jA;
            while (true) {
                e eVar = e.this;
                synchronized (eVar) {
                    aVarD = eVar.d();
                }
                if (aVarD == null) {
                    return;
                }
                l9.d dVarD = aVarD.d();
                r.b(dVarD);
                e eVar2 = e.this;
                boolean zIsLoggable = e.f13663h.a().isLoggable(Level.FINE);
                if (zIsLoggable) {
                    jA = dVarD.h().g().a();
                    l9.b.c(aVarD, dVarD, "starting");
                } else {
                    jA = -1;
                }
                try {
                    try {
                        eVar2.j(aVarD);
                        h0 h0Var = h0.INSTANCE;
                        if (zIsLoggable) {
                            l9.b.c(aVarD, dVarD, "finished run in " + l9.b.b(dVarD.h().g().a() - jA));
                        }
                    } finally {
                    }
                } catch (Throwable th) {
                    if (zIsLoggable) {
                        l9.b.c(aVarD, dVarD, "failed a run in " + l9.b.b(dVarD.h().g().a() - jA));
                    }
                    throw th;
                }
            }
        }
    }

    static {
        Logger logger = Logger.getLogger(e.class.getName());
        r.d(logger, "getLogger(TaskRunner::class.java.name)");
        f13664i = logger;
    }

    public e(a backend) {
        r.e(backend, "backend");
        this.f13665a = backend;
        this.f13666b = 10000;
        this.f13669e = new ArrayList();
        this.f13670f = new ArrayList();
        this.f13671g = new d();
    }

    private final void c(l9.a aVar, long j10) {
        if (i9.d.f12674h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        l9.d dVarD = aVar.d();
        r.b(dVarD);
        if (dVarD.c() != aVar) {
            throw new IllegalStateException("Check failed.");
        }
        boolean zD = dVarD.d();
        dVarD.m(false);
        dVarD.l(null);
        this.f13669e.remove(dVarD);
        if (j10 != -1 && !zD && !dVarD.g()) {
            dVarD.k(aVar, j10, true);
        }
        if (dVarD.e().isEmpty()) {
            return;
        }
        this.f13670f.add(dVarD);
    }

    private final void e(l9.a aVar) {
        if (i9.d.f12674h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        aVar.g(-1L);
        l9.d dVarD = aVar.d();
        r.b(dVarD);
        dVarD.e().remove(aVar);
        this.f13670f.remove(dVarD);
        dVarD.l(aVar);
        this.f13669e.add(dVarD);
    }

    public final void j(l9.a aVar) {
        if (i9.d.f12674h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(aVar.b());
        try {
            long jF = aVar.f();
            synchronized (this) {
                c(aVar, jF);
                h0 h0Var = h0.INSTANCE;
            }
            threadCurrentThread.setName(name);
        } catch (Throwable th) {
            synchronized (this) {
                c(aVar, -1L);
                h0 h0Var2 = h0.INSTANCE;
                threadCurrentThread.setName(name);
                throw th;
            }
        }
    }

    public final l9.a d() {
        boolean z10;
        if (i9.d.f12674h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        while (!this.f13670f.isEmpty()) {
            long jA = this.f13665a.a();
            Iterator it = this.f13670f.iterator();
            long jMin = Long.MAX_VALUE;
            l9.a aVar = null;
            while (true) {
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                }
                l9.a aVar2 = (l9.a) ((l9.d) it.next()).e().get(0);
                long jMax = Math.max(0L, aVar2.c() - jA);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (aVar != null) {
                        z10 = true;
                        break;
                    }
                    aVar = aVar2;
                }
            }
            if (aVar != null) {
                e(aVar);
                if (z10 || (!this.f13667c && !this.f13670f.isEmpty())) {
                    this.f13665a.execute(this.f13671g);
                }
                return aVar;
            }
            if (this.f13667c) {
                if (jMin < this.f13668d - jA) {
                    this.f13665a.c(this);
                }
                return null;
            }
            this.f13667c = true;
            this.f13668d = jA + jMin;
            try {
                try {
                    this.f13665a.b(this, jMin);
                } catch (InterruptedException unused) {
                    f();
                }
            } finally {
                this.f13667c = false;
            }
        }
        return null;
    }

    public final void f() {
        int size = this.f13669e.size();
        while (true) {
            size--;
            if (-1 >= size) {
                break;
            } else {
                ((l9.d) this.f13669e.get(size)).b();
            }
        }
        for (int size2 = this.f13670f.size() - 1; -1 < size2; size2--) {
            l9.d dVar = (l9.d) this.f13670f.get(size2);
            dVar.b();
            if (dVar.e().isEmpty()) {
                this.f13670f.remove(size2);
            }
        }
    }

    public final a g() {
        return this.f13665a;
    }

    public final void h(l9.d taskQueue) {
        r.e(taskQueue, "taskQueue");
        if (i9.d.f12674h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        if (taskQueue.c() == null) {
            if (taskQueue.e().isEmpty()) {
                this.f13670f.remove(taskQueue);
            } else {
                i9.d.c(this.f13670f, taskQueue);
            }
        }
        if (this.f13667c) {
            this.f13665a.c(this);
        } else {
            this.f13665a.execute(this.f13671g);
        }
    }

    public final l9.d i() {
        int i10;
        synchronized (this) {
            i10 = this.f13666b;
            this.f13666b = i10 + 1;
        }
        StringBuilder sb = new StringBuilder();
        sb.append('Q');
        sb.append(i10);
        return new l9.d(this, sb.toString());
    }
}
