package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13295a = AtomicReferenceFieldUpdater.newUpdater(r.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13296b = AtomicReferenceFieldUpdater.newUpdater(r.class, Object.class, "_prev$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13297c = AtomicReferenceFieldUpdater.newUpdater(r.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    public static abstract class a extends kotlinx.coroutines.internal.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final r f13298b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public r f13299c;

        public a(r rVar) {
            this.f13298b = rVar;
        }

        @Override // kotlinx.coroutines.internal.b
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void b(r rVar, Object obj) {
            boolean z10 = obj == null;
            r rVar2 = z10 ? this.f13298b : this.f13299c;
            if (rVar2 != null && androidx.concurrent.futures.b.a(r.n(), rVar, this, rVar2) && z10) {
                r rVar3 = this.f13298b;
                r rVar4 = this.f13299c;
                kotlin.jvm.internal.r.b(rVar4);
                rVar3.j(rVar4);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        if (androidx.concurrent.futures.b.a(kotlinx.coroutines.internal.r.f13295a, r3, r2, ((kotlinx.coroutines.internal.a0) r4).f13254a) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final kotlinx.coroutines.internal.r h(kotlinx.coroutines.internal.z r8) {
        /*
            r7 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = o()
            java.lang.Object r0 = r0.get(r7)
            kotlinx.coroutines.internal.r r0 = (kotlinx.coroutines.internal.r) r0
            r1 = 0
            r2 = r0
        Lc:
            r3 = r1
        Ld:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = n()
            java.lang.Object r4 = r4.get(r2)
            if (r4 != r7) goto L26
            if (r0 != r2) goto L1a
            return r2
        L1a:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = o()
            boolean r0 = androidx.concurrent.futures.b.a(r1, r7, r0, r2)
            if (r0 != 0) goto L25
            goto L0
        L25:
            return r2
        L26:
            boolean r5 = r7.q()
            if (r5 == 0) goto L2d
            return r1
        L2d:
            if (r4 != r8) goto L30
            return r2
        L30:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.z
            if (r5 == 0) goto L3a
            kotlinx.coroutines.internal.z r4 = (kotlinx.coroutines.internal.z) r4
            r4.a(r2)
            goto L0
        L3a:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.a0
            if (r5 == 0) goto L5c
            if (r3 == 0) goto L51
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = n()
            kotlinx.coroutines.internal.a0 r4 = (kotlinx.coroutines.internal.a0) r4
            kotlinx.coroutines.internal.r r4 = r4.f13254a
            boolean r2 = androidx.concurrent.futures.b.a(r5, r3, r2, r4)
            if (r2 != 0) goto L4f
            goto L0
        L4f:
            r2 = r3
            goto Lc
        L51:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = o()
            java.lang.Object r2 = r4.get(r2)
            kotlinx.coroutines.internal.r r2 = (kotlinx.coroutines.internal.r) r2
            goto Ld
        L5c:
            java.lang.String r3 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"
            kotlin.jvm.internal.r.c(r4, r3)
            r3 = r4
            kotlinx.coroutines.internal.r r3 = (kotlinx.coroutines.internal.r) r3
            r6 = r3
            r3 = r2
            r2 = r6
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.r.h(kotlinx.coroutines.internal.z):kotlinx.coroutines.internal.r");
    }

    private final r i(r rVar) {
        while (rVar.q()) {
            rVar = (r) f13296b.get(rVar);
        }
        return rVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(r rVar) {
        r rVar2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13296b;
        do {
            rVar2 = (r) atomicReferenceFieldUpdater.get(rVar);
            if (k() != rVar) {
                return;
            }
        } while (!androidx.concurrent.futures.b.a(f13296b, rVar, rVar2, this));
        if (q()) {
            rVar.h(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater n() {
        return f13295a;
    }

    private final a0 t() {
        a0 a0Var = (a0) f13297c.get(this);
        if (a0Var != null) {
            return a0Var;
        }
        a0 a0Var2 = new a0(this);
        f13297c.set(this, a0Var2);
        return a0Var2;
    }

    public final boolean g(r rVar) {
        f13296b.set(rVar, this);
        f13295a.set(rVar, this);
        while (k() == this) {
            if (androidx.concurrent.futures.b.a(f13295a, this, this, rVar)) {
                rVar.j(this);
                return true;
            }
        }
        return false;
    }

    public final Object k() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13295a;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof z)) {
                return obj;
            }
            ((z) obj).a(this);
        }
    }

    public final r l() {
        r rVar;
        Object objK = k();
        a0 a0Var = objK instanceof a0 ? (a0) objK : null;
        if (a0Var != null && (rVar = a0Var.f13254a) != null) {
            return rVar;
        }
        kotlin.jvm.internal.r.c(objK, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (r) objK;
    }

    public final r m() {
        r rVarH = h(null);
        return rVarH == null ? i((r) f13296b.get(this)) : rVarH;
    }

    public boolean q() {
        return k() instanceof a0;
    }

    public boolean r() {
        return s() == null;
    }

    public final r s() {
        Object objK;
        r rVar;
        do {
            objK = k();
            if (objK instanceof a0) {
                return ((a0) objK).f13254a;
            }
            if (objK == this) {
                return (r) objK;
            }
            kotlin.jvm.internal.r.c(objK, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            rVar = (r) objK;
        } while (!androidx.concurrent.futures.b.a(f13295a, this, objK, rVar.t()));
        rVar.h(null);
        return null;
    }

    public String toString() {
        return new kotlin.jvm.internal.x(this) { // from class: kotlinx.coroutines.internal.r.b
            @Override // kotlin.jvm.internal.x, kotlin.jvm.internal.w
            public Object get() {
                return kotlinx.coroutines.g0.a(this.receiver);
            }
        } + '@' + kotlinx.coroutines.g0.b(this);
    }

    public final int u(r rVar, r rVar2, a aVar) {
        f13296b.set(rVar, this);
        f13295a.set(rVar, rVar2);
        aVar.f13299c = rVar2;
        if (androidx.concurrent.futures.b.a(f13295a, this, rVar2, aVar)) {
            return aVar.a(this) == null ? 1 : 2;
        }
        return 0;
    }
}
