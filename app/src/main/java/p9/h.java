package p9;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import okhttp3.x;
import okhttp3.y;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a */
    public static final a f15249a;

    /* JADX INFO: renamed from: b */
    private static volatile h f15250b;

    /* JADX INFO: renamed from: c */
    private static final Logger f15251c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final h d() {
            q9.c.INSTANCE.b();
            h hVarA = p9.a.f15220e.a();
            if (hVarA != null) {
                return hVarA;
            }
            h hVarA2 = b.f15223f.a();
            r.b(hVarA2);
            return hVarA2;
        }

        private final h e() {
            g gVarA;
            c cVarA;
            d dVarB;
            if (j() && (dVarB = d.f15232e.b()) != null) {
                return dVarB;
            }
            if (i() && (cVarA = c.f15229e.a()) != null) {
                return cVarA;
            }
            if (k() && (gVarA = g.f15246e.a()) != null) {
                return gVarA;
            }
            f fVarA = f.f15244d.a();
            if (fVarA != null) {
                return fVarA;
            }
            h hVarA = e.f15235i.a();
            return hVarA != null ? hVarA : new h();
        }

        public final h f() {
            return h() ? d() : e();
        }

        private final boolean i() {
            return r.a("BC", Security.getProviders()[0].getName());
        }

        private final boolean j() {
            return r.a("Conscrypt", Security.getProviders()[0].getName());
        }

        private final boolean k() {
            return r.a("OpenJSSE", Security.getProviders()[0].getName());
        }

        public final List b(List protocols) {
            r.e(protocols, "protocols");
            ArrayList arrayList = new ArrayList();
            for (Object obj : protocols) {
                if (((y) obj) != y.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(o.r(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((y) it.next()).toString());
            }
            return arrayList2;
        }

        public final byte[] c(List protocols) {
            r.e(protocols, "protocols");
            t9.d dVar = new t9.d();
            for (String str : b(protocols)) {
                dVar.T(str.length());
                dVar.u0(str);
            }
            return dVar.Q();
        }

        public final h g() {
            return h.f15250b;
        }

        public final boolean h() {
            return r.a("Dalvik", System.getProperty("java.vm.name"));
        }

        private a() {
        }
    }

    static {
        a aVar = new a(null);
        f15249a = aVar;
        f15250b = aVar.f();
        f15251c = Logger.getLogger(x.class.getName());
    }

    public static /* synthetic */ void k(h hVar, String str, int i10, Throwable th, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
        }
        if ((i11 & 2) != 0) {
            i10 = 4;
        }
        if ((i11 & 4) != 0) {
            th = null;
        }
        hVar.j(str, i10, th);
    }

    public void b(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
    }

    public s9.c c(X509TrustManager trustManager) {
        r.e(trustManager, "trustManager");
        return new s9.a(d(trustManager));
    }

    public s9.e d(X509TrustManager trustManager) {
        r.e(trustManager, "trustManager");
        X509Certificate[] acceptedIssuers = trustManager.getAcceptedIssuers();
        r.d(acceptedIssuers, "trustManager.acceptedIssuers");
        return new s9.b((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    public void e(SSLSocket sslSocket, String str, List protocols) {
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
    }

    public void f(Socket socket, InetSocketAddress address, int i10) throws IOException {
        r.e(socket, "socket");
        r.e(address, "address");
        socket.connect(address, i10);
    }

    public String g(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        return null;
    }

    public Object h(String closer) {
        r.e(closer, "closer");
        if (f15251c.isLoggable(Level.FINE)) {
            return new Throwable(closer);
        }
        return null;
    }

    public boolean i(String hostname) {
        r.e(hostname, "hostname");
        return true;
    }

    public void j(String message, int i10, Throwable th) {
        r.e(message, "message");
        f15251c.log(i10 == 5 ? Level.WARNING : Level.INFO, message, th);
    }

    public void l(String message, Object obj) {
        r.e(message, "message");
        if (obj == null) {
            message = message + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        j(message, 5, (Throwable) obj);
    }

    public SSLContext m() throws NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        r.d(sSLContext, "getInstance(\"TLS\")");
        return sSLContext;
    }

    public SSLSocketFactory n(X509TrustManager trustManager) {
        r.e(trustManager, "trustManager");
        try {
            SSLContext sSLContextM = m();
            sSLContextM.init(null, new TrustManager[]{trustManager}, null);
            SSLSocketFactory socketFactory = sSLContextM.getSocketFactory();
            r.d(socketFactory, "newSSLContext().apply {\n…ll)\n      }.socketFactory");
            return socketFactory;
        } catch (GeneralSecurityException e10) {
            throw new AssertionError("No System TLS: " + e10, e10);
        }
    }

    public X509TrustManager o() throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        r.b(trustManagers);
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                r.c(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                return (X509TrustManager) trustManager;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unexpected default trust managers: ");
        String string = Arrays.toString(trustManagers);
        r.d(string, "toString(this)");
        sb.append(string);
        throw new IllegalStateException(sb.toString().toString());
    }

    public String toString() {
        String simpleName = getClass().getSimpleName();
        r.d(simpleName, "javaClass.simpleName");
        return simpleName;
    }
}
