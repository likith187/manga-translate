package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.z1;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends kotlinx.coroutines.m0 implements kotlin.coroutines.jvm.internal.e, kotlin.coroutines.d {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13269k = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final kotlinx.coroutines.y f13270f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final kotlin.coroutines.d f13271h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f13272i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f13273j;

    public j(kotlinx.coroutines.y yVar, kotlin.coroutines.d dVar) {
        super(-1);
        this.f13270f = yVar;
        this.f13271h = dVar;
        this.f13272i = k.f13274a;
        this.f13273j = k0.b(getContext());
    }

    private final kotlinx.coroutines.j o() {
        Object obj = f13269k.get(this);
        if (obj instanceof kotlinx.coroutines.j) {
            return (kotlinx.coroutines.j) obj;
        }
        return null;
    }

    @Override // kotlinx.coroutines.m0
    public void c(Object obj, Throwable th) {
        if (obj instanceof kotlinx.coroutines.u) {
            ((kotlinx.coroutines.u) obj).f13388b.invoke(th);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.e
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        kotlin.coroutines.d dVar = this.f13271h;
        if (dVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) dVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.d
    public kotlin.coroutines.g getContext() {
        return this.f13271h.getContext();
    }

    @Override // kotlinx.coroutines.m0
    public kotlin.coroutines.d h() {
        return this;
    }

    @Override // kotlinx.coroutines.m0
    public Object l() {
        Object obj = this.f13272i;
        this.f13272i = k.f13274a;
        return obj;
    }

    public final void m() {
        while (f13269k.get(this) == k.f13275b) {
        }
    }

    public final kotlinx.coroutines.j n() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13269k;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                f13269k.set(this, k.f13275b);
                return null;
            }
            if (obj instanceof kotlinx.coroutines.j) {
                if (androidx.concurrent.futures.b.a(f13269k, this, obj, k.f13275b)) {
                    return (kotlinx.coroutines.j) obj;
                }
            } else if (obj != k.f13275b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final boolean q() {
        return f13269k.get(this) != null;
    }

    public final boolean r(Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13269k;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            g0 g0Var = k.f13275b;
            if (kotlin.jvm.internal.r.a(obj, g0Var)) {
                if (androidx.concurrent.futures.b.a(f13269k, this, g0Var, th)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (androidx.concurrent.futures.b.a(f13269k, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(Object obj) {
        kotlin.coroutines.g context = this.f13271h.getContext();
        Object objD = kotlinx.coroutines.w.d(obj, null, 1, null);
        if (this.f13270f.D0(context)) {
            this.f13272i = objD;
            this.f13320c = 0;
            this.f13270f.x0(context, this);
            return;
        }
        s0 s0VarA = z1.INSTANCE.a();
        if (s0VarA.L0()) {
            this.f13272i = objD;
            this.f13320c = 0;
            s0VarA.H0(this);
            return;
        }
        s0VarA.J0(true);
        try {
            kotlin.coroutines.g context2 = getContext();
            Object objC = k0.c(context2, this.f13273j);
            try {
                this.f13271h.resumeWith(obj);
                n8.h0 h0Var = n8.h0.INSTANCE;
                while (s0VarA.N0()) {
                }
            } finally {
                k0.a(context2, objC);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public final void s() {
        m();
        kotlinx.coroutines.j jVarO = o();
        if (jVarO != null) {
            jVarO.s();
        }
    }

    public final Throwable t(kotlinx.coroutines.i iVar) {
        g0 g0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13269k;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            g0Var = k.f13275b;
            if (obj != g0Var) {
                if (obj instanceof Throwable) {
                    if (androidx.concurrent.futures.b.a(f13269k, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!androidx.concurrent.futures.b.a(f13269k, this, g0Var, iVar));
        return null;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.f13270f + ", " + kotlinx.coroutines.g0.c(this.f13271h) + AbstractJsonLexerKt.END_LIST;
    }
}
