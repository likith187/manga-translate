package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13258a = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13259b = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public d(d dVar) {
        this._prev$volatile = dVar;
    }

    private final d d() {
        d dVarH = h();
        while (dVarH != null && dVarH.k()) {
            dVarH = (d) f13259b.get(dVarH);
        }
        return dVarH;
    }

    private final d e() {
        d dVarF;
        d dVarF2 = f();
        kotlin.jvm.internal.r.b(dVarF2);
        while (dVarF2.k() && (dVarF = dVarF2.f()) != null) {
            dVarF2 = dVarF;
        }
        return dVarF2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g() {
        return f13258a.get(this);
    }

    public final void c() {
        f13259b.set(this, null);
    }

    public final d f() {
        Object objG = g();
        if (objG == c.f13256a) {
            return null;
        }
        return (d) objG;
    }

    public final d h() {
        return (d) f13259b.get(this);
    }

    public abstract boolean k();

    public final boolean l() {
        return f() == null;
    }

    public final boolean m() {
        return androidx.concurrent.futures.b.a(f13258a, this, null, c.f13256a);
    }

    public final void n() {
        Object obj;
        if (l()) {
            return;
        }
        while (true) {
            d dVarD = d();
            d dVarE = e();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13259b;
            do {
                obj = atomicReferenceFieldUpdater.get(dVarE);
            } while (!androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, dVarE, obj, ((d) obj) == null ? null : dVarD));
            if (dVarD != null) {
                f13258a.set(dVarD, dVarE);
            }
            if (!dVarE.k() || dVarE.l()) {
                if (dVarD == null || !dVarD.k()) {
                    return;
                }
            }
        }
    }

    public final boolean o(d dVar) {
        return androidx.concurrent.futures.b.a(f13258a, this, null, dVar);
    }
}
