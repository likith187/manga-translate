package p9;

import android.security.NetworkSecurityPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import q9.i;
import q9.j;
import q9.k;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C0203a f15220e = new C0203a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f15221f = h.f15249a.h();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f15222d;

    /* JADX INFO: renamed from: p9.a$a, reason: collision with other inner class name */
    public static final class C0203a {
        public /* synthetic */ C0203a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            if (b()) {
                return new a();
            }
            return null;
        }

        public final boolean b() {
            return a.f15221f;
        }

        private C0203a() {
        }
    }

    public a() {
        List listL = o.l(q9.a.f15356a.a(), new j(q9.f.f15362f.d()), new j(i.f15376a.a()), new j(q9.g.f15370a.a()));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listL) {
            if (((k) obj).isSupported()) {
                arrayList.add(obj);
            }
        }
        this.f15222d = arrayList;
    }

    @Override // p9.h
    public s9.c c(X509TrustManager trustManager) {
        r.e(trustManager, "trustManager");
        q9.b bVarA = q9.b.f15357d.a(trustManager);
        return bVarA != null ? bVarA : super.c(trustManager);
    }

    @Override // p9.h
    public void e(SSLSocket sslSocket, String str, List protocols) {
        Object next;
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
        Iterator it = this.f15222d.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((k) next).a(sslSocket)) {
                    break;
                }
            }
        }
        k kVar = (k) next;
        if (kVar != null) {
            kVar.c(sslSocket, str, protocols);
        }
    }

    @Override // p9.h
    public String g(SSLSocket sslSocket) {
        Object next;
        r.e(sslSocket, "sslSocket");
        Iterator it = this.f15222d.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((k) next).a(sslSocket)) {
                break;
            }
        }
        k kVar = (k) next;
        if (kVar != null) {
            return kVar.b(sslSocket);
        }
        return null;
    }

    @Override // p9.h
    public boolean i(String hostname) {
        r.e(hostname, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(hostname);
    }
}
