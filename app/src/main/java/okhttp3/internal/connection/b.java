package okhttp3.internal.connection;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.r;
import okhttp3.k;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f14801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f14802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f14803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f14804d;

    public b(List connectionSpecs) {
        r.e(connectionSpecs, "connectionSpecs");
        this.f14801a = connectionSpecs;
    }

    private final boolean c(SSLSocket sSLSocket) {
        int size = this.f14801a.size();
        for (int i10 = this.f14802b; i10 < size; i10++) {
            if (((k) this.f14801a.get(i10)).e(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public final k a(SSLSocket sslSocket) throws UnknownServiceException {
        k kVar;
        r.e(sslSocket, "sslSocket");
        int i10 = this.f14802b;
        int size = this.f14801a.size();
        while (true) {
            if (i10 >= size) {
                kVar = null;
                break;
            }
            kVar = (k) this.f14801a.get(i10);
            if (kVar.e(sslSocket)) {
                this.f14802b = i10 + 1;
                break;
            }
            i10++;
        }
        if (kVar != null) {
            this.f14803c = c(sslSocket);
            kVar.c(sslSocket, this.f14804d);
            return kVar;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unable to find acceptable protocols. isFallback=");
        sb.append(this.f14804d);
        sb.append(", modes=");
        sb.append(this.f14801a);
        sb.append(", supported protocols=");
        String[] enabledProtocols = sslSocket.getEnabledProtocols();
        r.b(enabledProtocols);
        String string = Arrays.toString(enabledProtocols);
        r.d(string, "toString(this)");
        sb.append(string);
        throw new UnknownServiceException(sb.toString());
    }

    public final boolean b(IOException e10) {
        r.e(e10, "e");
        this.f14804d = true;
        return (!this.f14803c || (e10 instanceof ProtocolException) || (e10 instanceof InterruptedIOException) || ((e10 instanceof SSLHandshakeException) && (e10.getCause() instanceof CertificateException)) || (e10 instanceof SSLPeerUnverifiedException) || !(e10 instanceof SSLException)) ? false : true;
    }
}
