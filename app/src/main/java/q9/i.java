package q9;

import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import org.conscrypt.Conscrypt;
import q9.j;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f15376a = new b(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final j.a f15377b = new a();

    public static final class a implements j.a {
        a() {
        }

        @Override // q9.j.a
        public boolean a(SSLSocket sslSocket) {
            r.e(sslSocket, "sslSocket");
            return p9.d.f15232e.c() && Conscrypt.isConscrypt(sslSocket);
        }

        @Override // q9.j.a
        public k b(SSLSocket sslSocket) {
            r.e(sslSocket, "sslSocket");
            return new i();
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j.a a() {
            return i.f15377b;
        }

        private b() {
        }
    }

    @Override // q9.k
    public boolean a(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        return Conscrypt.isConscrypt(sslSocket);
    }

    @Override // q9.k
    public String b(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        if (a(sslSocket)) {
            return Conscrypt.getApplicationProtocol(sslSocket);
        }
        return null;
    }

    @Override // q9.k
    public void c(SSLSocket sslSocket, String str, List protocols) {
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
        if (a(sslSocket)) {
            Conscrypt.setUseSessionTickets(sslSocket, true);
            Conscrypt.setApplicationProtocols(sslSocket, (String[]) p9.h.f15249a.b(protocols).toArray(new String[0]));
        }
    }

    @Override // q9.k
    public boolean isSupported() {
        return p9.d.f15232e.c();
    }
}
