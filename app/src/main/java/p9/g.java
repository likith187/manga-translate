package p9;

import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import org.openjsse.net.ssl.OpenJSSE;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f15246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f15247f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Provider f15248d;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g a() {
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (b()) {
                return new g(defaultConstructorMarker);
            }
            return null;
        }

        public final boolean b() {
            return g.f15247f;
        }

        private a() {
        }
    }

    static {
        a aVar = new a(null);
        f15246e = aVar;
        boolean z10 = false;
        try {
            Class.forName("org.openjsse.net.ssl.OpenJSSE", false, aVar.getClass().getClassLoader());
            z10 = true;
        } catch (ClassNotFoundException unused) {
        }
        f15247f = z10;
    }

    public /* synthetic */ g(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // p9.h
    public void e(SSLSocket sslSocket, String str, List protocols) {
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
        super.e(sslSocket, str, protocols);
    }

    @Override // p9.h
    public String g(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        return super.g(sslSocket);
    }

    @Override // p9.h
    public SSLContext m() throws NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance("TLSv1.3", this.f15248d);
        r.d(sSLContext, "getInstance(\"TLSv1.3\", provider)");
        return sSLContext;
    }

    @Override // p9.h
    public X509TrustManager o() throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm(), this.f15248d);
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

    private g() {
        this.f15248d = new OpenJSSE();
    }
}
