package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.h;

/* JADX INFO: loaded from: classes2.dex */
public class j extends m0 implements i, kotlin.coroutines.jvm.internal.e, e2 {

    /* JADX INFO: renamed from: i */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f13311i = AtomicIntegerFieldUpdater.newUpdater(j.class, "_decisionAndIndex$volatile");

    /* JADX INFO: renamed from: j */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13312j = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_state$volatile");

    /* JADX INFO: renamed from: k */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13313k = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* JADX INFO: renamed from: f */
    private final kotlin.coroutines.d f13314f;

    /* JADX INFO: renamed from: h */
    private final kotlin.coroutines.g f13315h;

    public j(kotlin.coroutines.d dVar, int i10) {
        super(i10);
        this.f13314f = dVar;
        this.f13315h = dVar.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = d.INSTANCE;
    }

    private final p0 E() {
        f1 f1Var = (f1) getContext().get(f1.f13228g);
        if (f1Var == null) {
            return null;
        }
        p0 p0VarH = k1.h(f1Var, true, false, new n(this), 2, null);
        androidx.concurrent.futures.b.a(f13313k, this, null, p0VarH);
        return p0VarH;
    }

    private final void F(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13312j;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof d)) {
                if (obj2 instanceof h ? true : obj2 instanceof kotlinx.coroutines.internal.d0) {
                    J(obj, obj2);
                } else {
                    if (obj2 instanceof t) {
                        t tVar = (t) obj2;
                        if (!tVar.c()) {
                            J(obj, obj2);
                        }
                        if (obj2 instanceof m) {
                            if (!(obj2 instanceof t)) {
                                tVar = null;
                            }
                            Throwable th = tVar != null ? tVar.f13378a : null;
                            if (obj instanceof h) {
                                n((h) obj, th);
                                return;
                            } else {
                                kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                                p((kotlinx.coroutines.internal.d0) obj, th);
                                return;
                            }
                        }
                        return;
                    }
                    if (obj2 instanceof s) {
                        s sVar = (s) obj2;
                        if (sVar.f13349b != null) {
                            J(obj, obj2);
                        }
                        if (obj instanceof kotlinx.coroutines.internal.d0) {
                            return;
                        }
                        kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        h hVar = (h) obj;
                        if (sVar.c()) {
                            n(hVar, sVar.f13352e);
                            return;
                        } else {
                            if (androidx.concurrent.futures.b.a(f13312j, this, obj2, s.b(sVar, null, hVar, null, null, null, 29, null))) {
                                return;
                            }
                        }
                    } else {
                        if (obj instanceof kotlinx.coroutines.internal.d0) {
                            return;
                        }
                        kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        if (androidx.concurrent.futures.b.a(f13312j, this, obj2, new s(obj2, (h) obj, null, null, null, 28, null))) {
                            return;
                        }
                    }
                }
            } else if (androidx.concurrent.futures.b.a(f13312j, this, obj2, obj)) {
                return;
            }
        }
    }

    private final boolean I() {
        if (n0.c(this.f13320c)) {
            kotlin.coroutines.d dVar = this.f13314f;
            kotlin.jvm.internal.r.c(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((kotlinx.coroutines.internal.j) dVar).q()) {
                return true;
            }
        }
        return false;
    }

    private final void J(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    private final void O(Object obj, int i10, w8.l lVar) {
        Object obj2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13312j;
        do {
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof s1)) {
                if (obj2 instanceof m) {
                    m mVar = (m) obj2;
                    if (mVar.e()) {
                        if (lVar != null) {
                            o(lVar, mVar.f13378a);
                            return;
                        }
                        return;
                    }
                }
                m(obj);
                throw new n8.i();
            }
        } while (!androidx.concurrent.futures.b.a(f13312j, this, obj2, Q((s1) obj2, obj, i10, lVar, null)));
        t();
        u(i10);
    }

    static /* synthetic */ void P(j jVar, Object obj, int i10, w8.l lVar, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        jVar.O(obj, i10, lVar);
    }

    private final Object Q(s1 s1Var, Object obj, int i10, w8.l lVar, Object obj2) {
        if (obj instanceof t) {
            return obj;
        }
        if (!n0.b(i10) && obj2 == null) {
            return obj;
        }
        if (lVar == null && !(s1Var instanceof h) && obj2 == null) {
            return obj;
        }
        return new s(obj, s1Var instanceof h ? (h) s1Var : null, lVar, obj2, null, 16, null);
    }

    private final boolean R() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f13311i;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f13311i.compareAndSet(this, i10, 1073741824 + (536870911 & i10)));
        return true;
    }

    private final kotlinx.coroutines.internal.g0 S(Object obj, Object obj2, w8.l lVar) {
        Object obj3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13312j;
        do {
            obj3 = atomicReferenceFieldUpdater.get(this);
            if (!(obj3 instanceof s1)) {
                if ((obj3 instanceof s) && obj2 != null && ((s) obj3).f13351d == obj2) {
                    return k.f13316a;
                }
                return null;
            }
        } while (!androidx.concurrent.futures.b.a(f13312j, this, obj3, Q((s1) obj3, obj, this.f13320c, lVar, obj2)));
        t();
        return k.f13316a;
    }

    private final boolean T() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f13311i;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f13311i.compareAndSet(this, i10, 536870912 + (536870911 & i10)));
        return true;
    }

    private final Void m(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final void p(kotlinx.coroutines.internal.d0 d0Var, Throwable th) {
        int i10 = f13311i.get(this) & 536870911;
        if (i10 == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            d0Var.s(i10, th, getContext());
        } catch (Throwable th2) {
            a0.a(getContext(), new v("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    private final boolean r(Throwable th) {
        if (!I()) {
            return false;
        }
        kotlin.coroutines.d dVar = this.f13314f;
        kotlin.jvm.internal.r.c(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((kotlinx.coroutines.internal.j) dVar).r(th);
    }

    private final void t() {
        if (I()) {
            return;
        }
        s();
    }

    private final void u(int i10) {
        if (R()) {
            return;
        }
        n0.a(this, i10);
    }

    private final p0 w() {
        return (p0) f13313k.get(this);
    }

    private final String z() {
        Object objY = y();
        return objY instanceof s1 ? "Active" : objY instanceof m ? "Cancelled" : "Completed";
    }

    public void D() {
        p0 p0VarE = E();
        if (p0VarE != null && H()) {
            p0VarE.a();
            f13313k.set(this, r1.INSTANCE);
        }
    }

    public final void G(h hVar) {
        F(hVar);
    }

    public boolean H() {
        return !(y() instanceof s1);
    }

    protected String K() {
        return "CancellableContinuation";
    }

    public final void L(Throwable th) {
        if (r(th)) {
            return;
        }
        q(th);
        t();
    }

    public final void M() {
        Throwable thT;
        kotlin.coroutines.d dVar = this.f13314f;
        kotlinx.coroutines.internal.j jVar = dVar instanceof kotlinx.coroutines.internal.j ? (kotlinx.coroutines.internal.j) dVar : null;
        if (jVar == null || (thT = jVar.t(this)) == null) {
            return;
        }
        s();
        q(thT);
    }

    public final boolean N() {
        Object obj = f13312j.get(this);
        if ((obj instanceof s) && ((s) obj).f13351d != null) {
            s();
            return false;
        }
        f13311i.set(this, 536870911);
        f13312j.set(this, d.INSTANCE);
        return true;
    }

    @Override // kotlinx.coroutines.i
    public void a(y yVar, Object obj) {
        kotlin.coroutines.d dVar = this.f13314f;
        kotlinx.coroutines.internal.j jVar = dVar instanceof kotlinx.coroutines.internal.j ? (kotlinx.coroutines.internal.j) dVar : null;
        P(this, obj, (jVar != null ? jVar.f13270f : null) == yVar ? 4 : this.f13320c, null, 4, null);
    }

    @Override // kotlinx.coroutines.e2
    public void b(kotlinx.coroutines.internal.d0 d0Var, int i10) {
        int i11;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f13311i;
        do {
            i11 = atomicIntegerFieldUpdater.get(this);
            if ((i11 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i11, ((i11 >> 29) << 29) + i10));
        F(d0Var);
    }

    @Override // kotlinx.coroutines.m0
    public void c(Object obj, Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13312j;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof s1) {
                throw new IllegalStateException("Not completed");
            }
            if (obj2 instanceof t) {
                return;
            }
            if (obj2 instanceof s) {
                s sVar = (s) obj2;
                if (sVar.c()) {
                    throw new IllegalStateException("Must be called at most once");
                }
                if (androidx.concurrent.futures.b.a(f13312j, this, obj2, s.b(sVar, null, null, null, null, th, 15, null))) {
                    sVar.d(this, th);
                    return;
                }
            } else if (androidx.concurrent.futures.b.a(f13312j, this, obj2, new s(obj2, null, null, null, th, 14, null))) {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.i
    public Object d(Object obj, Object obj2, w8.l lVar) {
        return S(obj, obj2, lVar);
    }

    @Override // kotlinx.coroutines.i
    public void e(Object obj, w8.l lVar) {
        O(obj, this.f13320c, lVar);
    }

    @Override // kotlinx.coroutines.i
    public void f(w8.l lVar) {
        l.c(this, new h.a(lVar));
    }

    @Override // kotlinx.coroutines.i
    public void g(Object obj) {
        u(this.f13320c);
    }

    @Override // kotlin.coroutines.jvm.internal.e
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        kotlin.coroutines.d dVar = this.f13314f;
        if (dVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) dVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.d
    public kotlin.coroutines.g getContext() {
        return this.f13315h;
    }

    @Override // kotlinx.coroutines.m0
    public final kotlin.coroutines.d h() {
        return this.f13314f;
    }

    @Override // kotlinx.coroutines.m0
    public Throwable i(Object obj) {
        Throwable thI = super.i(obj);
        if (thI != null) {
            return thI;
        }
        return null;
    }

    @Override // kotlinx.coroutines.m0
    public Object j(Object obj) {
        return obj instanceof s ? ((s) obj).f13348a : obj;
    }

    @Override // kotlinx.coroutines.m0
    public Object l() {
        return y();
    }

    public final void n(h hVar, Throwable th) {
        try {
            hVar.b(th);
        } catch (Throwable th2) {
            a0.a(getContext(), new v("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void o(w8.l lVar, Throwable th) {
        try {
            lVar.invoke(th);
        } catch (Throwable th2) {
            a0.a(getContext(), new v("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    public boolean q(Throwable th) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13312j;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof s1)) {
                return false;
            }
        } while (!androidx.concurrent.futures.b.a(f13312j, this, obj, new m(this, th, (obj instanceof h) || (obj instanceof kotlinx.coroutines.internal.d0))));
        s1 s1Var = (s1) obj;
        if (s1Var instanceof h) {
            n((h) obj, th);
        } else if (s1Var instanceof kotlinx.coroutines.internal.d0) {
            p((kotlinx.coroutines.internal.d0) obj, th);
        }
        t();
        u(this.f13320c);
        return true;
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(Object obj) {
        P(this, w.b(obj, this), this.f13320c, null, 4, null);
    }

    public final void s() {
        p0 p0VarW = w();
        if (p0VarW == null) {
            return;
        }
        p0VarW.a();
        f13313k.set(this, r1.INSTANCE);
    }

    public String toString() {
        return K() + '(' + g0.c(this.f13314f) + "){" + z() + "}@" + g0.b(this);
    }

    public Throwable v(f1 f1Var) {
        return f1Var.N();
    }

    public final Object x() {
        f1 f1Var;
        boolean zI = I();
        if (T()) {
            if (w() == null) {
                E();
            }
            if (zI) {
                M();
            }
            return kotlin.coroutines.intrinsics.b.f();
        }
        if (zI) {
            M();
        }
        Object objY = y();
        if (objY instanceof t) {
            throw ((t) objY).f13378a;
        }
        if (!n0.b(this.f13320c) || (f1Var = (f1) getContext().get(f1.f13228g)) == null || f1Var.isActive()) {
            return j(objY);
        }
        CancellationException cancellationExceptionN = f1Var.N();
        c(objY, cancellationExceptionN);
        throw cancellationExceptionN;
    }

    public final Object y() {
        return f13312j.get(this);
    }
}
