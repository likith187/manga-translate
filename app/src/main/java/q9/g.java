package q9;

import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import org.bouncycastle.jsse.BCSSLParameters;
import org.bouncycastle.jsse.BCSSLSocket;
import q9.j;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f15370a = new b(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final j.a f15371b = new a();

    public static final class a implements j.a {
        a() {
        }

        @Override // q9.j.a
        public boolean a(SSLSocket sslSocket) {
            r.e(sslSocket, "sslSocket");
            p9.c.f15229e.b();
            return false;
        }

        @Override // q9.j.a
        public k b(SSLSocket sslSocket) {
            r.e(sslSocket, "sslSocket");
            return new g();
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j.a a() {
            return g.f15371b;
        }

        private b() {
        }
    }

    @Override // q9.k
    public boolean a(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        return false;
    }

    @Override // q9.k
    public String b(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        String applicationProtocol = ((BCSSLSocket) sslSocket).getApplicationProtocol();
        if (applicationProtocol == null ? true : r.a(applicationProtocol, "")) {
            return null;
        }
        return applicationProtocol;
    }

    @Override // q9.k
    public void c(SSLSocket sslSocket, String str, List protocols) {
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
        if (a(sslSocket)) {
            BCSSLSocket bCSSLSocket = (BCSSLSocket) sslSocket;
            BCSSLParameters parameters = bCSSLSocket.getParameters();
            parameters.setApplicationProtocols((String[]) p9.h.f15249a.b(protocols).toArray(new String[0]));
            bCSSLSocket.setParameters(parameters);
        }
    }

    @Override // q9.k
    public boolean isSupported() {
        return p9.c.f15229e.b();
    }
}
