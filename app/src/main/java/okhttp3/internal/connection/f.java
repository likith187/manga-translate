package okhttp3.internal.connection;

import java.io.IOException;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import o9.f;
import o9.m;
import okhttp3.b0;
import okhttp3.d0;
import okhttp3.k;
import okhttp3.q;
import okhttp3.s;
import okhttp3.u;
import okhttp3.x;
import okhttp3.y;
import okhttp3.z;
import t9.n;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends f.c implements okhttp3.i {

    /* JADX INFO: renamed from: t */
    public static final a f14853t = new a(null);

    /* JADX INFO: renamed from: c */
    private final g f14854c;

    /* JADX INFO: renamed from: d */
    private final d0 f14855d;

    /* JADX INFO: renamed from: e */
    private Socket f14856e;

    /* JADX INFO: renamed from: f */
    private Socket f14857f;

    /* JADX INFO: renamed from: g */
    private s f14858g;

    /* JADX INFO: renamed from: h */
    private y f14859h;

    /* JADX INFO: renamed from: i */
    private o9.f f14860i;

    /* JADX INFO: renamed from: j */
    private t9.f f14861j;

    /* JADX INFO: renamed from: k */
    private t9.e f14862k;

    /* JADX INFO: renamed from: l */
    private boolean f14863l;

    /* JADX INFO: renamed from: m */
    private boolean f14864m;

    /* JADX INFO: renamed from: n */
    private int f14865n;

    /* JADX INFO: renamed from: o */
    private int f14866o;

    /* JADX INFO: renamed from: p */
    private int f14867p;

    /* JADX INFO: renamed from: q */
    private int f14868q;

    /* JADX INFO: renamed from: r */
    private final List f14869r;

    /* JADX INFO: renamed from: s */
    private long f14870s;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a */
        public static final /* synthetic */ int[] f14871a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f14871a = iArr;
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ okhttp3.a $address;
        final /* synthetic */ okhttp3.f $certificatePinner;
        final /* synthetic */ s $unverifiedHandshake;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(okhttp3.f fVar, s sVar, okhttp3.a aVar) {
            super(0);
            this.$certificatePinner = fVar;
            this.$unverifiedHandshake = sVar;
            this.$address = aVar;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final List<Certificate> mo8invoke() {
            s9.c cVarD = this.$certificatePinner.d();
            r.b(cVarD);
            return cVarD.a(this.$unverifiedHandshake.d(), this.$address.l().h());
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final List<X509Certificate> mo8invoke() {
            s sVar = f.this.f14858g;
            r.b(sVar);
            List<Certificate> listD = sVar.d();
            ArrayList arrayList = new ArrayList(o.r(listD, 10));
            for (Certificate certificate : listD) {
                r.c(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                arrayList.add((X509Certificate) certificate);
            }
            return arrayList;
        }
    }

    public f(g connectionPool, d0 route) {
        r.e(connectionPool, "connectionPool");
        r.e(route, "route");
        this.f14854c = connectionPool;
        this.f14855d = route;
        this.f14868q = 1;
        this.f14869r = new ArrayList();
        this.f14870s = Long.MAX_VALUE;
    }

    private final boolean A(List list) {
        if (list != null && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d0 d0Var = (d0) it.next();
            Proxy.Type type = d0Var.b().type();
            Proxy.Type type2 = Proxy.Type.DIRECT;
            if (type == type2 && this.f14855d.b().type() == type2 && r.a(this.f14855d.d(), d0Var.d())) {
                return true;
            }
        }
        return false;
    }

    private final void E(int i10) throws SocketException {
        Socket socket = this.f14857f;
        r.b(socket);
        t9.f fVar = this.f14861j;
        r.b(fVar);
        t9.e eVar = this.f14862k;
        r.b(eVar);
        socket.setSoTimeout(0);
        o9.f fVarA = new f.a(true, l9.e.INSTANCE).q(socket, this.f14855d.a().l().h(), fVar, eVar).k(this).l(i10).a();
        this.f14860i = fVarA;
        this.f14868q = o9.f.F.a().d();
        o9.f.g1(fVarA, false, null, 3, null);
    }

    private final boolean F(u uVar) {
        s sVar;
        if (i9.d.f12674h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        u uVarL = this.f14855d.a().l();
        if (uVar.m() != uVarL.m()) {
            return false;
        }
        if (r.a(uVar.h(), uVarL.h())) {
            return true;
        }
        if (this.f14864m || (sVar = this.f14858g) == null) {
            return false;
        }
        r.b(sVar);
        return e(uVar, sVar);
    }

    private final boolean e(u uVar, s sVar) {
        List listD = sVar.d();
        if (listD.isEmpty()) {
            return false;
        }
        s9.d dVar = s9.d.INSTANCE;
        String strH = uVar.h();
        Object obj = listD.get(0);
        r.c(obj, "null cannot be cast to non-null type java.security.cert.X509Certificate");
        return dVar.e(strH, (X509Certificate) obj);
    }

    private final void h(int i10, int i11, okhttp3.e eVar, q qVar) throws IOException {
        Socket socketCreateSocket;
        Proxy proxyB = this.f14855d.b();
        okhttp3.a aVarA = this.f14855d.a();
        Proxy.Type type = proxyB.type();
        int i12 = type == null ? -1 : b.f14871a[type.ordinal()];
        if (i12 == 1 || i12 == 2) {
            socketCreateSocket = aVarA.j().createSocket();
            r.b(socketCreateSocket);
        } else {
            socketCreateSocket = new Socket(proxyB);
        }
        this.f14856e = socketCreateSocket;
        qVar.i(eVar, this.f14855d.d(), proxyB);
        socketCreateSocket.setSoTimeout(i11);
        try {
            p9.h.f15249a.g().f(socketCreateSocket, this.f14855d.d(), i10);
            try {
                this.f14861j = n.b(n.f(socketCreateSocket));
                this.f14862k = n.a(n.d(socketCreateSocket));
            } catch (NullPointerException e10) {
                if (r.a(e10.getMessage(), "throw with null exception")) {
                    throw new IOException(e10);
                }
            }
        } catch (ConnectException e11) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f14855d.d());
            connectException.initCause(e11);
            throw connectException;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void i(okhttp3.internal.connection.b bVar) throws Throwable {
        okhttp3.a aVarA = this.f14855d.a();
        SSLSocketFactory sSLSocketFactoryK = aVarA.k();
        SSLSocket sSLSocket = null;
        try {
            r.b(sSLSocketFactoryK);
            Socket socketCreateSocket = sSLSocketFactoryK.createSocket(this.f14856e, aVarA.l().h(), aVarA.l().m(), true);
            r.c(socketCreateSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
            SSLSocket sSLSocket2 = (SSLSocket) socketCreateSocket;
            try {
                k kVarA = bVar.a(sSLSocket2);
                if (kVarA.h()) {
                    p9.h.f15249a.g().e(sSLSocket2, aVarA.l().h(), aVarA.f());
                }
                sSLSocket2.startHandshake();
                SSLSession sslSocketSession = sSLSocket2.getSession();
                s.a aVar = s.f14951e;
                r.d(sslSocketSession, "sslSocketSession");
                s sVarA = aVar.a(sslSocketSession);
                HostnameVerifier hostnameVerifierE = aVarA.e();
                r.b(hostnameVerifierE);
                if (hostnameVerifierE.verify(aVarA.l().h(), sslSocketSession)) {
                    okhttp3.f fVarA = aVarA.a();
                    r.b(fVarA);
                    this.f14858g = new s(sVarA.e(), sVarA.a(), sVarA.c(), new c(fVarA, sVarA, aVarA));
                    fVarA.b(aVarA.l().h(), new d());
                    String strG = kVarA.h() ? p9.h.f15249a.g().g(sSLSocket2) : null;
                    this.f14857f = sSLSocket2;
                    this.f14861j = n.b(n.f(sSLSocket2));
                    this.f14862k = n.a(n.d(sSLSocket2));
                    this.f14859h = strG != null ? y.Companion.a(strG) : y.HTTP_1_1;
                    p9.h.f15249a.g().b(sSLSocket2);
                    return;
                }
                List listD = sVarA.d();
                if (listD.isEmpty()) {
                    throw new SSLPeerUnverifiedException("Hostname " + aVarA.l().h() + " not verified (no certificates)");
                }
                Object obj = listD.get(0);
                r.c(obj, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                X509Certificate x509Certificate = (X509Certificate) obj;
                throw new SSLPeerUnverifiedException(kotlin.text.r.h("\n              |Hostname " + aVarA.l().h() + " not verified:\n              |    certificate: " + okhttp3.f.f14723c.a(x509Certificate) + "\n              |    DN: " + x509Certificate.getSubjectDN().getName() + "\n              |    subjectAltNames: " + s9.d.INSTANCE.a(x509Certificate) + "\n              ", null, 1, null));
            } catch (Throwable th) {
                th = th;
                sSLSocket = sSLSocket2;
                if (sSLSocket != null) {
                    p9.h.f15249a.g().b(sSLSocket);
                }
                if (sSLSocket != null) {
                    i9.d.m(sSLSocket);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private final void j(int i10, int i11, int i12, okhttp3.e eVar, q qVar) throws IOException {
        z zVarL = l();
        u uVarI = zVarL.i();
        for (int i13 = 0; i13 < 21; i13++) {
            h(i10, i11, eVar, qVar);
            zVarL = k(i11, i12, zVarL, uVarI);
            if (zVarL == null) {
                return;
            }
            Socket socket = this.f14856e;
            if (socket != null) {
                i9.d.m(socket);
            }
            this.f14856e = null;
            this.f14862k = null;
            this.f14861j = null;
            qVar.g(eVar, this.f14855d.d(), this.f14855d.b(), null);
        }
    }

    private final z k(int i10, int i11, z zVar, u uVar) throws IOException {
        String str = "CONNECT " + i9.d.O(uVar, true) + " HTTP/1.1";
        while (true) {
            t9.f fVar = this.f14861j;
            r.b(fVar);
            t9.e eVar = this.f14862k;
            r.b(eVar);
            n9.b bVar = new n9.b(null, this, fVar, eVar);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            fVar.f().g(i10, timeUnit);
            eVar.f().g(i11, timeUnit);
            bVar.A(zVar.e(), str);
            bVar.a();
            b0.a aVarG = bVar.g(false);
            r.b(aVarG);
            b0 b0VarC = aVarG.r(zVar).c();
            bVar.z(b0VarC);
            int iX = b0VarC.x();
            if (iX == 200) {
                if (fVar.d().S() && eVar.d().S()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iX != 407) {
                throw new IOException("Unexpected response code for CONNECT: " + b0VarC.x());
            }
            z zVarA = this.f14855d.a().h().a(this.f14855d, b0VarC);
            if (zVarA == null) {
                throw new IOException("Failed to authenticate with proxy");
            }
            if (kotlin.text.r.v("close", b0.I(b0VarC, "Connection", null, 2, null), true)) {
                return zVarA;
            }
            zVar = zVarA;
        }
    }

    private final z l() {
        z zVarB = new z.a().h(this.f14855d.a().l()).e("CONNECT", null).c("Host", i9.d.O(this.f14855d.a().l(), true)).c("Proxy-Connection", "Keep-Alive").c("User-Agent", "okhttp/4.12.0").b();
        z zVarA = this.f14855d.a().h().a(this.f14855d, new b0.a().r(zVarB).p(y.HTTP_1_1).g(407).m("Preemptive Authenticate").b(i9.d.f12669c).s(-1L).q(-1L).j("Proxy-Authenticate", "OkHttp-Preemptive").c());
        return zVarA == null ? zVarB : zVarA;
    }

    private final void m(okhttp3.internal.connection.b bVar, int i10, okhttp3.e eVar, q qVar) throws Throwable {
        if (this.f14855d.a().k() != null) {
            qVar.B(eVar);
            i(bVar);
            qVar.A(eVar, this.f14858g);
            if (this.f14859h == y.HTTP_2) {
                E(i10);
                return;
            }
            return;
        }
        List listF = this.f14855d.a().f();
        y yVar = y.H2_PRIOR_KNOWLEDGE;
        if (!listF.contains(yVar)) {
            this.f14857f = this.f14856e;
            this.f14859h = y.HTTP_1_1;
        } else {
            this.f14857f = this.f14856e;
            this.f14859h = yVar;
            E(i10);
        }
    }

    public final void B(long j10) {
        this.f14870s = j10;
    }

    public final void C(boolean z10) {
        this.f14863l = z10;
    }

    public Socket D() {
        Socket socket = this.f14857f;
        r.b(socket);
        return socket;
    }

    public final synchronized void G(e call, IOException iOException) {
        try {
            r.e(call, "call");
            if (iOException instanceof o9.n) {
                if (((o9.n) iOException).errorCode == o9.b.REFUSED_STREAM) {
                    int i10 = this.f14867p + 1;
                    this.f14867p = i10;
                    if (i10 > 1) {
                        this.f14863l = true;
                        this.f14865n++;
                    }
                } else if (((o9.n) iOException).errorCode != o9.b.CANCEL || !call.p()) {
                    this.f14863l = true;
                    this.f14865n++;
                }
            } else if (!v() || (iOException instanceof o9.a)) {
                this.f14863l = true;
                if (this.f14866o == 0) {
                    if (iOException != null) {
                        g(call.j(), this.f14855d, iOException);
                    }
                    this.f14865n++;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // o9.f.c
    public synchronized void a(o9.f connection, m settings) {
        r.e(connection, "connection");
        r.e(settings, "settings");
        this.f14868q = settings.d();
    }

    @Override // o9.f.c
    public void b(o9.i stream) {
        r.e(stream, "stream");
        stream.d(o9.b.REFUSED_STREAM, null);
    }

    public final void d() {
        Socket socket = this.f14856e;
        if (socket != null) {
            i9.d.m(socket);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0149 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f(int r17, int r18, int r19, int r20, boolean r21, okhttp3.e r22, okhttp3.q r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 351
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.f.f(int, int, int, int, boolean, okhttp3.e, okhttp3.q):void");
    }

    public final void g(x client, d0 failedRoute, IOException failure) {
        r.e(client, "client");
        r.e(failedRoute, "failedRoute");
        r.e(failure, "failure");
        if (failedRoute.b().type() != Proxy.Type.DIRECT) {
            okhttp3.a aVarA = failedRoute.a();
            aVarA.i().connectFailed(aVarA.l().r(), failedRoute.b().address(), failure);
        }
        client.q().b(failedRoute);
    }

    public final List n() {
        return this.f14869r;
    }

    public final long o() {
        return this.f14870s;
    }

    public final boolean p() {
        return this.f14863l;
    }

    public final int q() {
        return this.f14865n;
    }

    public s r() {
        return this.f14858g;
    }

    public final synchronized void s() {
        this.f14866o++;
    }

    public final boolean t(okhttp3.a address, List list) {
        r.e(address, "address");
        if (i9.d.f12674h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        if (this.f14869r.size() >= this.f14868q || this.f14863l || !this.f14855d.a().d(address)) {
            return false;
        }
        if (r.a(address.l().h(), z().a().l().h())) {
            return true;
        }
        if (this.f14860i == null || list == null || !A(list) || address.e() != s9.d.INSTANCE || !F(address.l())) {
            return false;
        }
        try {
            okhttp3.f fVarA = address.a();
            r.b(fVarA);
            String strH = address.l().h();
            s sVarR = r();
            r.b(sVarR);
            fVarA.a(strH, sVarR.d());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public String toString() {
        Object objA;
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f14855d.a().l().h());
        sb.append(':');
        sb.append(this.f14855d.a().l().m());
        sb.append(", proxy=");
        sb.append(this.f14855d.b());
        sb.append(" hostAddress=");
        sb.append(this.f14855d.d());
        sb.append(" cipherSuite=");
        s sVar = this.f14858g;
        if (sVar == null || (objA = sVar.a()) == null) {
            objA = "none";
        }
        sb.append(objA);
        sb.append(" protocol=");
        sb.append(this.f14859h);
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    public final boolean u(boolean z10) {
        long j10;
        if (i9.d.f12674h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        long jNanoTime = System.nanoTime();
        Socket socket = this.f14856e;
        r.b(socket);
        Socket socket2 = this.f14857f;
        r.b(socket2);
        t9.f fVar = this.f14861j;
        r.b(fVar);
        if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
            return false;
        }
        o9.f fVar2 = this.f14860i;
        if (fVar2 != null) {
            return fVar2.S0(jNanoTime);
        }
        synchronized (this) {
            j10 = jNanoTime - this.f14870s;
        }
        if (j10 < 10000000000L || !z10) {
            return true;
        }
        return i9.d.E(socket2, fVar);
    }

    public final boolean v() {
        return this.f14860i != null;
    }

    public final m9.d w(x client, m9.g chain) throws SocketException {
        r.e(client, "client");
        r.e(chain, "chain");
        Socket socket = this.f14857f;
        r.b(socket);
        t9.f fVar = this.f14861j;
        r.b(fVar);
        t9.e eVar = this.f14862k;
        r.b(eVar);
        o9.f fVar2 = this.f14860i;
        if (fVar2 != null) {
            return new o9.g(client, this, chain, fVar2);
        }
        socket.setSoTimeout(chain.k());
        t9.b0 b0VarF = fVar.f();
        long jH = chain.h();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        b0VarF.g(jH, timeUnit);
        eVar.f().g(chain.j(), timeUnit);
        return new n9.b(client, this, fVar, eVar);
    }

    public final synchronized void x() {
        this.f14864m = true;
    }

    public final synchronized void y() {
        this.f14863l = true;
    }

    public d0 z() {
        return this.f14855d;
    }
}
