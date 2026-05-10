package okhttp3.internal.connection;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.r;
import n8.h0;
import okhttp3.b0;
import okhttp3.q;
import okhttp3.u;
import okhttp3.x;
import okhttp3.z;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements okhttp3.e {

    /* JADX INFO: renamed from: a */
    private final x f14833a;

    /* JADX INFO: renamed from: b */
    private final z f14834b;

    /* JADX INFO: renamed from: c */
    private final boolean f14835c;

    /* JADX INFO: renamed from: f */
    private final g f14836f;

    /* JADX INFO: renamed from: h */
    private final q f14837h;

    /* JADX INFO: renamed from: i */
    private final b f14838i;

    /* JADX INFO: renamed from: j */
    private final AtomicBoolean f14839j;

    /* JADX INFO: renamed from: k */
    private Object f14840k;

    /* JADX INFO: renamed from: l */
    private d f14841l;

    /* JADX INFO: renamed from: m */
    private f f14842m;

    /* JADX INFO: renamed from: n */
    private boolean f14843n;

    /* JADX INFO: renamed from: o */
    private c f14844o;

    /* JADX INFO: renamed from: p */
    private boolean f14845p;

    /* JADX INFO: renamed from: q */
    private boolean f14846q;

    /* JADX INFO: renamed from: r */
    private boolean f14847r;

    /* JADX INFO: renamed from: s */
    private volatile boolean f14848s;

    /* JADX INFO: renamed from: t */
    private volatile c f14849t;

    /* JADX INFO: renamed from: u */
    private volatile f f14850u;

    public static final class a extends WeakReference {

        /* JADX INFO: renamed from: a */
        private final Object f14851a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e referent, Object obj) {
            super(referent);
            r.e(referent, "referent");
            this.f14851a = obj;
        }

        public final Object a() {
            return this.f14851a;
        }
    }

    public static final class b extends t9.c {
        b() {
        }

        @Override // t9.c
        protected void B() {
            e.this.e();
        }
    }

    public e(x client, z originalRequest, boolean z10) {
        r.e(client, "client");
        r.e(originalRequest, "originalRequest");
        this.f14833a = client;
        this.f14834b = originalRequest;
        this.f14835c = z10;
        this.f14836f = client.i().a();
        this.f14837h = client.n().a(this);
        b bVar = new b();
        bVar.g(client.f(), TimeUnit.MILLISECONDS);
        this.f14838i = bVar;
        this.f14839j = new AtomicBoolean();
        this.f14847r = true;
    }

    private final IOException b(IOException iOException) {
        Socket socketS;
        boolean z10 = i9.d.f12674h;
        if (z10 && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        f fVar = this.f14842m;
        if (fVar != null) {
            if (z10 && Thread.holdsLock(fVar)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + fVar);
            }
            synchronized (fVar) {
                socketS = s();
            }
            if (this.f14842m == null) {
                if (socketS != null) {
                    i9.d.m(socketS);
                }
                this.f14837h.k(this, fVar);
            } else if (socketS != null) {
                throw new IllegalStateException("Check failed.");
            }
        }
        IOException iOExceptionW = w(iOException);
        if (iOException != null) {
            q qVar = this.f14837h;
            r.b(iOExceptionW);
            qVar.d(this, iOExceptionW);
        } else {
            this.f14837h.c(this);
        }
        return iOExceptionW;
    }

    private final void d() {
        this.f14840k = p9.h.f15249a.g().h("response.body().close()");
        this.f14837h.e(this);
    }

    private final okhttp3.a g(u uVar) {
        SSLSocketFactory sSLSocketFactoryD;
        HostnameVerifier hostnameVerifierR;
        okhttp3.f fVarG;
        if (uVar.i()) {
            sSLSocketFactoryD = this.f14833a.D();
            hostnameVerifierR = this.f14833a.r();
            fVarG = this.f14833a.g();
        } else {
            sSLSocketFactoryD = null;
            hostnameVerifierR = null;
            fVarG = null;
        }
        return new okhttp3.a(uVar.h(), uVar.m(), this.f14833a.m(), this.f14833a.C(), sSLSocketFactoryD, hostnameVerifierR, fVarG, this.f14833a.y(), this.f14833a.x(), this.f14833a.w(), this.f14833a.j(), this.f14833a.z());
    }

    private final IOException w(IOException iOException) {
        if (this.f14843n || !this.f14838i.w()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final void a(f connection) {
        r.e(connection, "connection");
        if (!i9.d.f12674h || Thread.holdsLock(connection)) {
            if (this.f14842m != null) {
                throw new IllegalStateException("Check failed.");
            }
            this.f14842m = connection;
            connection.n().add(new a(this, this.f14840k));
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + connection);
    }

    @Override // okhttp3.e
    public b0 c() {
        if (!this.f14839j.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed");
        }
        this.f14838i.v();
        d();
        try {
            this.f14833a.l().a(this);
            return n();
        } finally {
            this.f14833a.l().d(this);
        }
    }

    public void e() {
        if (this.f14848s) {
            return;
        }
        this.f14848s = true;
        c cVar = this.f14849t;
        if (cVar != null) {
            cVar.b();
        }
        f fVar = this.f14850u;
        if (fVar != null) {
            fVar.d();
        }
        this.f14837h.f(this);
    }

    /* JADX INFO: renamed from: f */
    public e clone() {
        return new e(this.f14833a, this.f14834b, this.f14835c);
    }

    public final void h(z request, boolean z10) {
        r.e(request, "request");
        if (this.f14844o != null) {
            throw new IllegalStateException("Check failed.");
        }
        synchronized (this) {
            if (this.f14846q) {
                throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
            }
            if (this.f14845p) {
                throw new IllegalStateException("Check failed.");
            }
            h0 h0Var = h0.INSTANCE;
        }
        if (z10) {
            this.f14841l = new d(this.f14836f, g(request.i()), this, this.f14837h);
        }
    }

    public final void i(boolean z10) {
        c cVar;
        synchronized (this) {
            if (!this.f14847r) {
                throw new IllegalStateException("released");
            }
            h0 h0Var = h0.INSTANCE;
        }
        if (z10 && (cVar = this.f14849t) != null) {
            cVar.d();
        }
        this.f14844o = null;
    }

    public final x j() {
        return this.f14833a;
    }

    public final f k() {
        return this.f14842m;
    }

    public final q l() {
        return this.f14837h;
    }

    public final c m() {
        return this.f14844o;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final okhttp3.b0 n() throws java.lang.Throwable {
        /*
            r12 = this;
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            okhttp3.x r0 = r12.f14833a
            java.util.List r0 = r0.s()
            kotlin.collections.o.v(r2, r0)
            m9.j r0 = new m9.j
            okhttp3.x r1 = r12.f14833a
            r0.<init>(r1)
            r2.add(r0)
            m9.a r0 = new m9.a
            okhttp3.x r1 = r12.f14833a
            okhttp3.m r1 = r1.k()
            r0.<init>(r1)
            r2.add(r0)
            k9.a r0 = new k9.a
            okhttp3.x r1 = r12.f14833a
            r1.e()
            r9 = 0
            r0.<init>(r9)
            r2.add(r0)
            okhttp3.internal.connection.a r0 = okhttp3.internal.connection.a.INSTANCE
            r2.add(r0)
            boolean r0 = r12.f14835c
            if (r0 != 0) goto L46
            okhttp3.x r0 = r12.f14833a
            java.util.List r0 = r0.t()
            kotlin.collections.o.v(r2, r0)
        L46:
            m9.b r0 = new m9.b
            boolean r1 = r12.f14835c
            r0.<init>(r1)
            r2.add(r0)
            m9.g r10 = new m9.g
            okhttp3.z r5 = r12.f14834b
            okhttp3.x r0 = r12.f14833a
            int r6 = r0.h()
            okhttp3.x r0 = r12.f14833a
            int r7 = r0.A()
            okhttp3.x r0 = r12.f14833a
            int r8 = r0.F()
            r3 = 0
            r4 = 0
            r0 = r10
            r1 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = 0
            okhttp3.z r1 = r12.f14834b     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8b
            okhttp3.b0 r1 = r10.b(r1)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8b
            boolean r2 = r12.p()     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8b
            if (r2 != 0) goto L7e
            r12.r(r9)
            return r1
        L7e:
            i9.d.l(r1)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8b
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8b
            java.lang.String r2 = "Canceled"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8b
            throw r1     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8b
        L89:
            r1 = move-exception
            goto L9b
        L8b:
            r0 = move-exception
            r1 = 1
            java.io.IOException r0 = r12.r(r0)     // Catch: java.lang.Throwable -> L97
            java.lang.String r2 = "null cannot be cast to non-null type kotlin.Throwable"
            kotlin.jvm.internal.r.c(r0, r2)     // Catch: java.lang.Throwable -> L97
            throw r0     // Catch: java.lang.Throwable -> L97
        L97:
            r0 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
        L9b:
            if (r0 != 0) goto La0
            r12.r(r9)
        La0:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.e.n():okhttp3.b0");
    }

    public final c o(m9.g chain) throws IOException {
        r.e(chain, "chain");
        synchronized (this) {
            if (!this.f14847r) {
                throw new IllegalStateException("released");
            }
            if (this.f14846q) {
                throw new IllegalStateException("Check failed.");
            }
            if (this.f14845p) {
                throw new IllegalStateException("Check failed.");
            }
            h0 h0Var = h0.INSTANCE;
        }
        d dVar = this.f14841l;
        r.b(dVar);
        c cVar = new c(this, this.f14837h, dVar, dVar.a(this.f14833a, chain));
        this.f14844o = cVar;
        this.f14849t = cVar;
        synchronized (this) {
            this.f14845p = true;
            this.f14846q = true;
        }
        if (this.f14848s) {
            throw new IOException("Canceled");
        }
        return cVar;
    }

    public boolean p() {
        return this.f14848s;
    }

    public final IOException q(c exchange, boolean z10, boolean z11, IOException iOException) {
        boolean z12;
        boolean z13;
        r.e(exchange, "exchange");
        if (!r.a(exchange, this.f14849t)) {
            return iOException;
        }
        synchronized (this) {
            z12 = false;
            if (z10) {
                try {
                    if (!this.f14845p) {
                        if (z11 || !this.f14846q) {
                            z13 = false;
                        }
                    }
                    if (z10) {
                        this.f14845p = false;
                    }
                    if (z11) {
                        this.f14846q = false;
                    }
                    boolean z14 = this.f14845p;
                    boolean z15 = (z14 || this.f14846q) ? false : true;
                    if (!z14 && !this.f14846q && !this.f14847r) {
                        z12 = true;
                    }
                    z13 = z12;
                    z12 = z15;
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                if (z11) {
                }
                z13 = false;
            }
            h0 h0Var = h0.INSTANCE;
        }
        if (z12) {
            this.f14849t = null;
            f fVar = this.f14842m;
            if (fVar != null) {
                fVar.s();
            }
        }
        return z13 ? b(iOException) : iOException;
    }

    public final IOException r(IOException iOException) {
        boolean z10;
        synchronized (this) {
            try {
                z10 = false;
                if (this.f14847r) {
                    this.f14847r = false;
                    if (!this.f14845p && !this.f14846q) {
                        z10 = true;
                    }
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z10 ? b(iOException) : iOException;
    }

    public final Socket s() {
        f fVar = this.f14842m;
        r.b(fVar);
        if (i9.d.f12674h && !Thread.holdsLock(fVar)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + fVar);
        }
        List listN = fVar.n();
        Iterator it = listN.iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            if (r.a(((Reference) it.next()).get(), this)) {
                break;
            }
            i10++;
        }
        if (i10 == -1) {
            throw new IllegalStateException("Check failed.");
        }
        listN.remove(i10);
        this.f14842m = null;
        if (listN.isEmpty()) {
            fVar.B(System.nanoTime());
            if (this.f14836f.c(fVar)) {
                return fVar.D();
            }
        }
        return null;
    }

    public final boolean t() {
        d dVar = this.f14841l;
        r.b(dVar);
        return dVar.e();
    }

    public final void u(f fVar) {
        this.f14850u = fVar;
    }

    public final void v() {
        if (this.f14843n) {
            throw new IllegalStateException("Check failed.");
        }
        this.f14843n = true;
        this.f14838i.w();
    }
}
