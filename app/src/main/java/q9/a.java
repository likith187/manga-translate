package q9;

import android.net.ssl.SSLSockets;
import java.io.IOException;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0211a f15356a = new C0211a(null);

    /* JADX INFO: renamed from: q9.a$a, reason: collision with other inner class name */
    public static final class C0211a {
        public /* synthetic */ C0211a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final k a() {
            if (b()) {
                return new a();
            }
            return null;
        }

        public final boolean b() {
            return p9.h.f15249a.h();
        }

        private C0211a() {
        }
    }

    @Override // q9.k
    public boolean a(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        return SSLSockets.isSupportedSocket(sslSocket);
    }

    @Override // q9.k
    public String b(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        String applicationProtocol = sslSocket.getApplicationProtocol();
        if (applicationProtocol == null ? true : r.a(applicationProtocol, "")) {
            return null;
        }
        return applicationProtocol;
    }

    @Override // q9.k
    public void c(SSLSocket sslSocket, String str, List protocols) throws IOException {
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
        try {
            SSLSockets.setUseSessionTickets(sslSocket, true);
            SSLParameters sSLParameters = sslSocket.getSSLParameters();
            sSLParameters.setApplicationProtocols((String[]) p9.h.f15249a.b(protocols).toArray(new String[0]));
            sslSocket.setSSLParameters(sSLParameters);
        } catch (IllegalArgumentException e10) {
            throw new IOException("Android internal error", e10);
        }
    }

    @Override // q9.k
    public boolean isSupported() {
        return f15356a.b();
    }
}
