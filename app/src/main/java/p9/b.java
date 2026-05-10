package p9;

import android.security.NetworkSecurityPolicy;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import q9.i;
import q9.j;
import q9.k;
import q9.l;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends h {

    /* JADX INFO: renamed from: f */
    public static final a f15223f = new a(null);

    /* JADX INFO: renamed from: g */
    private static final boolean f15224g;

    /* JADX INFO: renamed from: d */
    private final List f15225d;

    /* JADX INFO: renamed from: e */
    private final q9.h f15226e;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            if (b()) {
                return new b();
            }
            return null;
        }

        public final boolean b() {
            return b.f15224g;
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: p9.b$b */
    public static final class C0204b implements s9.e {

        /* JADX INFO: renamed from: a */
        private final X509TrustManager f15227a;

        /* JADX INFO: renamed from: b */
        private final Method f15228b;

        public C0204b(X509TrustManager trustManager, Method findByIssuerAndSignatureMethod) {
            r.e(trustManager, "trustManager");
            r.e(findByIssuerAndSignatureMethod, "findByIssuerAndSignatureMethod");
            this.f15227a = trustManager;
            this.f15228b = findByIssuerAndSignatureMethod;
        }

        @Override // s9.e
        public X509Certificate a(X509Certificate cert) {
            r.e(cert, "cert");
            try {
                Object objInvoke = this.f15228b.invoke(this.f15227a, cert);
                r.c(objInvoke, "null cannot be cast to non-null type java.security.cert.TrustAnchor");
                return ((TrustAnchor) objInvoke).getTrustedCert();
            } catch (IllegalAccessException e10) {
                throw new AssertionError("unable to get issues and signature", e10);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0204b)) {
                return false;
            }
            C0204b c0204b = (C0204b) obj;
            return r.a(this.f15227a, c0204b.f15227a) && r.a(this.f15228b, c0204b.f15228b);
        }

        public int hashCode() {
            return (this.f15227a.hashCode() * 31) + this.f15228b.hashCode();
        }

        public String toString() {
            return "CustomTrustRootIndex(trustManager=" + this.f15227a + ", findByIssuerAndSignatureMethod=" + this.f15228b + ')';
        }
    }

    static {
        h.f15249a.h();
        f15224g = false;
    }

    public b() {
        List listL = o.l(l.a.b(l.f15380j, null, 1, null), new j(q9.f.f15362f.d()), new j(i.f15376a.a()), new j(q9.g.f15370a.a()));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listL) {
            if (((k) obj).isSupported()) {
                arrayList.add(obj);
            }
        }
        this.f15225d = arrayList;
        this.f15226e = q9.h.f15372d.a();
    }

    @Override // p9.h
    public s9.c c(X509TrustManager trustManager) {
        r.e(trustManager, "trustManager");
        q9.b bVarA = q9.b.f15357d.a(trustManager);
        return bVarA != null ? bVarA : super.c(trustManager);
    }

    @Override // p9.h
    public s9.e d(X509TrustManager trustManager) {
        r.e(trustManager, "trustManager");
        try {
            Method method = trustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            method.setAccessible(true);
            r.d(method, "method");
            return new C0204b(trustManager, method);
        } catch (NoSuchMethodException unused) {
            return super.d(trustManager);
        }
    }

    @Override // p9.h
    public void e(SSLSocket sslSocket, String str, List protocols) {
        Object next;
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
        Iterator it = this.f15225d.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((k) next).a(sslSocket)) {
                    break;
                }
            }
        }
        k kVar = (k) next;
        if (kVar != null) {
            kVar.c(sslSocket, str, protocols);
        }
    }

    @Override // p9.h
    public void f(Socket socket, InetSocketAddress address, int i10) throws IOException {
        r.e(socket, "socket");
        r.e(address, "address");
        socket.connect(address, i10);
    }

    @Override // p9.h
    public String g(SSLSocket sslSocket) {
        Object next;
        r.e(sslSocket, "sslSocket");
        Iterator it = this.f15225d.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((k) next).a(sslSocket)) {
                break;
            }
        }
        k kVar = (k) next;
        if (kVar != null) {
            return kVar.b(sslSocket);
        }
        return null;
    }

    @Override // p9.h
    public Object h(String closer) {
        r.e(closer, "closer");
        return this.f15226e.a(closer);
    }

    @Override // p9.h
    public boolean i(String hostname) {
        r.e(hostname, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(hostname);
    }

    @Override // p9.h
    public void l(String message, Object obj) {
        r.e(message, "message");
        if (this.f15226e.b(obj)) {
            return;
        }
        h.k(this, message, 5, null, 4, null);
    }
}
