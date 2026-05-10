package g9;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.c0;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.internal.b0;
import kotlinx.coroutines.internal.g0;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Executor, Closeable {

    /* JADX INFO: renamed from: k */
    public static final C0145a f12120k = new C0145a(null);

    /* JADX INFO: renamed from: l */
    private static final /* synthetic */ AtomicLongFieldUpdater f12121l = AtomicLongFieldUpdater.newUpdater(a.class, "parkedWorkersStack$volatile");

    /* JADX INFO: renamed from: m */
    private static final /* synthetic */ AtomicLongFieldUpdater f12122m = AtomicLongFieldUpdater.newUpdater(a.class, "controlState$volatile");

    /* JADX INFO: renamed from: n */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f12123n = AtomicIntegerFieldUpdater.newUpdater(a.class, "_isTerminated$volatile");

    /* JADX INFO: renamed from: o */
    public static final g0 f12124o = new g0("NOT_IN_STACK");
    private volatile /* synthetic */ int _isTerminated$volatile;

    /* JADX INFO: renamed from: a */
    public final int f12125a;

    /* JADX INFO: renamed from: b */
    public final int f12126b;

    /* JADX INFO: renamed from: c */
    public final long f12127c;
    private volatile /* synthetic */ long controlState$volatile;

    /* JADX INFO: renamed from: f */
    public final String f12128f;

    /* JADX INFO: renamed from: h */
    public final g9.d f12129h;

    /* JADX INFO: renamed from: i */
    public final g9.d f12130i;

    /* JADX INFO: renamed from: j */
    public final b0 f12131j;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    /* JADX INFO: renamed from: g9.a$a */
    public static final class C0145a {
        public /* synthetic */ C0145a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0145a() {
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a */
        public static final /* synthetic */ int[] f12132a;

        static {
            int[] iArr = new int[d.values().length];
            try {
                iArr[d.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[d.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[d.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[d.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[d.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f12132a = iArr;
        }
    }

    public static final class d extends Enum {
        private static final /* synthetic */ r8.a $ENTRIES;
        private static final /* synthetic */ d[] $VALUES;
        public static final d CPU_ACQUIRED = new d("CPU_ACQUIRED", 0);
        public static final d BLOCKING = new d("BLOCKING", 1);
        public static final d PARKING = new d("PARKING", 2);
        public static final d DORMANT = new d("DORMANT", 3);
        public static final d TERMINATED = new d("TERMINATED", 4);

        private static final /* synthetic */ d[] $values() {
            return new d[]{CPU_ACQUIRED, BLOCKING, PARKING, DORMANT, TERMINATED};
        }

        static {
            d[] dVarArr$values = $values();
            $VALUES = dVarArr$values;
            $ENTRIES = r8.b.a(dVarArr$values);
        }

        private d(String str, int i10) {
            super(str, i10);
        }

        public static r8.a getEntries() {
            return $ENTRIES;
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) $VALUES.clone();
        }
    }

    public a(int i10, int i11, long j10, String str) {
        this.f12125a = i10;
        this.f12126b = i11;
        this.f12127c = j10;
        this.f12128f = str;
        if (i10 < 1) {
            throw new IllegalArgumentException(("Core pool size " + i10 + " should be at least 1").toString());
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should be greater than or equals to core pool size " + i10).toString());
        }
        if (i11 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j10 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
        }
        this.f12129h = new g9.d();
        this.f12130i = new g9.d();
        this.f12131j = new b0((i10 + 1) * 2);
        this.controlState$volatile = ((long) i10) << 42;
        this._isTerminated$volatile = 0;
    }

    private final c D() {
        Thread threadCurrentThread = Thread.currentThread();
        c cVar = threadCurrentThread instanceof c ? (c) threadCurrentThread : null;
        if (cVar == null || !r.a(a.this, this)) {
            return null;
        }
        return cVar;
    }

    private final void F0(long j10, boolean z10) {
        if (z10 || K0() || I0(j10)) {
            return;
        }
        K0();
    }

    private final h H0(c cVar, h hVar, boolean z10) {
        if (cVar == null || cVar.f12136c == d.TERMINATED) {
            return hVar;
        }
        if (hVar.f12149b.b() == 0 && cVar.f12136c == d.BLOCKING) {
            return hVar;
        }
        cVar.f12140j = true;
        return cVar.f12134a.a(hVar, z10);
    }

    public static /* synthetic */ void I(a aVar, Runnable runnable, i iVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            iVar = l.f12158g;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        aVar.G(runnable, iVar, z10);
    }

    private final boolean I0(long j10) {
        if (b9.d.c(((int) (2097151 & j10)) - ((int) ((j10 & 4398044413952L) >> 21)), 0) < this.f12125a) {
            int iV = v();
            if (iV == 1 && this.f12125a > 1) {
                v();
            }
            if (iV > 0) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean J0(a aVar, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = f12122m.get(aVar);
        }
        return aVar.I0(j10);
    }

    private final boolean K0() {
        c cVarQ0;
        do {
            cVarQ0 = q0();
            if (cVarQ0 == null) {
                return false;
            }
        } while (!c.f12133l.compareAndSet(cVarQ0, -1, 0));
        LockSupport.unpark(cVarQ0);
        return true;
    }

    public static final /* synthetic */ AtomicLongFieldUpdater N() {
        return f12122m;
    }

    private final int b0(c cVar) {
        Object objI = cVar.i();
        while (objI != f12124o) {
            if (objI == null) {
                return 0;
            }
            c cVar2 = (c) objI;
            int iH = cVar2.h();
            if (iH != 0) {
                return iH;
            }
            objI = cVar2.i();
        }
        return -1;
    }

    private final boolean k(h hVar) {
        return hVar.f12149b.b() == 1 ? this.f12130i.a(hVar) : this.f12129h.a(hVar);
    }

    private final c q0() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f12121l;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            c cVar = (c) this.f12131j.b((int) (2097151 & j10));
            if (cVar == null) {
                return null;
            }
            long j11 = (2097152 + j10) & (-2097152);
            int iB0 = b0(cVar);
            if (iB0 >= 0 && f12121l.compareAndSet(this, j10, ((long) iB0) | j11)) {
                cVar.r(f12124o);
                return cVar;
            }
        }
    }

    private final int v() {
        synchronized (this.f12131j) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                long j10 = f12122m.get(this);
                int i10 = (int) (j10 & 2097151);
                int iC = b9.d.c(i10 - ((int) ((j10 & 4398044413952L) >> 21)), 0);
                if (iC >= this.f12125a) {
                    return 0;
                }
                if (i10 >= this.f12126b) {
                    return 0;
                }
                int i11 = ((int) (N().get(this) & 2097151)) + 1;
                if (i11 <= 0 || this.f12131j.b(i11) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                c cVar = new c(this, i11);
                this.f12131j.c(i11, cVar);
                if (i11 != ((int) (2097151 & f12122m.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i12 = iC + 1;
                cVar.start();
                return i12;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void D0(h hVar) {
        try {
            hVar.run();
        } finally {
            try {
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void E0(long r8) throws java.lang.InterruptedException {
        /*
            r7 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = a0()
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r7, r1, r2)
            if (r0 != 0) goto Ld
            return
        Ld:
            g9.a$c r0 = r7.D()
            kotlinx.coroutines.internal.b0 r1 = r7.f12131j
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = i()     // Catch: java.lang.Throwable -> L8f
            long r3 = r3.get(r7)     // Catch: java.lang.Throwable -> L8f
            r5 = 2097151(0x1fffff, double:1.0361303E-317)
            long r3 = r3 & r5
            int r3 = (int) r3
            monitor-exit(r1)
            if (r2 > r3) goto L4d
            r1 = r2
        L25:
            kotlinx.coroutines.internal.b0 r4 = r7.f12131j
            java.lang.Object r4 = r4.b(r1)
            kotlin.jvm.internal.r.b(r4)
            g9.a$c r4 = (g9.a.c) r4
            if (r4 == r0) goto L48
        L32:
            java.lang.Thread$State r5 = r4.getState()
            java.lang.Thread$State r6 = java.lang.Thread.State.TERMINATED
            if (r5 == r6) goto L41
            java.util.concurrent.locks.LockSupport.unpark(r4)
            r4.join(r8)
            goto L32
        L41:
            g9.n r4 = r4.f12134a
            g9.d r5 = r7.f12130i
            r4.j(r5)
        L48:
            if (r1 == r3) goto L4d
            int r1 = r1 + 1
            goto L25
        L4d:
            g9.d r8 = r7.f12130i
            r8.b()
            g9.d r8 = r7.f12129h
            r8.b()
        L57:
            if (r0 == 0) goto L5f
            g9.h r8 = r0.g(r2)
            if (r8 != 0) goto L8b
        L5f:
            g9.d r8 = r7.f12129h
            java.lang.Object r8 = r8.e()
            g9.h r8 = (g9.h) r8
            if (r8 != 0) goto L8b
            g9.d r8 = r7.f12130i
            java.lang.Object r8 = r8.e()
            g9.h r8 = (g9.h) r8
            if (r8 != 0) goto L8b
            if (r0 == 0) goto L7a
            g9.a$d r8 = g9.a.d.TERMINATED
            r0.u(r8)
        L7a:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r8 = X()
            r0 = 0
            r8.set(r7, r0)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r8 = N()
            r8.set(r7, r0)
            return
        L8b:
            r7.D0(r8)
            goto L57
        L8f:
            r7 = move-exception
            monitor-exit(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: g9.a.E0(long):void");
    }

    public final void G(Runnable runnable, i iVar, boolean z10) {
        kotlinx.coroutines.c.a();
        h hVarX = x(runnable, iVar);
        boolean z11 = false;
        boolean z12 = hVarX.f12149b.b() == 1;
        long jAddAndGet = z12 ? f12122m.addAndGet(this, 2097152L) : 0L;
        c cVarD = D();
        h hVarH0 = H0(cVarD, hVarX, z10);
        if (hVarH0 != null && !k(hVarH0)) {
            throw new RejectedExecutionException(this.f12128f + " was terminated");
        }
        if (z10 && cVarD != null) {
            z11 = true;
        }
        if (z12) {
            F0(jAddAndGet, z11);
        } else {
            if (z11) {
                return;
            }
            G0();
        }
    }

    public final void G0() {
        if (K0() || J0(this, 0L, 1, null)) {
            return;
        }
        K0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        E0(10000L);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        I(this, runnable, null, false, 6, null);
    }

    public final boolean isTerminated() {
        return f12123n.get(this) != 0;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.f12131j.a();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 1; i15 < iA; i15++) {
            c cVar = (c) this.f12131j.b(i15);
            if (cVar != null) {
                int i16 = cVar.f12134a.i();
                int i17 = b.f12132a[cVar.f12136c.ordinal()];
                if (i17 == 1) {
                    i12++;
                } else if (i17 == 2) {
                    i11++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i16);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i17 == 3) {
                    i10++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i16);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i17 == 4) {
                    i13++;
                    if (i16 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i16);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (i17 == 5) {
                    i14++;
                }
            }
        }
        long j10 = f12122m.get(this);
        return this.f12128f + '@' + kotlinx.coroutines.g0.b(this) + "[Pool Size {core = " + this.f12125a + ", max = " + this.f12126b + "}, Worker States {CPU = " + i10 + ", blocking = " + i11 + ", parked = " + i12 + ", dormant = " + i13 + ", terminated = " + i14 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f12129h.c() + ", global blocking queue size = " + this.f12130i.c() + ", Control State {created workers= " + ((int) (2097151 & j10)) + ", blocking tasks = " + ((int) ((4398044413952L & j10) >> 21)) + ", CPUs acquired = " + (this.f12125a - ((int) ((9223367638808264704L & j10) >> 42))) + "}]";
    }

    public final boolean v0(c cVar) {
        long j10;
        int iH;
        if (cVar.i() != f12124o) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f12121l;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            iH = cVar.h();
            cVar.r(this.f12131j.b((int) (2097151 & j10)));
        } while (!f12121l.compareAndSet(this, j10, ((2097152 + j10) & (-2097152)) | ((long) iH)));
        return true;
    }

    public final h x(Runnable runnable, i iVar) {
        long jA = l.f12157f.a();
        if (!(runnable instanceof h)) {
            return new k(runnable, jA, iVar);
        }
        h hVar = (h) runnable;
        hVar.f12148a = jA;
        hVar.f12149b = iVar;
        return hVar;
    }

    public final void x0(c cVar, int i10, int i11) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f12121l;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            int iB0 = (int) (2097151 & j10);
            long j11 = (2097152 + j10) & (-2097152);
            if (iB0 == i10) {
                iB0 = i11 == 0 ? b0(cVar) : i11;
            }
            if (iB0 >= 0 && f12121l.compareAndSet(this, j10, j11 | ((long) iB0))) {
                return;
            }
        }
    }

    public final class c extends Thread {

        /* JADX INFO: renamed from: l */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f12133l = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl$volatile");

        /* JADX INFO: renamed from: a */
        public final n f12134a;

        /* JADX INFO: renamed from: b */
        private final c0 f12135b;

        /* JADX INFO: renamed from: c */
        public d f12136c;

        /* JADX INFO: renamed from: f */
        private long f12137f;

        /* JADX INFO: renamed from: h */
        private long f12138h;

        /* JADX INFO: renamed from: i */
        private int f12139i;
        private volatile int indexInArray;

        /* JADX INFO: renamed from: j */
        public boolean f12140j;
        private volatile Object nextParkedWorker;
        private volatile /* synthetic */ int workerCtl$volatile;

        private c() {
            setDaemon(true);
            setContextClassLoader(a.this.getClass().getClassLoader());
            this.f12134a = new n();
            this.f12135b = new c0();
            this.f12136c = d.DORMANT;
            this.nextParkedWorker = a.f12124o;
            int iNanoTime = (int) System.nanoTime();
            this.f12139i = iNanoTime == 0 ? 42 : iNanoTime;
        }

        private final void b(int i10) {
            if (i10 == 0) {
                return;
            }
            a.N().addAndGet(a.this, -2097152L);
            if (this.f12136c != d.TERMINATED) {
                this.f12136c = d.DORMANT;
            }
        }

        private final void c(int i10) {
            if (i10 != 0 && u(d.BLOCKING)) {
                a.this.G0();
            }
        }

        private final void d(h hVar) {
            int iB = hVar.f12149b.b();
            k(iB);
            c(iB);
            a.this.D0(hVar);
            b(iB);
        }

        private final h e(boolean z10) {
            h hVarO;
            h hVarO2;
            if (z10) {
                boolean z11 = m(a.this.f12125a * 2) == 0;
                if (z11 && (hVarO2 = o()) != null) {
                    return hVarO2;
                }
                h hVarK = this.f12134a.k();
                if (hVarK != null) {
                    return hVarK;
                }
                if (!z11 && (hVarO = o()) != null) {
                    return hVarO;
                }
            } else {
                h hVarO3 = o();
                if (hVarO3 != null) {
                    return hVarO3;
                }
            }
            return v(3);
        }

        private final h f() {
            h hVarL = this.f12134a.l();
            if (hVarL != null) {
                return hVarL;
            }
            h hVar = (h) a.this.f12130i.e();
            return hVar == null ? v(1) : hVar;
        }

        private final void k(int i10) {
            this.f12137f = 0L;
            if (this.f12136c == d.PARKING) {
                this.f12136c = d.BLOCKING;
            }
        }

        private final boolean l() {
            return this.nextParkedWorker != a.f12124o;
        }

        private final void n() {
            if (this.f12137f == 0) {
                this.f12137f = System.nanoTime() + a.this.f12127c;
            }
            LockSupport.parkNanos(a.this.f12127c);
            if (System.nanoTime() - this.f12137f >= 0) {
                this.f12137f = 0L;
                w();
            }
        }

        private final h o() {
            if (m(2) == 0) {
                h hVar = (h) a.this.f12129h.e();
                return hVar != null ? hVar : (h) a.this.f12130i.e();
            }
            h hVar2 = (h) a.this.f12130i.e();
            return hVar2 != null ? hVar2 : (h) a.this.f12129h.e();
        }

        private final void p() {
            loop0: while (true) {
                boolean z10 = false;
                while (!a.this.isTerminated() && this.f12136c != d.TERMINATED) {
                    h hVarG = g(this.f12140j);
                    if (hVarG != null) {
                        this.f12138h = 0L;
                        d(hVarG);
                    } else {
                        this.f12140j = false;
                        if (this.f12138h == 0) {
                            t();
                        } else if (z10) {
                            u(d.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f12138h);
                            this.f12138h = 0L;
                        } else {
                            z10 = true;
                        }
                    }
                }
                break loop0;
            }
            u(d.TERMINATED);
        }

        private final boolean s() {
            long j10;
            if (this.f12136c == d.CPU_ACQUIRED) {
                return true;
            }
            a aVar = a.this;
            AtomicLongFieldUpdater atomicLongFieldUpdaterN = a.N();
            do {
                j10 = atomicLongFieldUpdaterN.get(aVar);
                if (((int) ((9223367638808264704L & j10) >> 42)) == 0) {
                    return false;
                }
            } while (!a.N().compareAndSet(aVar, j10, j10 - 4398046511104L));
            this.f12136c = d.CPU_ACQUIRED;
            return true;
        }

        private final void t() {
            if (!l()) {
                a.this.v0(this);
                return;
            }
            f12133l.set(this, -1);
            while (l() && f12133l.get(this) == -1 && !a.this.isTerminated() && this.f12136c != d.TERMINATED) {
                u(d.PARKING);
                Thread.interrupted();
                n();
            }
        }

        private final h v(int i10) {
            int i11 = (int) (a.N().get(a.this) & 2097151);
            if (i11 < 2) {
                return null;
            }
            int iM = m(i11);
            a aVar = a.this;
            long jMin = Long.MAX_VALUE;
            for (int i12 = 0; i12 < i11; i12++) {
                iM++;
                if (iM > i11) {
                    iM = 1;
                }
                c cVar = (c) aVar.f12131j.b(iM);
                if (cVar != null && cVar != this) {
                    long jR = cVar.f12134a.r(i10, this.f12135b);
                    if (jR == -1) {
                        c0 c0Var = this.f12135b;
                        h hVar = (h) c0Var.element;
                        c0Var.element = null;
                        return hVar;
                    }
                    if (jR > 0) {
                        jMin = Math.min(jMin, jR);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.f12138h = jMin;
            return null;
        }

        private final void w() {
            a aVar = a.this;
            synchronized (aVar.f12131j) {
                try {
                    if (aVar.isTerminated()) {
                        return;
                    }
                    if (((int) (a.N().get(aVar) & 2097151)) <= aVar.f12125a) {
                        return;
                    }
                    if (f12133l.compareAndSet(this, -1, 1)) {
                        int i10 = this.indexInArray;
                        q(0);
                        aVar.x0(this, i10, 0);
                        int andDecrement = (int) (a.N().getAndDecrement(aVar) & 2097151);
                        if (andDecrement != i10) {
                            Object objB = aVar.f12131j.b(andDecrement);
                            r.b(objB);
                            c cVar = (c) objB;
                            aVar.f12131j.c(i10, cVar);
                            cVar.q(i10);
                            aVar.x0(cVar, andDecrement, i10);
                        }
                        aVar.f12131j.c(andDecrement, null);
                        h0 h0Var = h0.INSTANCE;
                        this.f12136c = d.TERMINATED;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final h g(boolean z10) {
            return s() ? e(z10) : f();
        }

        public final int h() {
            return this.indexInArray;
        }

        public final Object i() {
            return this.nextParkedWorker;
        }

        public final int m(int i10) {
            int i11 = this.f12139i;
            int i12 = i11 ^ (i11 << 13);
            int i13 = i12 ^ (i12 >> 17);
            int i14 = i13 ^ (i13 << 5);
            this.f12139i = i14;
            int i15 = i10 - 1;
            return (i15 & i10) == 0 ? i15 & i14 : (Integer.MAX_VALUE & i14) % i10;
        }

        public final void q(int i10) {
            StringBuilder sb = new StringBuilder();
            sb.append(a.this.f12128f);
            sb.append("-worker-");
            sb.append(i10 == 0 ? "TERMINATED" : String.valueOf(i10));
            setName(sb.toString());
            this.indexInArray = i10;
        }

        public final void r(Object obj) {
            this.nextParkedWorker = obj;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            p();
        }

        public final boolean u(d dVar) {
            d dVar2 = this.f12136c;
            boolean z10 = dVar2 == d.CPU_ACQUIRED;
            if (z10) {
                a.N().addAndGet(a.this, 4398046511104L);
            }
            if (dVar2 != dVar) {
                this.f12136c = dVar;
            }
            return z10;
        }

        public c(a aVar, int i10) {
            this();
            q(i10);
        }
    }
}
