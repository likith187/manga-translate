package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlinx.coroutines.channels.h;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.internal.d0;
import kotlinx.coroutines.internal.e0;
import n8.h0;
import w8.l;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13363c = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "head$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f13364d = AtomicLongFieldUpdater.newUpdater(d.class, "deqIdx$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13365e = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "tail$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f13366f = AtomicLongFieldUpdater.newUpdater(d.class, "enqIdx$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f13367g = AtomicIntegerFieldUpdater.newUpdater(d.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f13368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l f13369b;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    /* synthetic */ class a extends o implements p {
        public static final a INSTANCE = new a();

        a() {
            super(2, e.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke(((Number) obj).longValue(), (f) obj2);
        }

        public final f invoke(long j10, f fVar) {
            return e.h(j10, fVar);
        }
    }

    static final class b extends s implements l {
        b() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Throwable) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Throwable th) {
            d.this.m();
        }
    }

    /* synthetic */ class c extends o implements p {
        public static final c INSTANCE = new c();

        c() {
            super(2, e.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke(((Number) obj).longValue(), (f) obj2);
        }

        public final f invoke(long j10, f fVar) {
            return e.h(j10, fVar);
        }
    }

    public d(int i10, int i11) {
        this.f13368a = i10;
        if (i10 <= 0) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i10).toString());
        }
        if (i11 < 0 || i11 > i10) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i10).toString());
        }
        f fVar = new f(0L, null, 2);
        this.head$volatile = fVar;
        this.tail$volatile = fVar;
        this._availablePermits$volatile = i10 - i11;
        this.f13369b = new b();
    }

    private final boolean d(e2 e2Var) {
        Object objC;
        f fVar = (f) f13365e.get(this);
        long andIncrement = f13366f.getAndIncrement(this);
        a aVar = a.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13365e;
        long j10 = andIncrement / ((long) e.f13375f);
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.c.c(fVar, j10, aVar);
            if (!e0.c(objC)) {
                d0 d0VarB = e0.b(objC);
                while (true) {
                    d0 d0Var = (d0) atomicReferenceFieldUpdater.get(this);
                    if (d0Var.f13261c >= d0VarB.f13261c) {
                        break loop0;
                    }
                    if (!d0VarB.u()) {
                        break;
                    }
                    if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, d0Var, d0VarB)) {
                        if (d0Var.p()) {
                            d0Var.n();
                        }
                    } else if (d0VarB.p()) {
                        d0VarB.n();
                    }
                }
            } else {
                break;
            }
        }
        f fVar2 = (f) e0.b(objC);
        int i10 = (int) (andIncrement % ((long) e.f13375f));
        if (h.a(fVar2.v(), i10, null, e2Var)) {
            e2Var.b(fVar2, i10);
            return true;
        }
        if (!h.a(fVar2.v(), i10, e.f13371b, e.f13372c)) {
            return false;
        }
        if (e2Var instanceof i) {
            r.c(e2Var, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            ((i) e2Var).e(h0.INSTANCE, this.f13369b);
            return true;
        }
        throw new IllegalStateException(("unexpected: " + e2Var).toString());
    }

    private final void e() {
        int i10;
        do {
            i10 = f13367g.get(this);
            if (i10 <= this.f13368a) {
                return;
            }
        } while (!f13367g.compareAndSet(this, i10, this.f13368a));
    }

    private final int f() {
        int andDecrement;
        do {
            andDecrement = f13367g.getAndDecrement(this);
        } while (andDecrement > this.f13368a);
        return andDecrement;
    }

    private final boolean o(Object obj) {
        if (!(obj instanceof i)) {
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
        r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        i iVar = (i) obj;
        Object objD = iVar.d(h0.INSTANCE, null, this.f13369b);
        if (objD == null) {
            return false;
        }
        iVar.g(objD);
        return true;
    }

    private final boolean p() {
        Object objC;
        f fVar = (f) f13363c.get(this);
        long andIncrement = f13364d.getAndIncrement(this);
        long j10 = andIncrement / ((long) e.f13375f);
        c cVar = c.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13363c;
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.c.c(fVar, j10, cVar);
            if (e0.c(objC)) {
                break;
            }
            d0 d0VarB = e0.b(objC);
            while (true) {
                d0 d0Var = (d0) atomicReferenceFieldUpdater.get(this);
                if (d0Var.f13261c >= d0VarB.f13261c) {
                    break loop0;
                }
                if (!d0VarB.u()) {
                    break;
                }
                if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, d0Var, d0VarB)) {
                    if (d0Var.p()) {
                        d0Var.n();
                    }
                } else if (d0VarB.p()) {
                    d0VarB.n();
                }
            }
        }
        f fVar2 = (f) e0.b(objC);
        fVar2.c();
        if (fVar2.f13261c > j10) {
            return false;
        }
        int i10 = (int) (andIncrement % ((long) e.f13375f));
        Object andSet = fVar2.v().getAndSet(i10, e.f13371b);
        if (andSet != null) {
            if (andSet == e.f13374e) {
                return false;
            }
            return o(andSet);
        }
        int i11 = e.f13370a;
        for (int i12 = 0; i12 < i11; i12++) {
            if (fVar2.v().get(i10) == e.f13372c) {
                return true;
            }
        }
        return !h.a(fVar2.v(), i10, e.f13371b, e.f13373d);
    }

    protected final void c(i iVar) {
        while (f() <= 0) {
            r.c(iVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (d((e2) iVar)) {
                return;
            }
        }
        iVar.e(h0.INSTANCE, this.f13369b);
    }

    public int g() {
        return Math.max(f13367g.get(this), 0);
    }

    public void m() {
        do {
            int andIncrement = f13367g.getAndIncrement(this);
            if (andIncrement >= this.f13368a) {
                e();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.f13368a).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!p());
    }

    public boolean n() {
        while (true) {
            int i10 = f13367g.get(this);
            if (i10 > this.f13368a) {
                e();
            } else {
                if (i10 <= 0) {
                    return false;
                }
                if (f13367g.compareAndSet(this, i10, i10 - 1)) {
                    return true;
                }
            }
        }
    }
}
