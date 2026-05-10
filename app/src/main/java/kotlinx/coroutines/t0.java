package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class t0 extends u0 implements j0 {

    /* JADX INFO: renamed from: i */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13379i = AtomicReferenceFieldUpdater.newUpdater(t0.class, Object.class, "_queue$volatile");

    /* JADX INFO: renamed from: j */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13380j = AtomicReferenceFieldUpdater.newUpdater(t0.class, Object.class, "_delayed$volatile");

    /* JADX INFO: renamed from: k */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f13381k = AtomicIntegerFieldUpdater.newUpdater(t0.class, "_isCompleted$volatile");
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile = 0;
    private volatile /* synthetic */ Object _queue$volatile;

    private final class a extends b {

        /* JADX INFO: renamed from: c */
        private final i f13382c;

        public a(long j10, i iVar) {
            super(j10);
            this.f13382c = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f13382c.a(t0.this, n8.h0.INSTANCE);
        }

        @Override // kotlinx.coroutines.t0.b
        public String toString() {
            return super.toString() + this.f13382c;
        }
    }

    public static abstract class b implements Runnable, Comparable, p0, kotlinx.coroutines.internal.n0 {
        private volatile Object _heap;

        /* JADX INFO: renamed from: a */
        public long f13384a;

        /* JADX INFO: renamed from: b */
        private int f13385b = -1;

        public b(long j10) {
            this.f13384a = j10;
        }

        @Override // kotlinx.coroutines.p0
        public final void a() {
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    if (obj == w0.f13390a) {
                        return;
                    }
                    c cVar = obj instanceof c ? (c) obj : null;
                    if (cVar != null) {
                        cVar.h(this);
                    }
                    this._heap = w0.f13390a;
                    n8.h0 h0Var = n8.h0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // kotlinx.coroutines.internal.n0
        public void b(int i10) {
            this.f13385b = i10;
        }

        @Override // kotlinx.coroutines.internal.n0
        public void c(kotlinx.coroutines.internal.m0 m0Var) {
            if (this._heap == w0.f13390a) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this._heap = m0Var;
        }

        @Override // kotlinx.coroutines.internal.n0
        public int d() {
            return this.f13385b;
        }

        @Override // kotlinx.coroutines.internal.n0
        public kotlinx.coroutines.internal.m0 f() {
            Object obj = this._heap;
            if (obj instanceof kotlinx.coroutines.internal.m0) {
                return (kotlinx.coroutines.internal.m0) obj;
            }
            return null;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: g */
        public int compareTo(b bVar) {
            long j10 = this.f13384a - bVar.f13384a;
            if (j10 > 0) {
                return 1;
            }
            return j10 < 0 ? -1 : 0;
        }

        public final int h(long j10, c cVar, t0 t0Var) {
            synchronized (this) {
                if (this._heap == w0.f13390a) {
                    return 2;
                }
                synchronized (cVar) {
                    try {
                        b bVar = (b) cVar.b();
                        if (t0Var.Z0()) {
                            return 1;
                        }
                        if (bVar == null) {
                            cVar.f13386c = j10;
                        } else {
                            long j11 = bVar.f13384a;
                            if (j11 - j10 < 0) {
                                j10 = j11;
                            }
                            if (j10 - cVar.f13386c > 0) {
                                cVar.f13386c = j10;
                            }
                        }
                        long j12 = this.f13384a;
                        long j13 = cVar.f13386c;
                        if (j12 - j13 < 0) {
                            this.f13384a = j13;
                        }
                        cVar.a(this);
                        return 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        public final boolean i(long j10) {
            return j10 - this.f13384a >= 0;
        }

        public String toString() {
            return "Delayed[nanos=" + this.f13384a + AbstractJsonLexerKt.END_LIST;
        }
    }

    public static final class c extends kotlinx.coroutines.internal.m0 {

        /* JADX INFO: renamed from: c */
        public long f13386c;

        public c(long j10) {
            this.f13386c = j10;
        }
    }

    private final void S0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13379i;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                if (androidx.concurrent.futures.b.a(f13379i, this, null, w0.f13391b)) {
                    return;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.t) {
                ((kotlinx.coroutines.internal.t) obj).d();
                return;
            } else {
                if (obj == w0.f13391b) {
                    return;
                }
                kotlinx.coroutines.internal.t tVar = new kotlinx.coroutines.internal.t(8, true);
                kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                tVar.a((Runnable) obj);
                if (androidx.concurrent.futures.b.a(f13379i, this, obj, tVar)) {
                    return;
                }
            }
        }
    }

    private final Runnable T0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13379i;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (obj instanceof kotlinx.coroutines.internal.t) {
                kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                kotlinx.coroutines.internal.t tVar = (kotlinx.coroutines.internal.t) obj;
                Object objM = tVar.m();
                if (objM != kotlinx.coroutines.internal.t.f13304h) {
                    return (Runnable) objM;
                }
                androidx.concurrent.futures.b.a(f13379i, this, obj, tVar.l());
            } else {
                if (obj == w0.f13391b) {
                    return null;
                }
                if (androidx.concurrent.futures.b.a(f13379i, this, obj, null)) {
                    kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                    return (Runnable) obj;
                }
            }
        }
    }

    private final boolean V0(Runnable runnable) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13379i;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (Z0()) {
                return false;
            }
            if (obj == null) {
                if (androidx.concurrent.futures.b.a(f13379i, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.t) {
                kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                kotlinx.coroutines.internal.t tVar = (kotlinx.coroutines.internal.t) obj;
                int iA = tVar.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    androidx.concurrent.futures.b.a(f13379i, this, obj, tVar.l());
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (obj == w0.f13391b) {
                    return false;
                }
                kotlinx.coroutines.internal.t tVar2 = new kotlinx.coroutines.internal.t(8, true);
                kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                tVar2.a((Runnable) obj);
                tVar2.a(runnable);
                if (androidx.concurrent.futures.b.a(f13379i, this, obj, tVar2)) {
                    return true;
                }
            }
        }
    }

    public final boolean Z0() {
        return f13381k.get(this) != 0;
    }

    private final void c1() {
        b bVar;
        kotlinx.coroutines.c.a();
        long jNanoTime = System.nanoTime();
        while (true) {
            c cVar = (c) f13380j.get(this);
            if (cVar == null || (bVar = (b) cVar.j()) == null) {
                return;
            } else {
                P0(jNanoTime, bVar);
            }
        }
    }

    private final int f1(long j10, b bVar) {
        if (Z0()) {
            return 1;
        }
        c cVar = (c) f13380j.get(this);
        if (cVar == null) {
            androidx.concurrent.futures.b.a(f13380j, this, null, new c(j10));
            Object obj = f13380j.get(this);
            kotlin.jvm.internal.r.b(obj);
            cVar = (c) obj;
        }
        return bVar.h(j10, cVar, this);
    }

    private final void g1(boolean z10) {
        f13381k.set(this, z10 ? 1 : 0);
    }

    private final boolean h1(b bVar) {
        c cVar = (c) f13380j.get(this);
        return (cVar != null ? (b) cVar.f() : null) == bVar;
    }

    @Override // kotlinx.coroutines.s0
    protected long I0() {
        b bVar;
        if (super.I0() == 0) {
            return 0L;
        }
        Object obj = f13379i.get(this);
        if (obj != null) {
            if (!(obj instanceof kotlinx.coroutines.internal.t)) {
                return obj == w0.f13391b ? Long.MAX_VALUE : 0L;
            }
            if (!((kotlinx.coroutines.internal.t) obj).j()) {
                return 0L;
            }
        }
        c cVar = (c) f13380j.get(this);
        if (cVar == null || (bVar = (b) cVar.f()) == null) {
            return Long.MAX_VALUE;
        }
        long j10 = bVar.f13384a;
        kotlinx.coroutines.c.a();
        return b9.d.d(j10 - System.nanoTime(), 0L);
    }

    public void U0(Runnable runnable) {
        if (V0(runnable)) {
            Q0();
        } else {
            h0.INSTANCE.U0(runnable);
        }
    }

    protected boolean a1() {
        if (!M0()) {
            return false;
        }
        c cVar = (c) f13380j.get(this);
        if (cVar != null && !cVar.e()) {
            return false;
        }
        Object obj = f13379i.get(this);
        if (obj != null) {
            if (obj instanceof kotlinx.coroutines.internal.t) {
                return ((kotlinx.coroutines.internal.t) obj).j();
            }
            if (obj != w0.f13391b) {
                return false;
            }
        }
        return true;
    }

    public long b1() {
        kotlinx.coroutines.internal.n0 n0VarI;
        if (N0()) {
            return 0L;
        }
        c cVar = (c) f13380j.get(this);
        if (cVar != null && !cVar.e()) {
            kotlinx.coroutines.c.a();
            long jNanoTime = System.nanoTime();
            do {
                synchronized (cVar) {
                    try {
                        kotlinx.coroutines.internal.n0 n0VarB = cVar.b();
                        if (n0VarB != null) {
                            b bVar = (b) n0VarB;
                            n0VarI = bVar.i(jNanoTime) ? V0(bVar) : false ? cVar.i(0) : null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } while (((b) n0VarI) != null);
        }
        Runnable runnableT0 = T0();
        if (runnableT0 == null) {
            return I0();
        }
        runnableT0.run();
        return 0L;
    }

    protected final void d1() {
        f13379i.set(this, null);
        f13380j.set(this, null);
    }

    public final void e1(long j10, b bVar) {
        int iF1 = f1(j10, bVar);
        if (iF1 == 0) {
            if (h1(bVar)) {
                Q0();
            }
        } else if (iF1 == 1) {
            P0(j10, bVar);
        } else if (iF1 != 2) {
            throw new IllegalStateException("unexpected result");
        }
    }

    @Override // kotlinx.coroutines.s0
    public void shutdown() {
        z1.INSTANCE.b();
        g1(true);
        S0();
        while (b1() <= 0) {
        }
        c1();
    }

    @Override // kotlinx.coroutines.j0
    public void x(long j10, i iVar) {
        long jC = w0.c(j10);
        if (jC < 4611686018427387903L) {
            kotlinx.coroutines.c.a();
            long jNanoTime = System.nanoTime();
            a aVar = new a(jC + jNanoTime, iVar);
            e1(jNanoTime, aVar);
            l.a(iVar, aVar);
        }
    }

    @Override // kotlinx.coroutines.y
    public final void x0(kotlin.coroutines.g gVar, Runnable runnable) {
        U0(runnable);
    }
}
