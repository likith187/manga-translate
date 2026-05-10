package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.q;
import p9.h;
import s9.c;

/* JADX INFO: loaded from: classes2.dex */
public class x implements Cloneable {
    public static final b G = new b(null);
    private static final List H = i9.d.v(y.HTTP_2, y.HTTP_1_1);
    private static final List I = i9.d.v(k.f14904i, k.f14906k);
    private final int A;
    private final int B;
    private final int C;
    private final int D;
    private final long E;
    private final okhttp3.internal.connection.h F;

    /* JADX INFO: renamed from: a */
    private final o f14987a;

    /* JADX INFO: renamed from: b */
    private final j f14988b;

    /* JADX INFO: renamed from: c */
    private final List f14989c;

    /* JADX INFO: renamed from: f */
    private final List f14990f;

    /* JADX INFO: renamed from: h */
    private final q.c f14991h;

    /* JADX INFO: renamed from: i */
    private final boolean f14992i;

    /* JADX INFO: renamed from: j */
    private final okhttp3.b f14993j;

    /* JADX INFO: renamed from: k */
    private final boolean f14994k;

    /* JADX INFO: renamed from: l */
    private final boolean f14995l;

    /* JADX INFO: renamed from: m */
    private final m f14996m;

    /* JADX INFO: renamed from: n */
    private final p f14997n;

    /* JADX INFO: renamed from: o */
    private final Proxy f14998o;

    /* JADX INFO: renamed from: p */
    private final ProxySelector f14999p;

    /* JADX INFO: renamed from: q */
    private final okhttp3.b f15000q;

    /* JADX INFO: renamed from: r */
    private final SocketFactory f15001r;

    /* JADX INFO: renamed from: s */
    private final SSLSocketFactory f15002s;

    /* JADX INFO: renamed from: t */
    private final X509TrustManager f15003t;

    /* JADX INFO: renamed from: u */
    private final List f15004u;

    /* JADX INFO: renamed from: v */
    private final List f15005v;

    /* JADX INFO: renamed from: w */
    private final HostnameVerifier f15006w;

    /* JADX INFO: renamed from: x */
    private final f f15007x;

    /* JADX INFO: renamed from: y */
    private final s9.c f15008y;

    /* JADX INFO: renamed from: z */
    private final int f15009z;

    public static final class a {
        private int A;
        private long B;
        private okhttp3.internal.connection.h C;

        /* JADX INFO: renamed from: a */
        private o f15010a = new o();

        /* JADX INFO: renamed from: b */
        private j f15011b = new j();

        /* JADX INFO: renamed from: c */
        private final List f15012c = new ArrayList();

        /* JADX INFO: renamed from: d */
        private final List f15013d = new ArrayList();

        /* JADX INFO: renamed from: e */
        private q.c f15014e = i9.d.g(q.f14943b);

        /* JADX INFO: renamed from: f */
        private boolean f15015f = true;

        /* JADX INFO: renamed from: g */
        private okhttp3.b f15016g;

        /* JADX INFO: renamed from: h */
        private boolean f15017h;

        /* JADX INFO: renamed from: i */
        private boolean f15018i;

        /* JADX INFO: renamed from: j */
        private m f15019j;

        /* JADX INFO: renamed from: k */
        private p f15020k;

        /* JADX INFO: renamed from: l */
        private Proxy f15021l;

        /* JADX INFO: renamed from: m */
        private ProxySelector f15022m;

        /* JADX INFO: renamed from: n */
        private okhttp3.b f15023n;

        /* JADX INFO: renamed from: o */
        private SocketFactory f15024o;

        /* JADX INFO: renamed from: p */
        private SSLSocketFactory f15025p;

        /* JADX INFO: renamed from: q */
        private X509TrustManager f15026q;

        /* JADX INFO: renamed from: r */
        private List f15027r;

        /* JADX INFO: renamed from: s */
        private List f15028s;

        /* JADX INFO: renamed from: t */
        private HostnameVerifier f15029t;

        /* JADX INFO: renamed from: u */
        private f f15030u;

        /* JADX INFO: renamed from: v */
        private s9.c f15031v;

        /* JADX INFO: renamed from: w */
        private int f15032w;

        /* JADX INFO: renamed from: x */
        private int f15033x;

        /* JADX INFO: renamed from: y */
        private int f15034y;

        /* JADX INFO: renamed from: z */
        private int f15035z;

        public a() {
            okhttp3.b bVar = okhttp3.b.f14662b;
            this.f15016g = bVar;
            this.f15017h = true;
            this.f15018i = true;
            this.f15019j = m.f14930b;
            this.f15020k = p.f14940b;
            this.f15023n = bVar;
            SocketFactory socketFactory = SocketFactory.getDefault();
            kotlin.jvm.internal.r.d(socketFactory, "getDefault()");
            this.f15024o = socketFactory;
            b bVar2 = x.G;
            this.f15027r = bVar2.a();
            this.f15028s = bVar2.b();
            this.f15029t = s9.d.INSTANCE;
            this.f15030u = f.f14724d;
            this.f15033x = 10000;
            this.f15034y = 10000;
            this.f15035z = 10000;
            this.B = 1024L;
        }

        public final okhttp3.internal.connection.h A() {
            return this.C;
        }

        public final SocketFactory B() {
            return this.f15024o;
        }

        public final SSLSocketFactory C() {
            return this.f15025p;
        }

        public final int D() {
            return this.f15035z;
        }

        public final X509TrustManager E() {
            return this.f15026q;
        }

        public final x a() {
            return new x(this);
        }

        public final okhttp3.b b() {
            return this.f15016g;
        }

        public final c c() {
            return null;
        }

        public final int d() {
            return this.f15032w;
        }

        public final s9.c e() {
            return this.f15031v;
        }

        public final f f() {
            return this.f15030u;
        }

        public final int g() {
            return this.f15033x;
        }

        public final j h() {
            return this.f15011b;
        }

        public final List i() {
            return this.f15027r;
        }

        public final m j() {
            return this.f15019j;
        }

        public final o k() {
            return this.f15010a;
        }

        public final p l() {
            return this.f15020k;
        }

        public final q.c m() {
            return this.f15014e;
        }

        public final boolean n() {
            return this.f15017h;
        }

        public final boolean o() {
            return this.f15018i;
        }

        public final HostnameVerifier p() {
            return this.f15029t;
        }

        public final List q() {
            return this.f15012c;
        }

        public final long r() {
            return this.B;
        }

        public final List s() {
            return this.f15013d;
        }

        public final int t() {
            return this.A;
        }

        public final List u() {
            return this.f15028s;
        }

        public final Proxy v() {
            return this.f15021l;
        }

        public final okhttp3.b w() {
            return this.f15023n;
        }

        public final ProxySelector x() {
            return this.f15022m;
        }

        public final int y() {
            return this.f15034y;
        }

        public final boolean z() {
            return this.f15015f;
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return x.I;
        }

        public final List b() {
            return x.H;
        }

        private b() {
        }
    }

    public x(a builder) throws NoSuchAlgorithmException, KeyStoreException {
        ProxySelector proxySelectorX;
        kotlin.jvm.internal.r.e(builder, "builder");
        this.f14987a = builder.k();
        this.f14988b = builder.h();
        this.f14989c = i9.d.Q(builder.q());
        this.f14990f = i9.d.Q(builder.s());
        this.f14991h = builder.m();
        this.f14992i = builder.z();
        this.f14993j = builder.b();
        this.f14994k = builder.n();
        this.f14995l = builder.o();
        this.f14996m = builder.j();
        builder.c();
        this.f14997n = builder.l();
        this.f14998o = builder.v();
        if (builder.v() != null) {
            proxySelectorX = r9.a.INSTANCE;
        } else {
            proxySelectorX = builder.x();
            proxySelectorX = proxySelectorX == null ? ProxySelector.getDefault() : proxySelectorX;
            if (proxySelectorX == null) {
                proxySelectorX = r9.a.INSTANCE;
            }
        }
        this.f14999p = proxySelectorX;
        this.f15000q = builder.w();
        this.f15001r = builder.B();
        List listI = builder.i();
        this.f15004u = listI;
        this.f15005v = builder.u();
        this.f15006w = builder.p();
        this.f15009z = builder.d();
        this.A = builder.g();
        this.B = builder.y();
        this.C = builder.D();
        this.D = builder.t();
        this.E = builder.r();
        okhttp3.internal.connection.h hVarA = builder.A();
        this.F = hVarA == null ? new okhttp3.internal.connection.h() : hVarA;
        if (listI == null || !listI.isEmpty()) {
            Iterator it = listI.iterator();
            while (it.hasNext()) {
                if (((k) it.next()).f()) {
                    if (builder.C() != null) {
                        this.f15002s = builder.C();
                        s9.c cVarE = builder.e();
                        kotlin.jvm.internal.r.b(cVarE);
                        this.f15008y = cVarE;
                        X509TrustManager x509TrustManagerE = builder.E();
                        kotlin.jvm.internal.r.b(x509TrustManagerE);
                        this.f15003t = x509TrustManagerE;
                        f fVarF = builder.f();
                        kotlin.jvm.internal.r.b(cVarE);
                        this.f15007x = fVarF.e(cVarE);
                    } else {
                        h.a aVar = p9.h.f15249a;
                        X509TrustManager x509TrustManagerO = aVar.g().o();
                        this.f15003t = x509TrustManagerO;
                        p9.h hVarG = aVar.g();
                        kotlin.jvm.internal.r.b(x509TrustManagerO);
                        this.f15002s = hVarG.n(x509TrustManagerO);
                        c.a aVar2 = s9.c.f15583a;
                        kotlin.jvm.internal.r.b(x509TrustManagerO);
                        s9.c cVarA = aVar2.a(x509TrustManagerO);
                        this.f15008y = cVarA;
                        f fVarF2 = builder.f();
                        kotlin.jvm.internal.r.b(cVarA);
                        this.f15007x = fVarF2.e(cVarA);
                    }
                }
            }
            this.f15002s = null;
            this.f15008y = null;
            this.f15003t = null;
            this.f15007x = f.f14724d;
        } else {
            this.f15002s = null;
            this.f15008y = null;
            this.f15003t = null;
            this.f15007x = f.f14724d;
        }
        E();
    }

    private final void E() {
        List list = this.f14989c;
        kotlin.jvm.internal.r.c(list, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
        if (list.contains(null)) {
            throw new IllegalStateException(("Null interceptor: " + this.f14989c).toString());
        }
        List list2 = this.f14990f;
        kotlin.jvm.internal.r.c(list2, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
        if (list2.contains(null)) {
            throw new IllegalStateException(("Null network interceptor: " + this.f14990f).toString());
        }
        List list3 = this.f15004u;
        if (list3 == null || !list3.isEmpty()) {
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                if (((k) it.next()).f()) {
                    if (this.f15002s == null) {
                        throw new IllegalStateException("sslSocketFactory == null");
                    }
                    if (this.f15008y == null) {
                        throw new IllegalStateException("certificateChainCleaner == null");
                    }
                    if (this.f15003t == null) {
                        throw new IllegalStateException("x509TrustManager == null");
                    }
                    return;
                }
            }
        }
        if (this.f15002s != null) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.f15008y != null) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.f15003t != null) {
            throw new IllegalStateException("Check failed.");
        }
        if (!kotlin.jvm.internal.r.a(this.f15007x, f.f14724d)) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final int A() {
        return this.B;
    }

    public final boolean B() {
        return this.f14992i;
    }

    public final SocketFactory C() {
        return this.f15001r;
    }

    public final SSLSocketFactory D() {
        SSLSocketFactory sSLSocketFactory = this.f15002s;
        if (sSLSocketFactory != null) {
            return sSLSocketFactory;
        }
        throw new IllegalStateException("CLEARTEXT-only client");
    }

    public final int F() {
        return this.C;
    }

    public Object clone() {
        return super.clone();
    }

    public final okhttp3.b d() {
        return this.f14993j;
    }

    public final c e() {
        return null;
    }

    public final int f() {
        return this.f15009z;
    }

    public final f g() {
        return this.f15007x;
    }

    public final int h() {
        return this.A;
    }

    public final j i() {
        return this.f14988b;
    }

    public final List j() {
        return this.f15004u;
    }

    public final m k() {
        return this.f14996m;
    }

    public final o l() {
        return this.f14987a;
    }

    public final p m() {
        return this.f14997n;
    }

    public final q.c n() {
        return this.f14991h;
    }

    public final boolean o() {
        return this.f14994k;
    }

    public final boolean p() {
        return this.f14995l;
    }

    public final okhttp3.internal.connection.h q() {
        return this.F;
    }

    public final HostnameVerifier r() {
        return this.f15006w;
    }

    public final List s() {
        return this.f14989c;
    }

    public final List t() {
        return this.f14990f;
    }

    public e u(z request) {
        kotlin.jvm.internal.r.e(request, "request");
        return new okhttp3.internal.connection.e(this, request, false);
    }

    public final int v() {
        return this.D;
    }

    public final List w() {
        return this.f15005v;
    }

    public final Proxy x() {
        return this.f14998o;
    }

    public final okhttp3.b y() {
        return this.f15000q;
    }

    public final ProxySelector z() {
        return this.f14999p;
    }
}
