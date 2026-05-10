package kotlinx.coroutines.channels;

import androidx.appcompat.app.t;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.internal.d0;
import kotlinx.coroutines.internal.e0;
import kotlinx.coroutines.internal.f0;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.internal.y;
import n8.h0;
import n8.r;
import n8.s;
import w8.p;
import w8.q;

/* JADX INFO: loaded from: classes2.dex */
public class b implements d {

    /* JADX INFO: renamed from: e */
    private static final /* synthetic */ AtomicLongFieldUpdater f13178e = AtomicLongFieldUpdater.newUpdater(b.class, "sendersAndCloseStatus$volatile");

    /* JADX INFO: renamed from: f */
    private static final /* synthetic */ AtomicLongFieldUpdater f13179f = AtomicLongFieldUpdater.newUpdater(b.class, "receivers$volatile");

    /* JADX INFO: renamed from: g */
    private static final /* synthetic */ AtomicLongFieldUpdater f13180g = AtomicLongFieldUpdater.newUpdater(b.class, "bufferEnd$volatile");

    /* JADX INFO: renamed from: h */
    private static final /* synthetic */ AtomicLongFieldUpdater f13181h = AtomicLongFieldUpdater.newUpdater(b.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* JADX INFO: renamed from: i */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13182i = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "sendSegment$volatile");

    /* JADX INFO: renamed from: j */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13183j = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "receiveSegment$volatile");

    /* JADX INFO: renamed from: k */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13184k = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "bufferEndSegment$volatile");

    /* JADX INFO: renamed from: l */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13185l = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_closeCause$volatile");

    /* JADX INFO: renamed from: m */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13186m = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;

    /* JADX INFO: renamed from: b */
    private final int f13187b;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;

    /* JADX INFO: renamed from: c */
    public final w8.l f13188c;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;

    /* JADX INFO: renamed from: d */
    private final q f13189d;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    private final class a implements e, e2 {

        /* JADX INFO: renamed from: a */
        private Object f13190a = c.f13208p;

        /* JADX INFO: renamed from: b */
        private kotlinx.coroutines.j f13191b;

        public a() {
        }

        private final Object f(i iVar, int i10, long j10, kotlin.coroutines.d dVar) {
            Boolean boolA;
            b bVar = b.this;
            kotlinx.coroutines.j jVarB = kotlinx.coroutines.l.b(kotlin.coroutines.intrinsics.b.c(dVar));
            try {
                this.f13191b = jVarB;
                Object objN0 = bVar.n0(iVar, i10, j10, this);
                if (objN0 == c.f13205m) {
                    bVar.b0(this, iVar, i10);
                } else {
                    w8.l lVarA = null;
                    if (objN0 == c.f13207o) {
                        if (j10 < bVar.K()) {
                            iVar.c();
                        }
                        i iVar2 = (i) b.E().get(bVar);
                        while (true) {
                            if (bVar.R()) {
                                h();
                                break;
                            }
                            long andIncrement = b.F().getAndIncrement(bVar);
                            int i11 = c.f13194b;
                            long j11 = andIncrement / ((long) i11);
                            int i12 = (int) (andIncrement % ((long) i11));
                            if (iVar2.f13261c != j11) {
                                i iVarW = bVar.w(j11, iVar2);
                                if (iVarW != null) {
                                    iVar2 = iVarW;
                                }
                            }
                            Object objN02 = bVar.n0(iVar2, i12, andIncrement, this);
                            if (objN02 == c.f13205m) {
                                bVar.b0(this, iVar2, i12);
                                break;
                            }
                            if (objN02 == c.f13207o) {
                                if (andIncrement < bVar.K()) {
                                    iVar2.c();
                                }
                            } else {
                                if (objN02 == c.f13206n) {
                                    throw new IllegalStateException("unexpected");
                                }
                                iVar2.c();
                                this.f13190a = objN02;
                                this.f13191b = null;
                                boolA = kotlin.coroutines.jvm.internal.b.a(true);
                                w8.l lVar = bVar.f13188c;
                                if (lVar != null) {
                                    lVarA = y.a(lVar, objN02, jVarB.getContext());
                                }
                            }
                        }
                    } else {
                        iVar.c();
                        this.f13190a = objN0;
                        this.f13191b = null;
                        boolA = kotlin.coroutines.jvm.internal.b.a(true);
                        w8.l lVar2 = bVar.f13188c;
                        if (lVar2 != null) {
                            lVarA = y.a(lVar2, objN0, jVarB.getContext());
                        }
                    }
                    jVarB.e(boolA, lVarA);
                }
                Object objX = jVarB.x();
                if (objX == kotlin.coroutines.intrinsics.b.f()) {
                    kotlin.coroutines.jvm.internal.h.c(dVar);
                }
                return objX;
            } catch (Throwable th) {
                jVarB.M();
                throw th;
            }
        }

        private final boolean g() throws Throwable {
            this.f13190a = c.x();
            Throwable thB = b.this.B();
            if (thB == null) {
                return false;
            }
            throw f0.a(thB);
        }

        public final void h() {
            kotlinx.coroutines.j jVar = this.f13191b;
            r.b(jVar);
            this.f13191b = null;
            this.f13190a = c.x();
            Throwable thB = b.this.B();
            if (thB == null) {
                r.a aVar = n8.r.Companion;
                jVar.resumeWith(n8.r.m59constructorimpl(Boolean.FALSE));
            } else {
                r.a aVar2 = n8.r.Companion;
                jVar.resumeWith(n8.r.m59constructorimpl(s.a(thB)));
            }
        }

        @Override // kotlinx.coroutines.channels.e
        public Object a(kotlin.coroutines.d dVar) {
            i iVar;
            b bVar = b.this;
            i iVar2 = (i) b.E().get(bVar);
            while (!bVar.R()) {
                long andIncrement = b.F().getAndIncrement(bVar);
                int i10 = c.f13194b;
                long j10 = andIncrement / ((long) i10);
                int i11 = (int) (andIncrement % ((long) i10));
                if (iVar2.f13261c != j10) {
                    i iVarW = bVar.w(j10, iVar2);
                    if (iVarW == null) {
                        continue;
                    } else {
                        iVar = iVarW;
                    }
                } else {
                    iVar = iVar2;
                }
                Object objN0 = bVar.n0(iVar, i11, andIncrement, null);
                if (objN0 == c.f13205m) {
                    throw new IllegalStateException("unreachable");
                }
                if (objN0 != c.f13207o) {
                    if (objN0 == c.f13206n) {
                        return f(iVar, i11, andIncrement, dVar);
                    }
                    iVar.c();
                    this.f13190a = objN0;
                    return kotlin.coroutines.jvm.internal.b.a(true);
                }
                if (andIncrement < bVar.K()) {
                    iVar.c();
                }
                iVar2 = iVar;
            }
            return kotlin.coroutines.jvm.internal.b.a(g());
        }

        @Override // kotlinx.coroutines.e2
        public void b(d0 d0Var, int i10) {
            kotlinx.coroutines.j jVar = this.f13191b;
            if (jVar != null) {
                jVar.b(d0Var, i10);
            }
        }

        public final boolean i(Object obj) {
            kotlinx.coroutines.j jVar = this.f13191b;
            kotlin.jvm.internal.r.b(jVar);
            this.f13191b = null;
            this.f13190a = obj;
            Boolean bool = Boolean.TRUE;
            w8.l lVar = b.this.f13188c;
            return c.z(jVar, bool, lVar != null ? y.a(lVar, obj, jVar.getContext()) : null);
        }

        public final void j() {
            kotlinx.coroutines.j jVar = this.f13191b;
            kotlin.jvm.internal.r.b(jVar);
            this.f13191b = null;
            this.f13190a = c.x();
            Throwable thB = b.this.B();
            if (thB == null) {
                r.a aVar = n8.r.Companion;
                jVar.resumeWith(n8.r.m59constructorimpl(Boolean.FALSE));
            } else {
                r.a aVar2 = n8.r.Companion;
                jVar.resumeWith(n8.r.m59constructorimpl(s.a(thB)));
            }
        }

        @Override // kotlinx.coroutines.channels.e
        public Object next() throws Throwable {
            Object obj = this.f13190a;
            if (obj == c.f13208p) {
                throw new IllegalStateException("`hasNext()` has not been invoked");
            }
            this.f13190a = c.f13208p;
            if (obj != c.x()) {
                return obj;
            }
            throw f0.a(b.this.D());
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.b$b */
    static final class C0169b extends kotlin.jvm.internal.s implements q {

        /* JADX INFO: renamed from: kotlinx.coroutines.channels.b$b$a */
        static final class a extends kotlin.jvm.internal.s implements w8.l {
            final /* synthetic */ Object $element;
            final /* synthetic */ h9.a $select;
            final /* synthetic */ b this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, b bVar, h9.a aVar) {
                super(1);
                this.$element = obj;
                this.this$0 = bVar;
            }

            @Override // w8.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return h0.INSTANCE;
            }

            public final void invoke(Throwable th) {
                if (this.$element == c.x()) {
                    return;
                }
                w8.l lVar = this.this$0.f13188c;
                throw null;
            }
        }

        C0169b() {
            super(3);
        }

        @Override // w8.q
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            t.a(obj);
            return invoke((h9.a) null, obj2, obj3);
        }

        public final w8.l invoke(h9.a aVar, Object obj, Object obj2) {
            return new a(obj2, b.this, aVar);
        }
    }

    public b(int i10, w8.l lVar) {
        this.f13187b = i10;
        this.f13188c = lVar;
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid channel capacity: " + i10 + ", should be >=0").toString());
        }
        this.bufferEnd$volatile = c.y(i10);
        this.completedExpandBuffersAndPauseFlag$volatile = z();
        i iVar = new i(0L, null, this, 3);
        this.sendSegment$volatile = iVar;
        this.receiveSegment$volatile = iVar;
        if (W()) {
            iVar = c.f13193a;
            kotlin.jvm.internal.r.c(iVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment$volatile = iVar;
        this.f13189d = lVar != null ? new C0169b() : null;
        this._closeCause$volatile = c.f13211s;
    }

    public final Throwable D() {
        Throwable thB = B();
        return thB == null ? new j("Channel was closed") : thB;
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater E() {
        return f13183j;
    }

    public static final /* synthetic */ AtomicLongFieldUpdater F() {
        return f13179f;
    }

    private final void N(long j10) {
        if ((f13181h.addAndGet(this, j10) & 4611686018427387904L) != 0) {
            while ((f13181h.get(this) & 4611686018427387904L) != 0) {
            }
        }
    }

    static /* synthetic */ void O(b bVar, long j10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i10 & 1) != 0) {
            j10 = 1;
        }
        bVar.N(j10);
    }

    private final boolean P(i iVar, int i10, long j10) {
        Object objB;
        do {
            objB = iVar.B(i10);
            if (objB != null && objB != c.f13197e) {
                if (objB == c.f13196d) {
                    return true;
                }
                if (objB == c.f13202j || objB == c.x() || objB == c.f13201i || objB == c.f13200h) {
                    return false;
                }
                if (objB == c.f13199g) {
                    return true;
                }
                return objB != c.f13198f && j10 == G();
            }
        } while (!iVar.v(i10, objB, c.f13200h));
        u();
        return false;
    }

    private final boolean Q(long j10, boolean z10) {
        int i10 = (int) (j10 >> 60);
        if (i10 == 0 || i10 == 1) {
            return false;
        }
        if (i10 == 2) {
            r(j10 & 1152921504606846975L);
            if (z10 && M()) {
                return false;
            }
        } else {
            if (i10 != 3) {
                throw new IllegalStateException(("unexpected close status: " + i10).toString());
            }
            q(j10 & 1152921504606846975L);
        }
        return true;
    }

    private final boolean S(long j10) {
        return Q(j10, true);
    }

    public final boolean U(long j10) {
        return Q(j10, false);
    }

    private final boolean W() {
        long jZ = z();
        return jZ == 0 || jZ == Long.MAX_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x003c, code lost:
    
        r8 = (kotlinx.coroutines.channels.i) r8.h();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final long X(kotlinx.coroutines.channels.i r8) {
        /*
            r7 = this;
        L0:
            int r0 = kotlinx.coroutines.channels.c.f13194b
            int r0 = r0 + (-1)
        L4:
            r1 = -1
            r3 = -1
            if (r3 >= r0) goto L3c
            long r3 = r8.f13261c
            int r5 = kotlinx.coroutines.channels.c.f13194b
            long r5 = (long) r5
            long r3 = r3 * r5
            long r5 = (long) r0
            long r3 = r3 + r5
            long r5 = r7.G()
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 >= 0) goto L1a
            return r1
        L1a:
            java.lang.Object r1 = r8.B(r0)
            if (r1 == 0) goto L2c
            kotlinx.coroutines.internal.g0 r2 = kotlinx.coroutines.channels.c.i()
            if (r1 != r2) goto L27
            goto L2c
        L27:
            kotlinx.coroutines.internal.g0 r2 = kotlinx.coroutines.channels.c.f13196d
            if (r1 != r2) goto L39
            return r3
        L2c:
            kotlinx.coroutines.internal.g0 r2 = kotlinx.coroutines.channels.c.x()
            boolean r1 = r8.v(r0, r1, r2)
            if (r1 == 0) goto L1a
            r8.t()
        L39:
            int r0 = r0 + (-1)
            goto L4
        L3c:
            kotlinx.coroutines.internal.d r8 = r8.h()
            kotlinx.coroutines.channels.i r8 = (kotlinx.coroutines.channels.i) r8
            if (r8 != 0) goto L0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.b.X(kotlinx.coroutines.channels.i):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x0011, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void Y(long r5, kotlinx.coroutines.channels.i r7) {
        /*
            r4 = this;
        L0:
            long r0 = r7.f13261c
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 >= 0) goto L11
            kotlinx.coroutines.internal.d r0 = r7.f()
            kotlinx.coroutines.channels.i r0 = (kotlinx.coroutines.channels.i) r0
            if (r0 != 0) goto Lf
            goto L11
        Lf:
            r7 = r0
            goto L0
        L11:
            boolean r5 = r7.k()
            if (r5 == 0) goto L22
            kotlinx.coroutines.internal.d r5 = r7.f()
            kotlinx.coroutines.channels.i r5 = (kotlinx.coroutines.channels.i) r5
            if (r5 != 0) goto L20
            goto L22
        L20:
            r7 = r5
            goto L11
        L22:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = A()
        L26:
            java.lang.Object r6 = r5.get(r4)
            kotlinx.coroutines.internal.d0 r6 = (kotlinx.coroutines.internal.d0) r6
            long r0 = r6.f13261c
            long r2 = r7.f13261c
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L35
            goto L4b
        L35:
            boolean r0 = r7.u()
            if (r0 != 0) goto L3c
            goto L11
        L3c:
            boolean r0 = androidx.concurrent.futures.b.a(r5, r4, r6, r7)
            if (r0 == 0) goto L4c
            boolean r4 = r6.p()
            if (r4 == 0) goto L4b
            r6.n()
        L4b:
            return
        L4c:
            boolean r6 = r7.p()
            if (r6 == 0) goto L26
            r7.n()
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.b.Y(long, kotlinx.coroutines.channels.i):void");
    }

    public final void b0(e2 e2Var, i iVar, int i10) {
        a0();
        e2Var.b(iVar, i10);
    }

    public final void c0(e2 e2Var, i iVar, int i10) {
        e2Var.b(iVar, i10 + c.f13194b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x00b3, code lost:
    
        r12 = (kotlinx.coroutines.channels.i) r12.h();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void d0(kotlinx.coroutines.channels.i r12) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.b.d0(kotlinx.coroutines.channels.i):void");
    }

    private final void e0(e2 e2Var) {
        g0(e2Var, true);
    }

    private final void f0(e2 e2Var) {
        g0(e2Var, false);
    }

    private final void g0(e2 e2Var, boolean z10) {
        if (e2Var instanceof kotlinx.coroutines.i) {
            kotlin.coroutines.d dVar = (kotlin.coroutines.d) e2Var;
            r.a aVar = n8.r.Companion;
            dVar.resumeWith(n8.r.m59constructorimpl(s.a(z10 ? D() : H())));
        } else {
            if (e2Var instanceof a) {
                ((a) e2Var).j();
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + e2Var).toString());
        }
    }

    private final boolean h0(long j10) {
        if (U(j10)) {
            return false;
        }
        return !n(j10 & 1152921504606846975L);
    }

    private final boolean i0(Object obj, Object obj2) {
        if (obj instanceof a) {
            kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).i(obj2);
        }
        if (obj instanceof kotlinx.coroutines.i) {
            kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            kotlinx.coroutines.i iVar = (kotlinx.coroutines.i) obj;
            w8.l lVar = this.f13188c;
            return c.z(iVar, obj2, lVar != null ? y.a(lVar, obj2, iVar.getContext()) : null);
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    private final boolean j0(Object obj, i iVar, int i10) {
        if (obj instanceof kotlinx.coroutines.i) {
            kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return c.A((kotlinx.coroutines.i) obj, h0.INSTANCE, null, 2, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    private final boolean l0(i iVar, int i10, long j10) {
        Object objB = iVar.B(i10);
        if (!(objB instanceof e2) || j10 < f13179f.get(this) || !iVar.v(i10, objB, c.f13199g)) {
            return m0(iVar, i10, j10);
        }
        if (j0(objB, iVar, i10)) {
            iVar.F(i10, c.f13196d);
            return true;
        }
        iVar.F(i10, c.f13202j);
        iVar.C(i10, false);
        return false;
    }

    private final boolean m0(i iVar, int i10, long j10) {
        while (true) {
            Object objB = iVar.B(i10);
            if (objB instanceof e2) {
                if (j10 < f13179f.get(this)) {
                    if (iVar.v(i10, objB, new o((e2) objB))) {
                        return true;
                    }
                } else if (iVar.v(i10, objB, c.f13199g)) {
                    if (j0(objB, iVar, i10)) {
                        iVar.F(i10, c.f13196d);
                        return true;
                    }
                    iVar.F(i10, c.f13202j);
                    iVar.C(i10, false);
                    return false;
                }
            } else {
                if (objB == c.f13202j) {
                    return false;
                }
                if (objB == null) {
                    if (iVar.v(i10, objB, c.f13197e)) {
                        return true;
                    }
                } else {
                    if (objB == c.f13196d || objB == c.f13200h || objB == c.f13201i || objB == c.f13203k || objB == c.x()) {
                        return true;
                    }
                    if (objB != c.f13198f) {
                        throw new IllegalStateException(("Unexpected cell state: " + objB).toString());
                    }
                }
            }
        }
    }

    private final boolean n(long j10) {
        return j10 < z() || j10 < G() + ((long) this.f13187b);
    }

    public final Object n0(i iVar, int i10, long j10, Object obj) {
        Object objB = iVar.B(i10);
        if (objB == null) {
            if (j10 >= (f13178e.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return c.f13206n;
                }
                if (iVar.v(i10, objB, obj)) {
                    u();
                    return c.f13205m;
                }
            }
        } else if (objB == c.f13196d && iVar.v(i10, objB, c.f13201i)) {
            u();
            return iVar.D(i10);
        }
        return o0(iVar, i10, j10, obj);
    }

    private final void o(i iVar, long j10) {
        Object objB = kotlinx.coroutines.internal.m.b(null, 1, null);
        loop0: while (iVar != null) {
            for (int i10 = c.f13194b - 1; -1 < i10; i10--) {
                if ((iVar.f13261c * ((long) c.f13194b)) + ((long) i10) < j10) {
                    break loop0;
                }
                while (true) {
                    Object objB2 = iVar.B(i10);
                    if (objB2 != null && objB2 != c.f13197e) {
                        if (!(objB2 instanceof o)) {
                            if (!(objB2 instanceof e2)) {
                                break;
                            }
                            if (iVar.v(i10, objB2, c.x())) {
                                objB = kotlinx.coroutines.internal.m.c(objB, objB2);
                                iVar.C(i10, true);
                                break;
                            }
                        } else {
                            if (iVar.v(i10, objB2, c.x())) {
                                objB = kotlinx.coroutines.internal.m.c(objB, ((o) objB2).f13222a);
                                iVar.C(i10, true);
                                break;
                            }
                        }
                    } else {
                        if (iVar.v(i10, objB2, c.x())) {
                            iVar.t();
                            break;
                        }
                    }
                }
            }
            iVar = (i) iVar.h();
        }
        if (objB != null) {
            if (!(objB instanceof ArrayList)) {
                e0((e2) objB);
                return;
            }
            kotlin.jvm.internal.r.c(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ArrayList arrayList = (ArrayList) objB;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                e0((e2) arrayList.get(size));
            }
        }
    }

    private final Object o0(i iVar, int i10, long j10, Object obj) {
        while (true) {
            Object objB = iVar.B(i10);
            if (objB == null || objB == c.f13197e) {
                if (j10 < (f13178e.get(this) & 1152921504606846975L)) {
                    if (iVar.v(i10, objB, c.f13200h)) {
                        u();
                        return c.f13207o;
                    }
                } else {
                    if (obj == null) {
                        return c.f13206n;
                    }
                    if (iVar.v(i10, objB, obj)) {
                        u();
                        return c.f13205m;
                    }
                }
            } else {
                if (objB != c.f13196d) {
                    if (objB != c.f13202j && objB != c.f13200h) {
                        if (objB == c.x()) {
                            u();
                            return c.f13207o;
                        }
                        if (objB != c.f13199g && iVar.v(i10, objB, c.f13198f)) {
                            boolean z10 = objB instanceof o;
                            if (z10) {
                                objB = ((o) objB).f13222a;
                            }
                            if (j0(objB, iVar, i10)) {
                                iVar.F(i10, c.f13201i);
                                u();
                                return iVar.D(i10);
                            }
                            iVar.F(i10, c.f13202j);
                            iVar.C(i10, false);
                            if (z10) {
                                u();
                            }
                            return c.f13207o;
                        }
                    }
                    return c.f13207o;
                }
                if (iVar.v(i10, objB, c.f13201i)) {
                    u();
                    return iVar.D(i10);
                }
            }
        }
    }

    private final i p() {
        Object obj = f13184k.get(this);
        i iVar = (i) f13182i.get(this);
        if (iVar.f13261c > ((i) obj).f13261c) {
            obj = iVar;
        }
        i iVar2 = (i) f13183j.get(this);
        if (iVar2.f13261c > ((i) obj).f13261c) {
            obj = iVar2;
        }
        return (i) kotlinx.coroutines.internal.c.b((kotlinx.coroutines.internal.d) obj);
    }

    public final int p0(i iVar, int i10, Object obj, long j10, Object obj2, boolean z10) {
        iVar.G(i10, obj);
        if (z10) {
            return q0(iVar, i10, obj, j10, obj2, z10);
        }
        Object objB = iVar.B(i10);
        if (objB == null) {
            if (n(j10)) {
                if (iVar.v(i10, null, c.f13196d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (iVar.v(i10, null, obj2)) {
                    return 2;
                }
            }
        } else if (objB instanceof e2) {
            iVar.w(i10);
            if (i0(objB, obj)) {
                iVar.F(i10, c.f13201i);
                Z();
                return 0;
            }
            if (iVar.x(i10, c.f13203k) != c.f13203k) {
                iVar.C(i10, true);
            }
            return 5;
        }
        return q0(iVar, i10, obj, j10, obj2, z10);
    }

    private final void q(long j10) {
        d0(r(j10));
    }

    private final int q0(i iVar, int i10, Object obj, long j10, Object obj2, boolean z10) {
        while (true) {
            Object objB = iVar.B(i10);
            if (objB == null) {
                if (!n(j10) || z10) {
                    if (z10) {
                        if (iVar.v(i10, null, c.f13202j)) {
                            iVar.C(i10, false);
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (iVar.v(i10, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (iVar.v(i10, null, c.f13196d)) {
                    return 1;
                }
            } else {
                if (objB != c.f13197e) {
                    if (objB == c.f13203k) {
                        iVar.w(i10);
                        return 5;
                    }
                    if (objB == c.f13200h) {
                        iVar.w(i10);
                        return 5;
                    }
                    if (objB == c.x()) {
                        iVar.w(i10);
                        s();
                        return 4;
                    }
                    iVar.w(i10);
                    if (objB instanceof o) {
                        objB = ((o) objB).f13222a;
                    }
                    if (i0(objB, obj)) {
                        iVar.F(i10, c.f13201i);
                        Z();
                        return 0;
                    }
                    if (iVar.x(i10, c.f13203k) != c.f13203k) {
                        iVar.C(i10, true);
                    }
                    return 5;
                }
                if (iVar.v(i10, objB, c.f13196d)) {
                    return 1;
                }
            }
        }
    }

    private final i r(long j10) {
        i iVarP = p();
        if (V()) {
            long jX = X(iVarP);
            if (jX != -1) {
                t(jX);
            }
        }
        o(iVarP, j10);
        return iVarP;
    }

    private final void r0(long j10) {
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f13179f;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            if (j11 >= j10) {
                return;
            }
        } while (!f13179f.compareAndSet(this, j11, j10));
    }

    private final void s() {
        T();
    }

    private final void s0(long j10) {
        long j11;
        long j12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f13178e;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            j12 = 1152921504606846975L & j11;
            if (j12 >= j10) {
                return;
            }
        } while (!f13178e.compareAndSet(this, j11, c.u(j12, (int) (j11 >> 60))));
    }

    private final void u() {
        if (W()) {
            return;
        }
        i iVar = (i) f13184k.get(this);
        while (true) {
            long andIncrement = f13180g.getAndIncrement(this);
            int i10 = c.f13194b;
            long j10 = andIncrement / ((long) i10);
            if (K() <= andIncrement) {
                if (iVar.f13261c < j10 && iVar.f() != null) {
                    Y(j10, iVar);
                }
                O(this, 0L, 1, null);
                return;
            }
            if (iVar.f13261c != j10) {
                i iVarV = v(j10, iVar, andIncrement);
                if (iVarV == null) {
                    continue;
                } else {
                    iVar = iVarV;
                }
            }
            if (l0(iVar, (int) (andIncrement % ((long) i10)), andIncrement)) {
                O(this, 0L, 1, null);
                return;
            }
            O(this, 0L, 1, null);
        }
    }

    private final i v(long j10, i iVar, long j11) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13184k;
        p pVar = (p) c.w();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.c.c(iVar, j10, pVar);
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
        if (e0.c(objC)) {
            s();
            Y(j10, iVar);
            O(this, 0L, 1, null);
            return null;
        }
        i iVar2 = (i) e0.b(objC);
        if (iVar2.f13261c <= j10) {
            return iVar2;
        }
        long j12 = iVar2.f13261c;
        int i10 = c.f13194b;
        if (f13180g.compareAndSet(this, j11 + 1, j12 * ((long) i10))) {
            N((iVar2.f13261c * ((long) i10)) - j11);
            return null;
        }
        O(this, 0L, 1, null);
        return null;
    }

    public final i w(long j10, i iVar) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13183j;
        p pVar = (p) c.w();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.c.c(iVar, j10, pVar);
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
        if (e0.c(objC)) {
            s();
            if (iVar.f13261c * ((long) c.f13194b) >= K()) {
                return null;
            }
            iVar.c();
            return null;
        }
        i iVar2 = (i) e0.b(objC);
        if (!W() && j10 <= z() / ((long) c.f13194b)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f13184k;
            while (true) {
                d0 d0Var2 = (d0) atomicReferenceFieldUpdater2.get(this);
                if (d0Var2.f13261c >= iVar2.f13261c || !iVar2.u()) {
                    break;
                }
                if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater2, this, d0Var2, iVar2)) {
                    if (d0Var2.p()) {
                        d0Var2.n();
                    }
                } else if (iVar2.p()) {
                    iVar2.n();
                }
            }
        }
        long j11 = iVar2.f13261c;
        if (j11 <= j10) {
            return iVar2;
        }
        int i10 = c.f13194b;
        r0(j11 * ((long) i10));
        if (iVar2.f13261c * ((long) i10) >= K()) {
            return null;
        }
        iVar2.c();
        return null;
    }

    public final i x(long j10, i iVar) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13182i;
        p pVar = (p) c.w();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.c.c(iVar, j10, pVar);
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
        if (e0.c(objC)) {
            s();
            if (iVar.f13261c * ((long) c.f13194b) >= G()) {
                return null;
            }
            iVar.c();
            return null;
        }
        i iVar2 = (i) e0.b(objC);
        long j11 = iVar2.f13261c;
        if (j11 <= j10) {
            return iVar2;
        }
        int i10 = c.f13194b;
        s0(j11 * ((long) i10));
        if (iVar2.f13261c * ((long) i10) >= G()) {
            return null;
        }
        iVar2.c();
        return null;
    }

    private final long z() {
        return f13180g.get(this);
    }

    protected final Throwable B() {
        return (Throwable) f13185l.get(this);
    }

    public final long G() {
        return f13179f.get(this);
    }

    protected final Throwable H() {
        Throwable thB = B();
        return thB == null ? new k("Channel was closed") : thB;
    }

    public final long K() {
        return f13178e.get(this) & 1152921504606846975L;
    }

    public final boolean M() {
        while (true) {
            i iVarW = (i) f13183j.get(this);
            long jG = G();
            if (K() <= jG) {
                return false;
            }
            int i10 = c.f13194b;
            long j10 = jG / ((long) i10);
            if (iVarW.f13261c == j10 || (iVarW = w(j10, iVarW)) != null) {
                iVarW.c();
                if (P(iVarW, (int) (jG % ((long) i10)), jG)) {
                    return true;
                }
                f13179f.compareAndSet(this, jG, 1 + jG);
            } else if (((i) f13183j.get(this)).f13261c < j10) {
                return false;
            }
        }
    }

    public boolean R() {
        return S(f13178e.get(this));
    }

    public boolean T() {
        return U(f13178e.get(this));
    }

    protected boolean V() {
        return false;
    }

    protected void Z() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:?, code lost:
    
        return kotlinx.coroutines.channels.g.f13215a.c(n8.h0.INSTANCE);
     */
    @Override // kotlinx.coroutines.channels.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object a(java.lang.Object r15) {
        /*
            r14 = this;
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = J()
            long r0 = r0.get(r14)
            boolean r0 = r14.h0(r0)
            if (r0 == 0) goto L15
            kotlinx.coroutines.channels.g$b r14 = kotlinx.coroutines.channels.g.f13215a
            java.lang.Object r14 = r14.b()
            return r14
        L15:
            kotlinx.coroutines.internal.g0 r8 = kotlinx.coroutines.channels.c.h()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = g()
            java.lang.Object r0 = r0.get(r14)
            kotlinx.coroutines.channels.i r0 = (kotlinx.coroutines.channels.i) r0
        L23:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = h()
            long r1 = r1.getAndIncrement(r14)
            r3 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r9 = r1 & r3
            boolean r11 = i(r14, r1)
            int r1 = kotlinx.coroutines.channels.c.f13194b
            long r2 = (long) r1
            long r2 = r9 / r2
            long r4 = (long) r1
            long r4 = r9 % r4
            int r12 = (int) r4
            long r4 = r0.f13261c
            int r1 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r1 == 0) goto L5b
            kotlinx.coroutines.channels.i r1 = c(r14, r2, r0)
            if (r1 != 0) goto L59
            if (r11 == 0) goto L23
        L4d:
            kotlinx.coroutines.channels.g$b r15 = kotlinx.coroutines.channels.g.f13215a
            java.lang.Throwable r14 = r14.H()
            java.lang.Object r14 = r15.a(r14)
            goto Lbc
        L59:
            r13 = r1
            goto L5c
        L5b:
            r13 = r0
        L5c:
            r0 = r14
            r1 = r13
            r2 = r12
            r3 = r15
            r4 = r9
            r6 = r8
            r7 = r11
            int r0 = m(r0, r1, r2, r3, r4, r6, r7)
            if (r0 == 0) goto Lb8
            r1 = 1
            if (r0 == r1) goto Laf
            r1 = 2
            if (r0 == r1) goto L92
            r1 = 3
            if (r0 == r1) goto L8a
            r1 = 4
            if (r0 == r1) goto L7e
            r1 = 5
            if (r0 == r1) goto L79
            goto L7c
        L79:
            r13.c()
        L7c:
            r0 = r13
            goto L23
        L7e:
            long r0 = r14.G()
            int r15 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r15 >= 0) goto L4d
            r13.c()
            goto L4d
        L8a:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "unexpected"
            r14.<init>(r15)
            throw r14
        L92:
            if (r11 == 0) goto L98
            r13.t()
            goto L4d
        L98:
            boolean r15 = r8 instanceof kotlinx.coroutines.e2
            if (r15 == 0) goto L9f
            kotlinx.coroutines.e2 r8 = (kotlinx.coroutines.e2) r8
            goto La0
        L9f:
            r8 = 0
        La0:
            if (r8 == 0) goto La5
            k(r14, r8, r13, r12)
        La5:
            r13.t()
            kotlinx.coroutines.channels.g$b r14 = kotlinx.coroutines.channels.g.f13215a
            java.lang.Object r14 = r14.b()
            goto Lbc
        Laf:
            kotlinx.coroutines.channels.g$b r14 = kotlinx.coroutines.channels.g.f13215a
            n8.h0 r15 = n8.h0.INSTANCE
            java.lang.Object r14 = r14.c(r15)
            goto Lbc
        Lb8:
            r13.c()
            goto Laf
        Lbc:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.b.a(java.lang.Object):java.lang.Object");
    }

    protected void a0() {
    }

    @Override // kotlinx.coroutines.channels.m
    public e iterator() {
        return new a();
    }

    protected final Object k0(Object obj) {
        i iVar;
        Object obj2 = c.f13196d;
        i iVar2 = (i) f13182i.get(this);
        while (true) {
            long andIncrement = f13178e.getAndIncrement(this);
            long j10 = andIncrement & 1152921504606846975L;
            boolean zU = U(andIncrement);
            int i10 = c.f13194b;
            long j11 = j10 / ((long) i10);
            int i11 = (int) (j10 % ((long) i10));
            if (iVar2.f13261c != j11) {
                i iVarX = x(j11, iVar2);
                if (iVarX != null) {
                    iVar = iVarX;
                } else if (zU) {
                    return g.f13215a.a(H());
                }
            } else {
                iVar = iVar2;
            }
            int iP0 = p0(iVar, i11, obj, j10, obj2, zU);
            if (iP0 == 0) {
                iVar.c();
                return g.f13215a.c(h0.INSTANCE);
            }
            if (iP0 == 1) {
                return g.f13215a.c(h0.INSTANCE);
            }
            if (iP0 == 2) {
                if (zU) {
                    iVar.t();
                    return g.f13215a.a(H());
                }
                e2 e2Var = obj2 instanceof e2 ? (e2) obj2 : null;
                if (e2Var != null) {
                    c0(e2Var, iVar, i11);
                }
                t((iVar.f13261c * ((long) i10)) + ((long) i11));
                return g.f13215a.c(h0.INSTANCE);
            }
            if (iP0 == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iP0 == 4) {
                if (j10 < G()) {
                    iVar.c();
                }
                return g.f13215a.a(H());
            }
            if (iP0 == 5) {
                iVar.c();
            }
            iVar2 = iVar;
        }
    }

    protected final void t(long j10) {
        p0 p0VarD;
        i iVar = (i) f13183j.get(this);
        while (true) {
            long j11 = f13179f.get(this);
            if (j10 < Math.max(((long) this.f13187b) + j11, z())) {
                return;
            }
            if (f13179f.compareAndSet(this, j11, j11 + 1)) {
                int i10 = c.f13194b;
                long j12 = j11 / ((long) i10);
                int i11 = (int) (j11 % ((long) i10));
                if (iVar.f13261c != j12) {
                    i iVarW = w(j12, iVar);
                    if (iVarW == null) {
                        continue;
                    } else {
                        iVar = iVarW;
                    }
                }
                Object objN0 = n0(iVar, i11, j11, null);
                if (objN0 != c.f13207o) {
                    iVar.c();
                    w8.l lVar = this.f13188c;
                    if (lVar != null && (p0VarD = y.d(lVar, objN0, null, 2, null)) != null) {
                        throw p0VarD;
                    }
                } else if (j11 < K()) {
                    iVar.c();
                }
            }
        }
    }

    public final void t0(long j10) {
        long j11;
        long j12;
        if (W()) {
            return;
        }
        while (z() <= j10) {
        }
        int i10 = c.f13195c;
        for (int i11 = 0; i11 < i10; i11++) {
            long jZ = z();
            if (jZ == (f13181h.get(this) & 4611686018427387903L) && jZ == z()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f13181h;
        do {
            j11 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, c.t(j11 & 4611686018427387903L, true)));
        while (true) {
            long jZ2 = z();
            long j13 = f13181h.get(this);
            long j14 = j13 & 4611686018427387903L;
            boolean z10 = (4611686018427387904L & j13) != 0;
            if (jZ2 == j14 && jZ2 == z()) {
                break;
            } else if (!z10) {
                f13181h.compareAndSet(this, j13, c.t(j14, true));
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f13181h;
        do {
            j12 = atomicLongFieldUpdater2.get(this);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j12, c.t(j12 & 4611686018427387903L, false)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:173:0x01b7, code lost:
    
        r3 = (kotlinx.coroutines.channels.i) r3.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x01be, code lost:
    
        if (r3 != null) goto L180;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instruction units count: 487
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.b.toString():java.lang.String");
    }
}
