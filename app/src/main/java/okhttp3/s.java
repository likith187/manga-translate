package okhttp3;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class s {

    /* JADX INFO: renamed from: e */
    public static final a f14951e = new a(null);

    /* JADX INFO: renamed from: a */
    private final e0 f14952a;

    /* JADX INFO: renamed from: b */
    private final h f14953b;

    /* JADX INFO: renamed from: c */
    private final List f14954c;

    /* JADX INFO: renamed from: d */
    private final n8.j f14955d;

    public static final class a {

        /* JADX INFO: renamed from: okhttp3.s$a$a */
        static final class C0197a extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ List<Certificate> $peerCertificatesCopy;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0197a(List<? extends Certificate> list) {
                super(0);
                this.$peerCertificatesCopy = list;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final List<Certificate> mo8invoke() {
                return this.$peerCertificatesCopy;
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final List b(Certificate[] certificateArr) {
            return certificateArr != null ? i9.d.v(Arrays.copyOf(certificateArr, certificateArr.length)) : kotlin.collections.o.h();
        }

        public final s a(SSLSession sSLSession) throws IOException {
            List listH;
            kotlin.jvm.internal.r.e(sSLSession, "<this>");
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                throw new IllegalStateException("cipherSuite == null");
            }
            if (kotlin.jvm.internal.r.a(cipherSuite, "TLS_NULL_WITH_NULL_NULL") ? true : kotlin.jvm.internal.r.a(cipherSuite, "SSL_NULL_WITH_NULL_NULL")) {
                throw new IOException("cipherSuite == " + cipherSuite);
            }
            h hVarB = h.f14732b.b(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null");
            }
            if (kotlin.jvm.internal.r.a("NONE", protocol)) {
                throw new IOException("tlsVersion == NONE");
            }
            e0 e0VarA = e0.Companion.a(protocol);
            try {
                listH = b(sSLSession.getPeerCertificates());
            } catch (SSLPeerUnverifiedException unused) {
                listH = kotlin.collections.o.h();
            }
            return new s(e0VarA, hVarB, b(sSLSession.getLocalCertificates()), new C0197a(listH));
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ w8.a $peerCertificatesFn;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(w8.a aVar) {
            super(0);
            this.$peerCertificatesFn = aVar;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final List<Certificate> mo8invoke() {
            try {
                return (List) this.$peerCertificatesFn.mo8invoke();
            } catch (SSLPeerUnverifiedException unused) {
                return kotlin.collections.o.h();
            }
        }
    }

    public s(e0 tlsVersion, h cipherSuite, List localCertificates, w8.a peerCertificatesFn) {
        kotlin.jvm.internal.r.e(tlsVersion, "tlsVersion");
        kotlin.jvm.internal.r.e(cipherSuite, "cipherSuite");
        kotlin.jvm.internal.r.e(localCertificates, "localCertificates");
        kotlin.jvm.internal.r.e(peerCertificatesFn, "peerCertificatesFn");
        this.f14952a = tlsVersion;
        this.f14953b = cipherSuite;
        this.f14954c = localCertificates;
        this.f14955d = n8.k.b(new b(peerCertificatesFn));
    }

    private final String b(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        kotlin.jvm.internal.r.d(type, "type");
        return type;
    }

    public final h a() {
        return this.f14953b;
    }

    public final List c() {
        return this.f14954c;
    }

    public final List d() {
        return (List) this.f14955d.getValue();
    }

    public final e0 e() {
        return this.f14952a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof s) {
            s sVar = (s) obj;
            if (sVar.f14952a == this.f14952a && kotlin.jvm.internal.r.a(sVar.f14953b, this.f14953b) && kotlin.jvm.internal.r.a(sVar.d(), d()) && kotlin.jvm.internal.r.a(sVar.f14954c, this.f14954c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((527 + this.f14952a.hashCode()) * 31) + this.f14953b.hashCode()) * 31) + d().hashCode()) * 31) + this.f14954c.hashCode();
    }

    public String toString() {
        List listD = d();
        ArrayList arrayList = new ArrayList(kotlin.collections.o.r(listD, 10));
        Iterator it = listD.iterator();
        while (it.hasNext()) {
            arrayList.add(b((Certificate) it.next()));
        }
        String string = arrayList.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("Handshake{tlsVersion=");
        sb.append(this.f14952a);
        sb.append(" cipherSuite=");
        sb.append(this.f14953b);
        sb.append(" peerCertificates=");
        sb.append(string);
        sb.append(" localCertificates=");
        List list = this.f14954c;
        ArrayList arrayList2 = new ArrayList(kotlin.collections.o.r(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(b((Certificate) it2.next()));
        }
        sb.append(arrayList2);
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }
}
