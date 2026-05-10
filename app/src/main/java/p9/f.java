package p9;

import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.r;

/* JADX INFO: loaded from: classes2.dex */
public class f extends h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f15244d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f15245e;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a() {
            if (b()) {
                return new f();
            }
            return null;
        }

        public final boolean b() {
            return f.f15245e;
        }

        private a() {
        }
    }

    static {
        String property = System.getProperty("java.specification.version");
        Integer numM = property != null ? r.m(property) : null;
        boolean z10 = false;
        if (numM == null) {
            try {
                SSLSocket.class.getMethod("getApplicationProtocol", null);
                z10 = true;
            } catch (NoSuchMethodException unused) {
            }
        } else if (numM.intValue() >= 9) {
            z10 = true;
        }
        f15245e = z10;
    }

    @Override // p9.h
    public void e(SSLSocket sslSocket, String str, List protocols) {
        kotlin.jvm.internal.r.e(sslSocket, "sslSocket");
        kotlin.jvm.internal.r.e(protocols, "protocols");
        SSLParameters sSLParameters = sslSocket.getSSLParameters();
        sSLParameters.setApplicationProtocols((String[]) h.f15249a.b(protocols).toArray(new String[0]));
        sslSocket.setSSLParameters(sSLParameters);
    }

    @Override // p9.h
    public String g(SSLSocket sslSocket) {
        kotlin.jvm.internal.r.e(sslSocket, "sslSocket");
        try {
            String applicationProtocol = sslSocket.getApplicationProtocol();
            if (applicationProtocol == null ? true : kotlin.jvm.internal.r.a(applicationProtocol, "")) {
                return null;
            }
            return applicationProtocol;
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }
}
