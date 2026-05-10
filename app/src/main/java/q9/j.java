package q9;

import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f15378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f15379b;

    public interface a {
        boolean a(SSLSocket sSLSocket);

        k b(SSLSocket sSLSocket);
    }

    public j(a socketAdapterFactory) {
        r.e(socketAdapterFactory, "socketAdapterFactory");
        this.f15378a = socketAdapterFactory;
    }

    private final synchronized k d(SSLSocket sSLSocket) {
        try {
            if (this.f15379b == null && this.f15378a.a(sSLSocket)) {
                this.f15379b = this.f15378a.b(sSLSocket);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f15379b;
    }

    @Override // q9.k
    public boolean a(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        return this.f15378a.a(sslSocket);
    }

    @Override // q9.k
    public String b(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        k kVarD = d(sslSocket);
        if (kVarD != null) {
            return kVarD.b(sslSocket);
        }
        return null;
    }

    @Override // q9.k
    public void c(SSLSocket sslSocket, String str, List protocols) {
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
        k kVarD = d(sslSocket);
        if (kVarD != null) {
            kVarD.c(sslSocket, str, protocols);
        }
    }

    @Override // q9.k
    public boolean isSupported() {
        return true;
    }
}
