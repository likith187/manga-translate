package okhttp3.internal.connection;

import java.lang.ref.Reference;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import okhttp3.internal.connection.e;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f14872f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f14873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f14874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l9.d f14875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f14876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ConcurrentLinkedQueue f14877e;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends l9.a {
        b(String str) {
            super(str, false, 2, null);
        }

        @Override // l9.a
        public long f() {
            return g.this.b(System.nanoTime());
        }
    }

    public g(l9.e taskRunner, int i10, long j10, TimeUnit timeUnit) {
        r.e(taskRunner, "taskRunner");
        r.e(timeUnit, "timeUnit");
        this.f14873a = i10;
        this.f14874b = timeUnit.toNanos(j10);
        this.f14875c = taskRunner.i();
        this.f14876d = new b(i9.d.f12675i + " ConnectionPool");
        this.f14877e = new ConcurrentLinkedQueue();
        if (j10 > 0) {
            return;
        }
        throw new IllegalArgumentException(("keepAliveDuration <= 0: " + j10).toString());
    }

    private final int d(f fVar, long j10) {
        if (i9.d.f12674h && !Thread.holdsLock(fVar)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + fVar);
        }
        List listN = fVar.n();
        int i10 = 0;
        while (i10 < listN.size()) {
            Reference reference = (Reference) listN.get(i10);
            if (reference.get() != null) {
                i10++;
            } else {
                r.c(reference, "null cannot be cast to non-null type okhttp3.internal.connection.RealCall.CallReference");
                p9.h.f15249a.g().l("A connection to " + fVar.z().a().l() + " was leaked. Did you forget to close a response body?", ((e.a) reference).a());
                listN.remove(i10);
                fVar.C(true);
                if (listN.isEmpty()) {
                    fVar.B(j10 - this.f14874b);
                    return 0;
                }
            }
        }
        return listN.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0033 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(okhttp3.a r3, okhttp3.internal.connection.e r4, java.util.List r5, boolean r6) {
        /*
            r2 = this;
            java.lang.String r0 = "address"
            kotlin.jvm.internal.r.e(r3, r0)
            java.lang.String r0 = "call"
            kotlin.jvm.internal.r.e(r4, r0)
            java.util.concurrent.ConcurrentLinkedQueue r2 = r2.f14877e
            java.util.Iterator r2 = r2.iterator()
        L10:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L3f
            java.lang.Object r0 = r2.next()
            okhttp3.internal.connection.f r0 = (okhttp3.internal.connection.f) r0
            java.lang.String r1 = "connection"
            kotlin.jvm.internal.r.d(r0, r1)
            monitor-enter(r0)
            if (r6 == 0) goto L2d
            boolean r1 = r0.v()     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L39
            goto L2d
        L2b:
            r2 = move-exception
            goto L3d
        L2d:
            boolean r1 = r0.t(r3, r5)     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L39
            r4.a(r0)     // Catch: java.lang.Throwable -> L2b
            monitor-exit(r0)
            r2 = 1
            return r2
        L39:
            n8.h0 r1 = n8.h0.INSTANCE     // Catch: java.lang.Throwable -> L2b
            monitor-exit(r0)
            goto L10
        L3d:
            monitor-exit(r0)
            throw r2
        L3f:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.g.a(okhttp3.a, okhttp3.internal.connection.e, java.util.List, boolean):boolean");
    }

    public final long b(long j10) {
        int i10 = 0;
        long j11 = Long.MIN_VALUE;
        f fVar = null;
        int i11 = 0;
        for (f connection : this.f14877e) {
            r.d(connection, "connection");
            synchronized (connection) {
                if (d(connection, j10) > 0) {
                    i11++;
                } else {
                    i10++;
                    long jO = j10 - connection.o();
                    if (jO > j11) {
                        fVar = connection;
                        j11 = jO;
                    }
                    h0 h0Var = h0.INSTANCE;
                }
            }
        }
        long j12 = this.f14874b;
        if (j11 < j12 && i10 <= this.f14873a) {
            if (i10 > 0) {
                return j12 - j11;
            }
            if (i11 > 0) {
                return j12;
            }
            return -1L;
        }
        r.b(fVar);
        synchronized (fVar) {
            if (!fVar.n().isEmpty()) {
                return 0L;
            }
            if (fVar.o() + j11 != j10) {
                return 0L;
            }
            fVar.C(true);
            this.f14877e.remove(fVar);
            i9.d.m(fVar.D());
            if (this.f14877e.isEmpty()) {
                this.f14875c.a();
            }
            return 0L;
        }
    }

    public final boolean c(f connection) {
        r.e(connection, "connection");
        if (i9.d.f12674h && !Thread.holdsLock(connection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + connection);
        }
        if (!connection.p() && this.f14873a != 0) {
            l9.d.j(this.f14875c, this.f14876d, 0L, 2, null);
            return false;
        }
        connection.C(true);
        this.f14877e.remove(connection);
        if (this.f14877e.isEmpty()) {
            this.f14875c.a();
        }
        return true;
    }

    public final void e(f connection) {
        r.e(connection, "connection");
        if (!i9.d.f12674h || Thread.holdsLock(connection)) {
            this.f14877e.add(connection);
            l9.d.j(this.f14875c, this.f14876d, 0L, 2, null);
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + connection);
    }
}
