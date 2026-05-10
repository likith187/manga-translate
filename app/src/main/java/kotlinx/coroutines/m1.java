package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.g;
import kotlinx.coroutines.c1;
import kotlinx.coroutines.f1;
import kotlinx.coroutines.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class m1 implements f1, q, t1 {

    /* JADX INFO: renamed from: a */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13321a = AtomicReferenceFieldUpdater.newUpdater(m1.class, Object.class, "_state$volatile");

    /* JADX INFO: renamed from: b */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13322b = AtomicReferenceFieldUpdater.newUpdater(m1.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    private static final class a extends l1 {

        /* JADX INFO: renamed from: h */
        private final m1 f13323h;

        /* JADX INFO: renamed from: i */
        private final b f13324i;

        /* JADX INFO: renamed from: j */
        private final p f13325j;

        /* JADX INFO: renamed from: k */
        private final Object f13326k;

        public a(m1 m1Var, b bVar, p pVar, Object obj) {
            this.f13323h = m1Var;
            this.f13324i = bVar;
            this.f13325j = pVar;
            this.f13326k = obj;
        }

        @Override // kotlinx.coroutines.c1
        public void b(Throwable th) {
            this.f13323h.u(this.f13324i, this.f13325j, this.f13326k);
        }
    }

    private static final class b implements a1 {

        /* JADX INFO: renamed from: b */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f13327b = AtomicIntegerFieldUpdater.newUpdater(b.class, "_isCompleting$volatile");

        /* JADX INFO: renamed from: c */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f13328c = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_rootCause$volatile");

        /* JADX INFO: renamed from: f */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f13329f = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_exceptionsHolder$volatile");
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile;
        private volatile /* synthetic */ Object _rootCause$volatile;

        /* JADX INFO: renamed from: a */
        private final q1 f13330a;

        public b(q1 q1Var, boolean z10, Throwable th) {
            this.f13330a = q1Var;
            this._isCompleting$volatile = z10 ? 1 : 0;
            this._rootCause$volatile = th;
        }

        private final ArrayList b() {
            return new ArrayList(4);
        }

        private final Object d() {
            return f13329f.get(this);
        }

        private final void n(Object obj) {
            f13329f.set(this, obj);
        }

        public final void a(Throwable th) {
            Throwable thE = e();
            if (thE == null) {
                o(th);
                return;
            }
            if (th == thE) {
                return;
            }
            Object objD = d();
            if (objD == null) {
                n(th);
                return;
            }
            if (objD instanceof Throwable) {
                if (th == objD) {
                    return;
                }
                ArrayList arrayListB = b();
                arrayListB.add(objD);
                arrayListB.add(th);
                n(arrayListB);
                return;
            }
            if (objD instanceof ArrayList) {
                ((ArrayList) objD).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + objD).toString());
        }

        @Override // kotlinx.coroutines.a1
        public q1 c() {
            return this.f13330a;
        }

        public final Throwable e() {
            return (Throwable) f13328c.get(this);
        }

        public final boolean i() {
            return e() != null;
        }

        @Override // kotlinx.coroutines.a1
        public boolean isActive() {
            return e() == null;
        }

        public final boolean j() {
            return f13327b.get(this) != 0;
        }

        public final boolean k() {
            return d() == n1.f13338e;
        }

        public final List l(Throwable th) {
            ArrayList arrayListB;
            Object objD = d();
            if (objD == null) {
                arrayListB = b();
            } else if (objD instanceof Throwable) {
                ArrayList arrayListB2 = b();
                arrayListB2.add(objD);
                arrayListB = arrayListB2;
            } else {
                if (!(objD instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + objD).toString());
                }
                arrayListB = (ArrayList) objD;
            }
            Throwable thE = e();
            if (thE != null) {
                arrayListB.add(0, thE);
            }
            if (th != null && !kotlin.jvm.internal.r.a(th, thE)) {
                arrayListB.add(th);
            }
            n(n1.f13338e);
            return arrayListB;
        }

        public final void m(boolean z10) {
            f13327b.set(this, z10 ? 1 : 0);
        }

        public final void o(Throwable th) {
            f13328c.set(this, th);
        }

        public String toString() {
            return "Finishing[cancelling=" + i() + ", completing=" + j() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + c() + AbstractJsonLexerKt.END_LIST;
        }
    }

    public static final class c extends r.a {

        /* JADX INFO: renamed from: d */
        final /* synthetic */ m1 f13331d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ Object f13332e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(kotlinx.coroutines.internal.r rVar, m1 m1Var, Object obj) {
            super(rVar);
            this.f13331d = m1Var;
            this.f13332e = obj;
        }

        @Override // kotlinx.coroutines.internal.b
        /* JADX INFO: renamed from: g */
        public Object e(kotlinx.coroutines.internal.r rVar) {
            if (this.f13331d.H() == this.f13332e) {
                return null;
            }
            return kotlinx.coroutines.internal.q.a();
        }
    }

    public m1(boolean z10) {
        this._state$volatile = z10 ? n1.f13340g : n1.f13339f;
    }

    private final Throwable A(b bVar, List list) {
        Object next;
        Object obj = null;
        if (list.isEmpty()) {
            if (bVar.i()) {
                return new g1(r(), null, this);
            }
            return null;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (!(((Throwable) next) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) list.get(0);
        if (th2 instanceof a2) {
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next2 = it2.next();
                Throwable th3 = (Throwable) next2;
                if (th3 != th2 && (th3 instanceof a2)) {
                    obj = next2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    private final q1 E(a1 a1Var) {
        q1 q1VarC = a1Var.c();
        if (q1VarC != null) {
            return q1VarC;
        }
        if (a1Var instanceof r0) {
            return new q1();
        }
        if (a1Var instanceof l1) {
            i0((l1) a1Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + a1Var).toString());
    }

    private final boolean S() {
        Object objH;
        do {
            objH = H();
            if (!(objH instanceof a1)) {
                return false;
            }
        } while (l0(objH) < 0);
        return true;
    }

    private final Object T(kotlin.coroutines.d dVar) {
        j jVar = new j(kotlin.coroutines.intrinsics.b.c(dVar), 1);
        jVar.D();
        l.a(jVar, k1.h(this, false, false, new u1(jVar), 3, null));
        Object objX = jVar.x();
        if (objX == kotlin.coroutines.intrinsics.b.f()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objX == kotlin.coroutines.intrinsics.b.f() ? objX : n8.h0.INSTANCE;
    }

    private final Object U(Object obj) throws Throwable {
        Throwable thW = null;
        while (true) {
            Object objH = H();
            if (objH instanceof b) {
                synchronized (objH) {
                    if (((b) objH).k()) {
                        return n1.f13337d;
                    }
                    boolean zI = ((b) objH).i();
                    if (obj != null || !zI) {
                        if (thW == null) {
                            thW = w(obj);
                        }
                        ((b) objH).a(thW);
                    }
                    Throwable thE = zI ? null : ((b) objH).e();
                    if (thE != null) {
                        c0(((b) objH).c(), thE);
                    }
                    return n1.f13334a;
                }
            }
            if (!(objH instanceof a1)) {
                return n1.f13337d;
            }
            if (thW == null) {
                thW = w(obj);
            }
            a1 a1Var = (a1) objH;
            if (!a1Var.isActive()) {
                Object objT0 = t0(objH, new t(thW, false, 2, null));
                if (objT0 == n1.f13334a) {
                    throw new IllegalStateException(("Cannot happen in " + objH).toString());
                }
                if (objT0 != n1.f13336c) {
                    return objT0;
                }
            } else if (s0(a1Var, thW)) {
                return n1.f13334a;
            }
        }
    }

    private final l1 W(c1 c1Var, boolean z10) {
        l1 e1Var;
        if (z10) {
            e1Var = c1Var instanceof h1 ? (h1) c1Var : null;
            if (e1Var == null) {
                e1Var = new d1(c1Var);
            }
        } else {
            e1Var = c1Var instanceof l1 ? (l1) c1Var : null;
            if (e1Var == null) {
                e1Var = new e1(c1Var);
            }
        }
        e1Var.w(this);
        return e1Var;
    }

    private final p Z(kotlinx.coroutines.internal.r rVar) {
        while (rVar.q()) {
            rVar = rVar.m();
        }
        while (true) {
            rVar = rVar.l();
            if (!rVar.q()) {
                if (rVar instanceof p) {
                    return (p) rVar;
                }
                if (rVar instanceof q1) {
                    return null;
                }
            }
        }
    }

    private final void c0(q1 q1Var, Throwable th) throws Throwable {
        e0(th);
        Object objK = q1Var.k();
        kotlin.jvm.internal.r.c(objK, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        v vVar = null;
        for (kotlinx.coroutines.internal.r rVarL = (kotlinx.coroutines.internal.r) objK; !kotlin.jvm.internal.r.a(rVarL, q1Var); rVarL = rVarL.l()) {
            if (rVarL instanceof h1) {
                l1 l1Var = (l1) rVarL;
                try {
                    l1Var.b(th);
                } catch (Throwable th2) {
                    if (vVar != null) {
                        n8.e.a(vVar, th2);
                    } else {
                        vVar = new v("Exception in completion handler " + l1Var + " for " + this, th2);
                        n8.h0 h0Var = n8.h0.INSTANCE;
                    }
                }
            }
        }
        if (vVar != null) {
            M(vVar);
        }
        q(th);
    }

    private final void d0(q1 q1Var, Throwable th) throws Throwable {
        Object objK = q1Var.k();
        kotlin.jvm.internal.r.c(objK, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        v vVar = null;
        for (kotlinx.coroutines.internal.r rVarL = (kotlinx.coroutines.internal.r) objK; !kotlin.jvm.internal.r.a(rVarL, q1Var); rVarL = rVarL.l()) {
            if (rVarL instanceof l1) {
                l1 l1Var = (l1) rVarL;
                try {
                    l1Var.b(th);
                } catch (Throwable th2) {
                    if (vVar != null) {
                        n8.e.a(vVar, th2);
                    } else {
                        vVar = new v("Exception in completion handler " + l1Var + " for " + this, th2);
                        n8.h0 h0Var = n8.h0.INSTANCE;
                    }
                }
            }
        }
        if (vVar != null) {
            M(vVar);
        }
    }

    private final void h0(r0 r0Var) {
        q1 q1Var = new q1();
        Object z0Var = q1Var;
        if (!r0Var.isActive()) {
            z0Var = new z0(q1Var);
        }
        androidx.concurrent.futures.b.a(f13321a, this, r0Var, z0Var);
    }

    private final void i0(l1 l1Var) {
        l1Var.g(new q1());
        androidx.concurrent.futures.b.a(f13321a, this, l1Var, l1Var.l());
    }

    private final boolean j(Object obj, q1 q1Var, l1 l1Var) {
        int iU;
        c cVar = new c(l1Var, this, obj);
        do {
            iU = q1Var.m().u(l1Var, q1Var, cVar);
            if (iU == 1) {
                return true;
            }
        } while (iU != 2);
        return false;
    }

    private final void l(Throwable th, List list) {
        if (list.size() <= 1) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Throwable th2 = (Throwable) it.next();
            if (th2 != th && th2 != th && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                n8.e.a(th, th2);
            }
        }
    }

    private final int l0(Object obj) {
        if (obj instanceof r0) {
            if (((r0) obj).isActive()) {
                return 0;
            }
            if (!androidx.concurrent.futures.b.a(f13321a, this, obj, n1.f13340g)) {
                return -1;
            }
            g0();
            return 1;
        }
        if (!(obj instanceof z0)) {
            return 0;
        }
        if (!androidx.concurrent.futures.b.a(f13321a, this, obj, ((z0) obj).c())) {
            return -1;
        }
        g0();
        return 1;
    }

    private final String m0(Object obj) {
        if (!(obj instanceof b)) {
            return obj instanceof a1 ? ((a1) obj).isActive() ? "Active" : "New" : obj instanceof t ? "Cancelled" : "Completed";
        }
        b bVar = (b) obj;
        return bVar.i() ? "Cancelling" : bVar.j() ? "Completing" : "Active";
    }

    public static /* synthetic */ CancellationException o0(m1 m1Var, Throwable th, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        return m1Var.n0(th, str);
    }

    private final Object p(Object obj) {
        Object objT0;
        do {
            Object objH = H();
            if (!(objH instanceof a1) || ((objH instanceof b) && ((b) objH).j())) {
                return n1.f13334a;
            }
            objT0 = t0(objH, new t(w(obj), false, 2, null));
        } while (objT0 == n1.f13336c);
        return objT0;
    }

    private final boolean q(Throwable th) {
        if (R()) {
            return true;
        }
        boolean z10 = th instanceof CancellationException;
        o oVarF = F();
        return (oVarF == null || oVarF == r1.INSTANCE) ? z10 : oVarF.e(th) || z10;
    }

    private final boolean r0(a1 a1Var, Object obj) throws Throwable {
        if (!androidx.concurrent.futures.b.a(f13321a, this, a1Var, n1.g(obj))) {
            return false;
        }
        e0(null);
        f0(obj);
        t(a1Var, obj);
        return true;
    }

    private final boolean s0(a1 a1Var, Throwable th) throws Throwable {
        q1 q1VarE = E(a1Var);
        if (q1VarE == null) {
            return false;
        }
        if (!androidx.concurrent.futures.b.a(f13321a, this, a1Var, new b(q1VarE, false, th))) {
            return false;
        }
        c0(q1VarE, th);
        return true;
    }

    private final void t(a1 a1Var, Object obj) throws Throwable {
        o oVarF = F();
        if (oVarF != null) {
            oVarF.a();
            k0(r1.INSTANCE);
        }
        t tVar = obj instanceof t ? (t) obj : null;
        Throwable th = tVar != null ? tVar.f13378a : null;
        if (!(a1Var instanceof l1)) {
            q1 q1VarC = a1Var.c();
            if (q1VarC != null) {
                d0(q1VarC, th);
                return;
            }
            return;
        }
        try {
            ((l1) a1Var).b(th);
        } catch (Throwable th2) {
            M(new v("Exception in completion handler " + a1Var + " for " + this, th2));
        }
    }

    private final Object t0(Object obj, Object obj2) {
        return !(obj instanceof a1) ? n1.f13334a : ((!(obj instanceof r0) && !(obj instanceof l1)) || (obj instanceof p) || (obj2 instanceof t)) ? u0((a1) obj, obj2) : r0((a1) obj, obj2) ? obj2 : n1.f13336c;
    }

    public final void u(b bVar, p pVar, Object obj) {
        p pVarZ = Z(pVar);
        if (pVarZ == null || !w0(bVar, pVarZ, obj)) {
            m(x(bVar, obj));
        }
    }

    private final Object u0(a1 a1Var, Object obj) throws Throwable {
        q1 q1VarE = E(a1Var);
        if (q1VarE == null) {
            return n1.f13336c;
        }
        b bVar = a1Var instanceof b ? (b) a1Var : null;
        if (bVar == null) {
            bVar = new b(q1VarE, false, null);
        }
        kotlin.jvm.internal.c0 c0Var = new kotlin.jvm.internal.c0();
        synchronized (bVar) {
            if (bVar.j()) {
                return n1.f13334a;
            }
            bVar.m(true);
            if (bVar != a1Var && !androidx.concurrent.futures.b.a(f13321a, this, a1Var, bVar)) {
                return n1.f13336c;
            }
            boolean zI = bVar.i();
            t tVar = obj instanceof t ? (t) obj : null;
            if (tVar != null) {
                bVar.a(tVar.f13378a);
            }
            Throwable thE = zI ? null : bVar.e();
            c0Var.element = thE;
            n8.h0 h0Var = n8.h0.INSTANCE;
            if (thE != null) {
                c0(q1VarE, thE);
            }
            p pVarY = y(a1Var);
            return (pVarY == null || !w0(bVar, pVarY, obj)) ? x(bVar, obj) : n1.f13335b;
        }
    }

    private final Throwable w(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new g1(r(), null, this) : th;
        }
        kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((t1) obj).I();
    }

    private final boolean w0(b bVar, p pVar, Object obj) {
        while (k1.h(pVar.f13345h, false, false, new a(this, bVar, pVar, obj), 1, null) == r1.INSTANCE) {
            pVar = Z(pVar);
            if (pVar == null) {
                return false;
            }
        }
        return true;
    }

    private final Object x(b bVar, Object obj) throws Throwable {
        boolean zI;
        Throwable thA;
        t tVar = obj instanceof t ? (t) obj : null;
        Throwable th = tVar != null ? tVar.f13378a : null;
        synchronized (bVar) {
            zI = bVar.i();
            List listL = bVar.l(th);
            thA = A(bVar, listL);
            if (thA != null) {
                l(thA, listL);
            }
        }
        if (thA != null && thA != th) {
            obj = new t(thA, false, 2, null);
        }
        if (thA != null && (q(thA) || L(thA))) {
            kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((t) obj).c();
        }
        if (!zI) {
            e0(thA);
        }
        f0(obj);
        androidx.concurrent.futures.b.a(f13321a, this, bVar, n1.g(obj));
        t(bVar, obj);
        return obj;
    }

    private final p y(a1 a1Var) {
        p pVar = a1Var instanceof p ? (p) a1Var : null;
        if (pVar != null) {
            return pVar;
        }
        q1 q1VarC = a1Var.c();
        if (q1VarC != null) {
            return Z(q1VarC);
        }
        return null;
    }

    private final Throwable z(Object obj) {
        t tVar = obj instanceof t ? (t) obj : null;
        if (tVar != null) {
            return tVar.f13378a;
        }
        return null;
    }

    public boolean B() {
        return true;
    }

    public boolean C() {
        return false;
    }

    public final o F() {
        return (o) f13322b.get(this);
    }

    @Override // kotlinx.coroutines.f1
    public final Object G(kotlin.coroutines.d dVar) {
        if (S()) {
            Object objT = T(dVar);
            return objT == kotlin.coroutines.intrinsics.b.f() ? objT : n8.h0.INSTANCE;
        }
        j1.e(dVar.getContext());
        return n8.h0.INSTANCE;
    }

    public final Object H() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13321a;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof kotlinx.coroutines.internal.z)) {
                return obj;
            }
            ((kotlinx.coroutines.internal.z) obj).a(this);
        }
    }

    @Override // kotlinx.coroutines.t1
    public CancellationException I() {
        Throwable thE;
        Object objH = H();
        if (objH instanceof b) {
            thE = ((b) objH).e();
        } else if (objH instanceof t) {
            thE = ((t) objH).f13378a;
        } else {
            if (objH instanceof a1) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + objH).toString());
            }
            thE = null;
        }
        CancellationException cancellationException = thE instanceof CancellationException ? (CancellationException) thE : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        return new g1("Parent job is " + m0(objH), thE, this);
    }

    protected boolean L(Throwable th) {
        return false;
    }

    public void M(Throwable th) throws Throwable {
        throw th;
    }

    @Override // kotlinx.coroutines.f1
    public final CancellationException N() {
        Object objH = H();
        if (!(objH instanceof b)) {
            if (objH instanceof a1) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (objH instanceof t) {
                return o0(this, ((t) objH).f13378a, null, 1, null);
            }
            return new g1(g0.a(this) + " has completed normally", null, this);
        }
        Throwable thE = ((b) objH).e();
        if (thE != null) {
            CancellationException cancellationExceptionN0 = n0(thE, g0.a(this) + " is cancelling");
            if (cancellationExceptionN0 != null) {
                return cancellationExceptionN0;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    protected final void O(f1 f1Var) {
        if (f1Var == null) {
            k0(r1.INSTANCE);
            return;
        }
        f1Var.start();
        o oVarV0 = f1Var.v0(this);
        k0(oVarV0);
        if (Q()) {
            oVarV0.a();
            k0(r1.INSTANCE);
        }
    }

    public final p0 P(boolean z10, boolean z11, c1 c1Var) {
        l1 l1VarW = W(c1Var, z10);
        while (true) {
            Object objH = H();
            if (objH instanceof r0) {
                r0 r0Var = (r0) objH;
                if (!r0Var.isActive()) {
                    h0(r0Var);
                } else if (androidx.concurrent.futures.b.a(f13321a, this, objH, l1VarW)) {
                    return l1VarW;
                }
            } else {
                if (!(objH instanceof a1)) {
                    if (z11) {
                        t tVar = objH instanceof t ? (t) objH : null;
                        c1Var.b(tVar != null ? tVar.f13378a : null);
                    }
                    return r1.INSTANCE;
                }
                q1 q1VarC = ((a1) objH).c();
                if (q1VarC == null) {
                    kotlin.jvm.internal.r.c(objH, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    i0((l1) objH);
                } else {
                    p0 p0Var = r1.INSTANCE;
                    if (z10 && (objH instanceof b)) {
                        synchronized (objH) {
                            try {
                                thE = ((b) objH).e();
                                if (thE == null || ((c1Var instanceof p) && !((b) objH).j())) {
                                    if (j(objH, q1VarC, l1VarW)) {
                                        if (thE == null) {
                                            return l1VarW;
                                        }
                                        p0Var = l1VarW;
                                    }
                                }
                                n8.h0 h0Var = n8.h0.INSTANCE;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    if (thE != null) {
                        if (z11) {
                            c1Var.b(thE);
                        }
                        return p0Var;
                    }
                    if (j(objH, q1VarC, l1VarW)) {
                        return l1VarW;
                    }
                }
            }
        }
    }

    public final boolean Q() {
        return !(H() instanceof a1);
    }

    protected boolean R() {
        return false;
    }

    public final Object V(Object obj) {
        Object objT0;
        do {
            objT0 = t0(H(), obj);
            if (objT0 == n1.f13334a) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, z(obj));
            }
        } while (objT0 == n1.f13336c);
        return objT0;
    }

    @Override // kotlinx.coroutines.f1
    public void X(CancellationException cancellationException) throws Throwable {
        if (cancellationException == null) {
            cancellationException = new g1(r(), null, this);
        }
        o(cancellationException);
    }

    public String Y() {
        return g0.a(this);
    }

    @Override // kotlinx.coroutines.q
    public final void a0(t1 t1Var) throws Throwable {
        n(t1Var);
    }

    protected void e0(Throwable th) {
    }

    protected void f0(Object obj) {
    }

    @Override // kotlin.coroutines.g
    public Object fold(Object obj, w8.p pVar) {
        return f1.a.b(this, obj, pVar);
    }

    protected void g0() {
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public g.b get(g.c cVar) {
        return f1.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.g.b
    public final g.c getKey() {
        return f1.f13228g;
    }

    @Override // kotlinx.coroutines.f1
    public f1 getParent() {
        o oVarF = F();
        if (oVarF != null) {
            return oVarF.getParent();
        }
        return null;
    }

    @Override // kotlinx.coroutines.f1
    public final p0 i(boolean z10, boolean z11, w8.l lVar) {
        return P(z10, z11, new c1.a(lVar));
    }

    @Override // kotlinx.coroutines.f1
    public boolean isActive() {
        Object objH = H();
        return (objH instanceof a1) && ((a1) objH).isActive();
    }

    public final void j0(l1 l1Var) {
        Object objH;
        do {
            objH = H();
            if (!(objH instanceof l1)) {
                if (!(objH instanceof a1) || ((a1) objH).c() == null) {
                    return;
                }
                l1Var.r();
                return;
            }
            if (objH != l1Var) {
                return;
            }
        } while (!androidx.concurrent.futures.b.a(f13321a, this, objH, n1.f13340g));
    }

    public final void k0(o oVar) {
        f13322b.set(this, oVar);
    }

    protected void m(Object obj) {
    }

    @Override // kotlin.coroutines.g
    public kotlin.coroutines.g minusKey(g.c cVar) {
        return f1.a.d(this, cVar);
    }

    public final boolean n(Object obj) throws Throwable {
        Object objU = n1.f13334a;
        if (C() && (objU = p(obj)) == n1.f13335b) {
            return true;
        }
        if (objU == n1.f13334a) {
            objU = U(obj);
        }
        if (objU == n1.f13334a || objU == n1.f13335b) {
            return true;
        }
        if (objU == n1.f13337d) {
            return false;
        }
        m(objU);
        return true;
    }

    protected final CancellationException n0(Throwable th, String str) {
        CancellationException g1Var = th instanceof CancellationException ? (CancellationException) th : null;
        if (g1Var == null) {
            if (str == null) {
                str = r();
            }
            g1Var = new g1(str, th, this);
        }
        return g1Var;
    }

    public void o(Throwable th) throws Throwable {
        n(th);
    }

    public final String p0() {
        return Y() + AbstractJsonLexerKt.BEGIN_OBJ + m0(H()) + AbstractJsonLexerKt.END_OBJ;
    }

    @Override // kotlin.coroutines.g
    public kotlin.coroutines.g plus(kotlin.coroutines.g gVar) {
        return f1.a.e(this, gVar);
    }

    public String r() {
        return "Job was cancelled";
    }

    public boolean s(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return n(th) && B();
    }

    @Override // kotlinx.coroutines.f1
    public final boolean start() {
        int iL0;
        do {
            iL0 = l0(H());
            if (iL0 == 0) {
                return false;
            }
        } while (iL0 != 1);
        return true;
    }

    public String toString() {
        return p0() + '@' + g0.b(this);
    }

    @Override // kotlinx.coroutines.f1
    public final o v0(q qVar) {
        p0 p0VarH = k1.h(this, true, false, new p(qVar), 2, null);
        kotlin.jvm.internal.r.c(p0VarH, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (o) p0VarH;
    }
}
