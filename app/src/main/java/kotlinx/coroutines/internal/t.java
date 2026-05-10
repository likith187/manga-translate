package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f13301e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13302f = AtomicReferenceFieldUpdater.newUpdater(t.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f13303g = AtomicLongFieldUpdater.newUpdater(t.class, "_state$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final g0 f13304h = new g0("REMOVE_FROZEN");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f13305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f13306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f13307c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f13308d;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(long j10) {
            return (j10 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j10, int i10) {
            return d(j10, 1073741823L) | ((long) i10);
        }

        public final long c(long j10, int i10) {
            return d(j10, 1152921503533105152L) | (((long) i10) << 30);
        }

        public final long d(long j10, long j11) {
            return j10 & (~j11);
        }

        private a() {
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13309a;

        public b(int i10) {
            this.f13309a = i10;
        }
    }

    public t(int i10, boolean z10) {
        this.f13305a = i10;
        this.f13306b = z10;
        int i11 = i10 - 1;
        this.f13307c = i11;
        this.f13308d = new AtomicReferenceArray(i10);
        if (i11 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i10 & i11) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    private final t b(long j10) {
        t tVar = new t(this.f13305a * 2, this.f13306b);
        int i10 = (int) (1073741823 & j10);
        int i11 = (int) ((1152921503533105152L & j10) >> 30);
        while (true) {
            int i12 = this.f13307c;
            if ((i10 & i12) == (i12 & i11)) {
                f13303g.set(tVar, f13301e.d(j10, 1152921504606846976L));
                return tVar;
            }
            Object bVar = f().get(this.f13307c & i10);
            if (bVar == null) {
                bVar = new b(i10);
            }
            tVar.f().set(tVar.f13307c & i10, bVar);
            i10++;
        }
    }

    private final t c(long j10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13302f;
        while (true) {
            t tVar = (t) atomicReferenceFieldUpdater.get(this);
            if (tVar != null) {
                return tVar;
            }
            androidx.concurrent.futures.b.a(f13302f, this, null, b(j10));
        }
    }

    private final t e(int i10, Object obj) {
        Object obj2 = f().get(this.f13307c & i10);
        if (!(obj2 instanceof b) || ((b) obj2).f13309a != i10) {
            return null;
        }
        f().set(i10 & this.f13307c, obj);
        return this;
    }

    private final /* synthetic */ AtomicReferenceArray f() {
        return this.f13308d;
    }

    private final long k() {
        long j10;
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f13303g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 1152921504606846976L) != 0) {
                return j10;
            }
            j11 = j10 | 1152921504606846976L;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j11));
        return j11;
    }

    private final t n(int i10, int i11) {
        long j10;
        int i12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f13303g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            i12 = (int) (1073741823 & j10);
            if ((1152921504606846976L & j10) != 0) {
                return l();
            }
        } while (!f13303g.compareAndSet(this, j10, f13301e.b(j10, i11)));
        f().set(this.f13307c & i12, null);
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int a(java.lang.Object r13) {
        /*
            r12 = this;
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = i()
        L4:
            long r3 = r0.get(r12)
            r1 = 3458764513820540928(0x3000000000000000, double:1.727233711018889E-77)
            long r1 = r1 & r3
            r7 = 0
            int r1 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r1 == 0) goto L18
            kotlinx.coroutines.internal.t$a r12 = kotlinx.coroutines.internal.t.f13301e
            int r12 = r12.a(r3)
            return r12
        L18:
            r1 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r1 = r1 & r3
            int r1 = (int) r1
            r5 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r5 = r5 & r3
            r2 = 30
            long r5 = r5 >> r2
            int r9 = (int) r5
            int r10 = r12.f13307c
            int r2 = r9 + 2
            r2 = r2 & r10
            r5 = r1 & r10
            r6 = 1
            if (r2 != r5) goto L32
            return r6
        L32:
            boolean r2 = r12.f13306b
            r5 = 1073741823(0x3fffffff, float:1.9999999)
            if (r2 != 0) goto L53
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r12.f()
            r11 = r9 & r10
            java.lang.Object r2 = r2.get(r11)
            if (r2 == 0) goto L53
            int r2 = r12.f13305a
            r3 = 1024(0x400, float:1.435E-42)
            if (r2 < r3) goto L52
            int r9 = r9 - r1
            r1 = r9 & r5
            int r2 = r2 >> 1
            if (r1 <= r2) goto L4
        L52:
            return r6
        L53:
            int r1 = r9 + 1
            r1 = r1 & r5
            java.util.concurrent.atomic.AtomicLongFieldUpdater r2 = i()
            kotlinx.coroutines.internal.t$a r5 = kotlinx.coroutines.internal.t.f13301e
            long r5 = r5.c(r3, r1)
            r1 = r2
            r2 = r12
            boolean r1 = r1.compareAndSet(r2, r3, r5)
            if (r1 == 0) goto L4
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r12.f()
            r1 = r9 & r10
            r0.set(r1, r13)
        L71:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = i()
            long r0 = r0.get(r12)
            r2 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r0 = r0 & r2
            int r0 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r0 == 0) goto L8a
            kotlinx.coroutines.internal.t r12 = r12.l()
            kotlinx.coroutines.internal.t r12 = r12.e(r9, r13)
            if (r12 != 0) goto L71
        L8a:
            r12 = 0
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.t.a(java.lang.Object):int");
    }

    public final boolean d() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f13303g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j10) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j10 | 2305843009213693952L));
        return true;
    }

    public final int g() {
        long j10 = f13303g.get(this);
        return 1073741823 & (((int) ((j10 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j10)));
    }

    public final boolean j() {
        long j10 = f13303g.get(this);
        return ((int) (1073741823 & j10)) == ((int) ((j10 & 1152921503533105152L) >> 30));
    }

    public final t l() {
        return c(k());
    }

    public final Object m() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f13303g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((1152921504606846976L & j10) != 0) {
                return f13304h;
            }
            int i10 = (int) (1073741823 & j10);
            int i11 = this.f13307c;
            if ((((int) ((1152921503533105152L & j10) >> 30)) & i11) == (i11 & i10)) {
                return null;
            }
            Object obj = f().get(this.f13307c & i10);
            if (obj == null) {
                if (this.f13306b) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i12 = (i10 + 1) & 1073741823;
                if (f13303g.compareAndSet(this, j10, f13301e.b(j10, i12))) {
                    f().set(this.f13307c & i10, null);
                    return obj;
                }
                if (this.f13306b) {
                    do {
                        this = this.n(i10, i12);
                    } while (this != null);
                    return obj;
                }
            }
        }
    }
}
