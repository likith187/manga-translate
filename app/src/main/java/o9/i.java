package o9;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import okhttp3.t;
import t9.a0;
import t9.b0;
import t9.y;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f14597o = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f14598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f14599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f14600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f14601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f14602e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f14603f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayDeque f14604g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f14605h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final c f14606i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b f14607j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final d f14608k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final d f14609l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private o9.b f14610m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private IOException f14611n;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final class b implements y {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f14612a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final t9.d f14613b = new t9.d();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private t f14614c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f14615f;

        public b(boolean z10) {
            this.f14612a = z10;
        }

        private final void c(boolean z10) throws IOException {
            long jMin;
            boolean z11;
            i iVar = i.this;
            synchronized (iVar) {
                try {
                    iVar.s().v();
                    while (iVar.r() >= iVar.q() && !this.f14612a && !this.f14615f && iVar.h() == null) {
                        try {
                            iVar.D();
                        } finally {
                            iVar.s().C();
                        }
                    }
                    iVar.s().C();
                    iVar.c();
                    jMin = Math.min(iVar.q() - iVar.r(), this.f14613b.G0());
                    iVar.B(iVar.r() + jMin);
                    z11 = z10 && jMin == this.f14613b.G0();
                    h0 h0Var = h0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            i.this.s().v();
            try {
                i.this.g().i1(i.this.j(), z11, this.f14613b, jMin);
            } finally {
                iVar = i.this;
            }
        }

        @Override // t9.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            i iVar = i.this;
            if (i9.d.f12674h && Thread.holdsLock(iVar)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + iVar);
            }
            i iVar2 = i.this;
            synchronized (iVar2) {
                if (this.f14615f) {
                    return;
                }
                boolean z10 = iVar2.h() == null;
                h0 h0Var = h0.INSTANCE;
                if (!i.this.o().f14612a) {
                    boolean z11 = this.f14613b.G0() > 0;
                    if (this.f14614c != null) {
                        while (this.f14613b.G0() > 0) {
                            c(false);
                        }
                        f fVarG = i.this.g();
                        int iJ = i.this.j();
                        t tVar = this.f14614c;
                        r.b(tVar);
                        fVarG.j1(iJ, z10, i9.d.M(tVar));
                    } else if (z11) {
                        while (this.f14613b.G0() > 0) {
                            c(true);
                        }
                    } else if (z10) {
                        i.this.g().i1(i.this.j(), true, null, 0L);
                    }
                }
                synchronized (i.this) {
                    this.f14615f = true;
                    h0 h0Var2 = h0.INSTANCE;
                }
                i.this.g().flush();
                i.this.b();
            }
        }

        @Override // t9.y
        public b0 f() {
            return i.this.s();
        }

        @Override // t9.y, java.io.Flushable
        public void flush() throws IOException {
            i iVar = i.this;
            if (i9.d.f12674h && Thread.holdsLock(iVar)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + iVar);
            }
            i iVar2 = i.this;
            synchronized (iVar2) {
                iVar2.c();
                h0 h0Var = h0.INSTANCE;
            }
            while (this.f14613b.G0() > 0) {
                c(false);
                i.this.g().flush();
            }
        }

        public final boolean i() {
            return this.f14615f;
        }

        public final boolean k() {
            return this.f14612a;
        }

        @Override // t9.y
        public void p(t9.d source, long j10) throws IOException {
            r.e(source, "source");
            i iVar = i.this;
            if (!i9.d.f12674h || !Thread.holdsLock(iVar)) {
                this.f14613b.p(source, j10);
                while (this.f14613b.G0() >= 16384) {
                    c(false);
                }
            } else {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + iVar);
            }
        }
    }

    public final class c implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f14617a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f14618b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final t9.d f14619c = new t9.d();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final t9.d f14620f = new t9.d();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private t f14621h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f14622i;

        public c(long j10, boolean z10) {
            this.f14617a = j10;
            this.f14618b = z10;
        }

        private final void B(long j10) {
            i iVar = i.this;
            if (!i9.d.f12674h || !Thread.holdsLock(iVar)) {
                i.this.g().h1(j10);
                return;
            }
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + iVar);
        }

        public final boolean c() {
            return this.f14622i;
        }

        @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            long jG0;
            i iVar = i.this;
            synchronized (iVar) {
                this.f14622i = true;
                jG0 = this.f14620f.G0();
                this.f14620f.i();
                r.c(iVar, "null cannot be cast to non-null type java.lang.Object");
                iVar.notifyAll();
                h0 h0Var = h0.INSTANCE;
            }
            if (jG0 > 0) {
                B(jG0);
            }
            i.this.b();
        }

        @Override // t9.a0
        public b0 f() {
            return i.this.m();
        }

        public final boolean i() {
            return this.f14618b;
        }

        @Override // t9.a0
        public long i0(t9.d sink, long j10) throws IOException {
            IOException iOExceptionI;
            boolean z10;
            long jI0;
            r.e(sink, "sink");
            long j11 = 0;
            if (j10 < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
            }
            while (true) {
                i iVar = i.this;
                synchronized (iVar) {
                    iVar.m().v();
                    try {
                        if (iVar.h() == null || this.f14618b) {
                            iOExceptionI = null;
                        } else {
                            iOExceptionI = iVar.i();
                            if (iOExceptionI == null) {
                                o9.b bVarH = iVar.h();
                                r.b(bVarH);
                                iOExceptionI = new n(bVarH);
                            }
                        }
                        if (this.f14622i) {
                            throw new IOException("stream closed");
                        }
                        z10 = false;
                        if (this.f14620f.G0() > j11) {
                            t9.d dVar = this.f14620f;
                            jI0 = dVar.i0(sink, Math.min(j10, dVar.G0()));
                            iVar.A(iVar.l() + jI0);
                            long jL = iVar.l() - iVar.k();
                            if (iOExceptionI == null && jL >= iVar.g().M0().c() / 2) {
                                iVar.g().n1(iVar.j(), jL);
                                iVar.z(iVar.l());
                            }
                        } else {
                            if (!this.f14618b && iOExceptionI == null) {
                                iVar.D();
                                z10 = true;
                            }
                            jI0 = -1;
                        }
                        iVar.m().C();
                        h0 h0Var = h0.INSTANCE;
                    } finally {
                    }
                }
                if (!z10) {
                    if (jI0 != -1) {
                        return jI0;
                    }
                    if (iOExceptionI == null) {
                        return -1L;
                    }
                    throw iOExceptionI;
                }
                j11 = 0;
            }
        }

        public final void k(t9.f source, long j10) throws EOFException {
            boolean z10;
            boolean z11;
            r.e(source, "source");
            i iVar = i.this;
            if (i9.d.f12674h && Thread.holdsLock(iVar)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + iVar);
            }
            long j11 = j10;
            while (j11 > 0) {
                synchronized (i.this) {
                    z10 = this.f14618b;
                    z11 = this.f14620f.G0() + j11 > this.f14617a;
                    h0 h0Var = h0.INSTANCE;
                }
                if (z11) {
                    source.A(j11);
                    i.this.f(o9.b.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z10) {
                    source.A(j11);
                    return;
                }
                long jI0 = source.i0(this.f14619c, j11);
                if (jI0 == -1) {
                    throw new EOFException();
                }
                j11 -= jI0;
                i iVar2 = i.this;
                synchronized (iVar2) {
                    try {
                        if (this.f14622i) {
                            this.f14619c.i();
                        } else {
                            boolean z12 = this.f14620f.G0() == 0;
                            this.f14620f.N0(this.f14619c);
                            if (z12) {
                                r.c(iVar2, "null cannot be cast to non-null type java.lang.Object");
                                iVar2.notifyAll();
                            }
                        }
                    } finally {
                    }
                }
            }
            B(j10);
        }

        public final void v(boolean z10) {
            this.f14618b = z10;
        }

        public final void x(t tVar) {
            this.f14621h = tVar;
        }
    }

    public final class d extends t9.c {
        public d() {
        }

        @Override // t9.c
        protected void B() {
            i.this.f(o9.b.CANCEL);
            i.this.g().b1();
        }

        public final void C() throws IOException {
            if (w()) {
                throw x(null);
            }
        }

        @Override // t9.c
        protected IOException x(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }
    }

    public i(int i10, f connection, boolean z10, boolean z11, t tVar) {
        r.e(connection, "connection");
        this.f14598a = i10;
        this.f14599b = connection;
        this.f14603f = connection.N0().c();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f14604g = arrayDeque;
        this.f14606i = new c(connection.M0().c(), z11);
        this.f14607j = new b(z10);
        this.f14608k = new d();
        this.f14609l = new d();
        if (tVar == null) {
            if (!t()) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
        } else {
            if (t()) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            }
            arrayDeque.add(tVar);
        }
    }

    private final boolean e(o9.b bVar, IOException iOException) {
        if (i9.d.f12674h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            if (this.f14610m != null) {
                return false;
            }
            this.f14610m = bVar;
            this.f14611n = iOException;
            r.c(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
            if (this.f14606i.i() && this.f14607j.k()) {
                return false;
            }
            h0 h0Var = h0.INSTANCE;
            this.f14599b.a1(this.f14598a);
            return true;
        }
    }

    public final void A(long j10) {
        this.f14600c = j10;
    }

    public final void B(long j10) {
        this.f14602e = j10;
    }

    public final synchronized t C() throws IOException {
        Object objRemoveFirst;
        this.f14608k.v();
        while (this.f14604g.isEmpty() && this.f14610m == null) {
            try {
                D();
            } catch (Throwable th) {
                this.f14608k.C();
                throw th;
            }
        }
        this.f14608k.C();
        if (this.f14604g.isEmpty()) {
            IOException iOException = this.f14611n;
            if (iOException != null) {
                throw iOException;
            }
            o9.b bVar = this.f14610m;
            r.b(bVar);
            throw new n(bVar);
        }
        objRemoveFirst = this.f14604g.removeFirst();
        r.d(objRemoveFirst, "headersQueue.removeFirst()");
        return (t) objRemoveFirst;
    }

    public final void D() throws InterruptedIOException {
        try {
            r.c(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public final b0 E() {
        return this.f14609l;
    }

    public final void a(long j10) {
        this.f14603f += j10;
        if (j10 > 0) {
            r.c(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    public final void b() {
        boolean z10;
        boolean zU;
        if (i9.d.f12674h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            try {
                z10 = !this.f14606i.i() && this.f14606i.c() && (this.f14607j.k() || this.f14607j.i());
                zU = u();
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z10) {
            d(o9.b.CANCEL, null);
        } else {
            if (zU) {
                return;
            }
            this.f14599b.a1(this.f14598a);
        }
    }

    public final void c() throws IOException {
        if (this.f14607j.i()) {
            throw new IOException("stream closed");
        }
        if (this.f14607j.k()) {
            throw new IOException("stream finished");
        }
        if (this.f14610m != null) {
            IOException iOException = this.f14611n;
            if (iOException != null) {
                throw iOException;
            }
            o9.b bVar = this.f14610m;
            r.b(bVar);
            throw new n(bVar);
        }
    }

    public final void d(o9.b rstStatusCode, IOException iOException) {
        r.e(rstStatusCode, "rstStatusCode");
        if (e(rstStatusCode, iOException)) {
            this.f14599b.l1(this.f14598a, rstStatusCode);
        }
    }

    public final void f(o9.b errorCode) {
        r.e(errorCode, "errorCode");
        if (e(errorCode, null)) {
            this.f14599b.m1(this.f14598a, errorCode);
        }
    }

    public final f g() {
        return this.f14599b;
    }

    public final synchronized o9.b h() {
        return this.f14610m;
    }

    public final IOException i() {
        return this.f14611n;
    }

    public final int j() {
        return this.f14598a;
    }

    public final long k() {
        return this.f14601d;
    }

    public final long l() {
        return this.f14600c;
    }

    public final d m() {
        return this.f14608k;
    }

    public final y n() {
        synchronized (this) {
            try {
                if (!this.f14605h && !t()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f14607j;
    }

    public final b o() {
        return this.f14607j;
    }

    public final c p() {
        return this.f14606i;
    }

    public final long q() {
        return this.f14603f;
    }

    public final long r() {
        return this.f14602e;
    }

    public final d s() {
        return this.f14609l;
    }

    public final boolean t() {
        return this.f14599b.H0() == ((this.f14598a & 1) == 1);
    }

    public final synchronized boolean u() {
        try {
            if (this.f14610m != null) {
                return false;
            }
            if (this.f14606i.i() || this.f14606i.c()) {
                if (this.f14607j.k() || this.f14607j.i()) {
                    if (this.f14605h) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final b0 v() {
        return this.f14608k;
    }

    public final void w(t9.f source, int i10) {
        r.e(source, "source");
        if (!i9.d.f12674h || !Thread.holdsLock(this)) {
            this.f14606i.k(source, i10);
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
    }

    public final void x(t headers, boolean z10) {
        boolean zU;
        r.e(headers, "headers");
        if (i9.d.f12674h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            try {
                if (this.f14605h && z10) {
                    this.f14606i.x(headers);
                } else {
                    this.f14605h = true;
                    this.f14604g.add(headers);
                }
                if (z10) {
                    this.f14606i.v(true);
                }
                zU = u();
                r.c(this, "null cannot be cast to non-null type java.lang.Object");
                notifyAll();
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zU) {
            return;
        }
        this.f14599b.a1(this.f14598a);
    }

    public final synchronized void y(o9.b errorCode) {
        r.e(errorCode, "errorCode");
        if (this.f14610m == null) {
            this.f14610m = errorCode;
            r.c(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    public final void z(long j10) {
        this.f14601d = j10;
    }
}
