package s9;

import java.security.GeneralSecurityException;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0217a f15580c = new C0217a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f15581b;

    /* JADX INFO: renamed from: s9.a$a, reason: collision with other inner class name */
    public static final class C0217a {
        public /* synthetic */ C0217a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0217a() {
        }
    }

    public a(e trustRootIndex) {
        r.e(trustRootIndex, "trustRootIndex");
        this.f15581b = trustRootIndex;
    }

    private final boolean b(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!r.a(x509Certificate.getIssuerDN(), x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override // s9.c
    public List a(List chain, String hostname) throws SSLPeerUnverifiedException {
        r.e(chain, "chain");
        r.e(hostname, "hostname");
        ArrayDeque arrayDeque = new ArrayDeque(chain);
        ArrayList arrayList = new ArrayList();
        Object objRemoveFirst = arrayDeque.removeFirst();
        r.d(objRemoveFirst, "queue.removeFirst()");
        arrayList.add(objRemoveFirst);
        boolean z10 = false;
        for (int i10 = 0; i10 < 9; i10++) {
            Object obj = arrayList.get(arrayList.size() - 1);
            r.c(obj, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            X509Certificate x509Certificate = (X509Certificate) obj;
            X509Certificate x509CertificateA = this.f15581b.a(x509Certificate);
            if (x509CertificateA == null) {
                Iterator it = arrayDeque.iterator();
                r.d(it, "queue.iterator()");
                while (it.hasNext()) {
                    Object next = it.next();
                    r.c(next, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    X509Certificate x509Certificate2 = (X509Certificate) next;
                    if (b(x509Certificate, x509Certificate2)) {
                        it.remove();
                        arrayList.add(x509Certificate2);
                    }
                }
                if (z10) {
                    return arrayList;
                }
                throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
            }
            if (arrayList.size() > 1 || !r.a(x509Certificate, x509CertificateA)) {
                arrayList.add(x509CertificateA);
            }
            if (b(x509CertificateA, x509CertificateA)) {
                return arrayList;
            }
            z10 = true;
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof a) && r.a(((a) obj).f15581b, this.f15581b);
    }

    public int hashCode() {
        return this.f15581b.hashCode();
    }
}
