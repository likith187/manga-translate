package s9;

import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import t9.c0;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements HostnameVerifier {
    public static final d INSTANCE = new d();

    private d() {
    }

    private final String b(String str) {
        if (!d(str)) {
            return str;
        }
        Locale US = Locale.US;
        r.d(US, "US");
        String lowerCase = str.toLowerCase(US);
        r.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    private final List c(X509Certificate x509Certificate, int i10) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return o.h();
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && r.a(list.get(0), Integer.valueOf(i10)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return o.h();
        }
    }

    private final boolean d(String str) {
        return str.length() == ((int) c0.b(str, 0, 0, 3, null));
    }

    private final boolean f(String str, String str2) {
        if (str != null && str.length() != 0 && !kotlin.text.r.F(str, ".", false, 2, null) && !kotlin.text.r.u(str, "..", false, 2, null) && str2 != null && str2.length() != 0 && !kotlin.text.r.F(str2, ".", false, 2, null) && !kotlin.text.r.u(str2, "..", false, 2, null)) {
            if (!kotlin.text.r.u(str, ".", false, 2, null)) {
                str = str + '.';
            }
            String str3 = str;
            if (!kotlin.text.r.u(str2, ".", false, 2, null)) {
                str2 = str2 + '.';
            }
            String strB = b(str2);
            if (!kotlin.text.r.K(strB, "*", false, 2, null)) {
                return r.a(str3, strB);
            }
            if (!kotlin.text.r.F(strB, "*.", false, 2, null) || kotlin.text.r.V(strB, '*', 1, false, 4, null) != -1 || str3.length() < strB.length() || r.a("*.", strB)) {
                return false;
            }
            String strSubstring = strB.substring(1);
            r.d(strSubstring, "this as java.lang.String).substring(startIndex)");
            if (!kotlin.text.r.u(str3, strSubstring, false, 2, null)) {
                return false;
            }
            int length = str3.length() - strSubstring.length();
            return length <= 0 || kotlin.text.r.b0(str3, '.', length + (-1), false, 4, null) == -1;
        }
        return false;
    }

    private final boolean g(String str, X509Certificate x509Certificate) {
        String strB = b(str);
        List listC = c(x509Certificate, 2);
        if (listC != null && listC.isEmpty()) {
            return false;
        }
        Iterator it = listC.iterator();
        while (it.hasNext()) {
            if (INSTANCE.f(strB, (String) it.next())) {
                return true;
            }
        }
        return false;
    }

    private final boolean h(String str, X509Certificate x509Certificate) {
        String strE = i9.a.e(str);
        List listC = c(x509Certificate, 7);
        if (listC != null && listC.isEmpty()) {
            return false;
        }
        Iterator it = listC.iterator();
        while (it.hasNext()) {
            if (r.a(strE, i9.a.e((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public final List a(X509Certificate certificate) {
        r.e(certificate, "certificate");
        return o.g0(c(certificate, 7), c(certificate, 2));
    }

    public final boolean e(String host, X509Certificate certificate) {
        r.e(host, "host");
        r.e(certificate, "certificate");
        return i9.d.i(host) ? h(host, certificate) : g(host, certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String host, SSLSession session) {
        r.e(host, "host");
        r.e(session, "session");
        if (!d(host)) {
            return false;
        }
        try {
            Certificate certificate = session.getPeerCertificates()[0];
            r.c(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            return e(host, (X509Certificate) certificate);
        } catch (SSLException unused) {
            return false;
        }
    }
}
