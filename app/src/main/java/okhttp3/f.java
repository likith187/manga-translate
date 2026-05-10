package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import t9.g;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f14723c = new b(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final f f14724d = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f14725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s9.c f14726b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f14727a = new ArrayList();

        public final f a() {
            return new f(kotlin.collections.o.v0(this.f14727a), null, 2, 0 == true ? 1 : 0);
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(Certificate certificate) {
            kotlin.jvm.internal.r.e(certificate, "certificate");
            if (!(certificate instanceof X509Certificate)) {
                throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
            }
            return "sha256/" + b((X509Certificate) certificate).base64();
        }

        public final t9.g b(X509Certificate x509Certificate) {
            kotlin.jvm.internal.r.e(x509Certificate, "<this>");
            g.a aVar = t9.g.Companion;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            kotlin.jvm.internal.r.d(encoded, "publicKey.encoded");
            return g.a.h(aVar, encoded, 0, 0, 3, null).sha256();
        }

        private b() {
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ String $hostname;
        final /* synthetic */ List<Certificate> $peerCertificates;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(List<? extends Certificate> list, String str) {
            super(0);
            this.$peerCertificates = list;
            this.$hostname = str;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final List<X509Certificate> mo8invoke() {
            List<Certificate> listA;
            s9.c cVarD = f.this.d();
            if (cVarD == null || (listA = cVarD.a(this.$peerCertificates, this.$hostname)) == null) {
                listA = this.$peerCertificates;
            }
            ArrayList arrayList = new ArrayList(kotlin.collections.o.r(listA, 10));
            for (Certificate certificate : listA) {
                kotlin.jvm.internal.r.c(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                arrayList.add((X509Certificate) certificate);
            }
            return arrayList;
        }
    }

    public f(Set pins, s9.c cVar) {
        kotlin.jvm.internal.r.e(pins, "pins");
        this.f14725a = pins;
        this.f14726b = cVar;
    }

    public final void a(String hostname, List peerCertificates) {
        kotlin.jvm.internal.r.e(hostname, "hostname");
        kotlin.jvm.internal.r.e(peerCertificates, "peerCertificates");
        b(hostname, new c(peerCertificates, hostname));
    }

    public final void b(String hostname, w8.a cleanedPeerCertificatesFn) throws SSLPeerUnverifiedException {
        kotlin.jvm.internal.r.e(hostname, "hostname");
        kotlin.jvm.internal.r.e(cleanedPeerCertificatesFn, "cleanedPeerCertificatesFn");
        List listC = c(hostname);
        if (listC.isEmpty()) {
            return;
        }
        List<X509Certificate> list = (List) cleanedPeerCertificatesFn.mo8invoke();
        for (X509Certificate x509Certificate : list) {
            Iterator it = listC.iterator();
            if (it.hasNext()) {
                androidx.appcompat.app.t.a(it.next());
                throw null;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : list) {
            sb.append("\n    ");
            sb.append(f14723c.a(x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(hostname);
        sb.append(":");
        Iterator it2 = listC.iterator();
        while (it2.hasNext()) {
            androidx.appcompat.app.t.a(it2.next());
            sb.append("\n    ");
            sb.append((Object) null);
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(string);
    }

    public final List c(String hostname) {
        kotlin.jvm.internal.r.e(hostname, "hostname");
        Set set = this.f14725a;
        List listH = kotlin.collections.o.h();
        Iterator it = set.iterator();
        if (!it.hasNext()) {
            return listH;
        }
        androidx.appcompat.app.t.a(it.next());
        throw null;
    }

    public final s9.c d() {
        return this.f14726b;
    }

    public final f e(s9.c certificateChainCleaner) {
        kotlin.jvm.internal.r.e(certificateChainCleaner, "certificateChainCleaner");
        return kotlin.jvm.internal.r.a(this.f14726b, certificateChainCleaner) ? this : new f(this.f14725a, certificateChainCleaner);
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (kotlin.jvm.internal.r.a(fVar.f14725a, this.f14725a) && kotlin.jvm.internal.r.a(fVar.f14726b, this.f14726b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (1517 + this.f14725a.hashCode()) * 41;
        s9.c cVar = this.f14726b;
        return iHashCode + (cVar != null ? cVar.hashCode() : 0);
    }

    public /* synthetic */ f(Set set, s9.c cVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, (i10 & 2) != 0 ? null : cVar);
    }
}
