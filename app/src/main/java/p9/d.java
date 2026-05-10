package p9;

import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import org.conscrypt.Conscrypt;
import org.conscrypt.ConscryptHostnameVerifier;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f15232e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f15233f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Provider f15234d;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(int i10, int i11, int i12) {
            Conscrypt.Version version = Conscrypt.version();
            return version.major() != i10 ? version.major() > i10 : version.minor() != i11 ? version.minor() > i11 : version.patch() >= i12;
        }

        public final d b() {
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (c()) {
                return new d(defaultConstructorMarker);
            }
            return null;
        }

        public final boolean c() {
            return d.f15233f;
        }

        private a() {
        }
    }

    public static final class b implements ConscryptHostnameVerifier {
        public static final b INSTANCE = new b();

        private b() {
        }
    }

    static {
        a aVar = new a(null);
        f15232e = aVar;
        boolean z10 = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version", false, aVar.getClass().getClassLoader());
            if (Conscrypt.isAvailable()) {
                if (aVar.a(2, 1, 0)) {
                    z10 = true;
                }
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        f15233f = z10;
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // p9.h
    public void e(SSLSocket sslSocket, String str, List protocols) {
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
        if (!Conscrypt.isConscrypt(sslSocket)) {
            super.e(sslSocket, str, protocols);
        } else {
            Conscrypt.setUseSessionTickets(sslSocket, true);
            Conscrypt.setApplicationProtocols(sslSocket, (String[]) h.f15249a.b(protocols).toArray(new String[0]));
        }
    }

    @Override // p9.h
    public String g(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        return Conscrypt.isConscrypt(sslSocket) ? Conscrypt.getApplicationProtocol(sslSocket) : super.g(sslSocket);
    }

    @Override // p9.h
    public SSLContext m() throws NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f15234d);
        r.d(sSLContext, "getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // p9.h
    public SSLSocketFactory n(X509TrustManager trustManager) throws NoSuchAlgorithmException, KeyManagementException {
        r.e(trustManager, "trustManager");
        SSLContext sSLContextM = m();
        sSLContextM.init(null, new TrustManager[]{trustManager}, null);
        SSLSocketFactory socketFactory = sSLContextM.getSocketFactory();
        r.d(socketFactory, "newSSLContext().apply {\n…null)\n    }.socketFactory");
        return socketFactory;
    }

    @Override // p9.h
    public X509TrustManager o() throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        r.b(trustManagers);
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                r.c(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                Conscrypt.setHostnameVerifier(x509TrustManager, b.INSTANCE);
                return x509TrustManager;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unexpected default trust managers: ");
        String string = Arrays.toString(trustManagers);
        r.d(string, "toString(this)");
        sb.append(string);
        throw new IllegalStateException(sb.toString().toString());
    }

    private d() {
        Provider providerNewProvider = Conscrypt.newProvider();
        r.d(providerNewProvider, "newProvider()");
        this.f15234d = providerNewProvider;
    }
}
