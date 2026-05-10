package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f14900e = new b(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final h[] f14901f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final h[] f14902g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final k f14903h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final k f14904i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final k f14905j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final k f14906k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f14907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f14908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String[] f14909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String[] f14910d;

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    static {
        h hVar = h.f14773o1;
        h hVar2 = h.f14776p1;
        h hVar3 = h.f14779q1;
        h hVar4 = h.f14731a1;
        h hVar5 = h.f14743e1;
        h hVar6 = h.f14734b1;
        h hVar7 = h.f14746f1;
        h hVar8 = h.f14764l1;
        h hVar9 = h.f14761k1;
        h[] hVarArr = {hVar, hVar2, hVar3, hVar4, hVar5, hVar6, hVar7, hVar8, hVar9};
        f14901f = hVarArr;
        h[] hVarArr2 = {hVar, hVar2, hVar3, hVar4, hVar5, hVar6, hVar7, hVar8, hVar9, h.L0, h.M0, h.f14757j0, h.f14760k0, h.H, h.L, h.f14762l};
        f14902g = hVarArr2;
        a aVarC = new a(true).c((h[]) Arrays.copyOf(hVarArr, hVarArr.length));
        e0 e0Var = e0.TLS_1_3;
        e0 e0Var2 = e0.TLS_1_2;
        f14903h = aVarC.f(e0Var, e0Var2).d(true).a();
        f14904i = new a(true).c((h[]) Arrays.copyOf(hVarArr2, hVarArr2.length)).f(e0Var, e0Var2).d(true).a();
        f14905j = new a(true).c((h[]) Arrays.copyOf(hVarArr2, hVarArr2.length)).f(e0Var, e0Var2, e0.TLS_1_1, e0.TLS_1_0).d(true).a();
        f14906k = new a(false).a();
    }

    public k(boolean z10, boolean z11, String[] strArr, String[] strArr2) {
        this.f14907a = z10;
        this.f14908b = z11;
        this.f14909c = strArr;
        this.f14910d = strArr2;
    }

    private final k g(SSLSocket sSLSocket, boolean z10) {
        String[] cipherSuitesIntersection;
        String[] tlsVersionsIntersection;
        if (this.f14909c != null) {
            String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
            kotlin.jvm.internal.r.d(enabledCipherSuites, "sslSocket.enabledCipherSuites");
            cipherSuitesIntersection = i9.d.D(enabledCipherSuites, this.f14909c, h.f14732b.c());
        } else {
            cipherSuitesIntersection = sSLSocket.getEnabledCipherSuites();
        }
        if (this.f14910d != null) {
            String[] enabledProtocols = sSLSocket.getEnabledProtocols();
            kotlin.jvm.internal.r.d(enabledProtocols, "sslSocket.enabledProtocols");
            tlsVersionsIntersection = i9.d.D(enabledProtocols, this.f14910d, q8.a.b());
        } else {
            tlsVersionsIntersection = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        kotlin.jvm.internal.r.d(supportedCipherSuites, "supportedCipherSuites");
        int iW = i9.d.w(supportedCipherSuites, "TLS_FALLBACK_SCSV", h.f14732b.c());
        if (z10 && iW != -1) {
            kotlin.jvm.internal.r.d(cipherSuitesIntersection, "cipherSuitesIntersection");
            String str = supportedCipherSuites[iW];
            kotlin.jvm.internal.r.d(str, "supportedCipherSuites[indexOfFallbackScsv]");
            cipherSuitesIntersection = i9.d.n(cipherSuitesIntersection, str);
        }
        a aVar = new a(this);
        kotlin.jvm.internal.r.d(cipherSuitesIntersection, "cipherSuitesIntersection");
        a aVarB = aVar.b((String[]) Arrays.copyOf(cipherSuitesIntersection, cipherSuitesIntersection.length));
        kotlin.jvm.internal.r.d(tlsVersionsIntersection, "tlsVersionsIntersection");
        return aVarB.e((String[]) Arrays.copyOf(tlsVersionsIntersection, tlsVersionsIntersection.length)).a();
    }

    public final void c(SSLSocket sslSocket, boolean z10) {
        kotlin.jvm.internal.r.e(sslSocket, "sslSocket");
        k kVarG = g(sslSocket, z10);
        if (kVarG.i() != null) {
            sslSocket.setEnabledProtocols(kVarG.f14910d);
        }
        if (kVarG.d() != null) {
            sslSocket.setEnabledCipherSuites(kVarG.f14909c);
        }
    }

    public final List d() {
        String[] strArr = this.f14909c;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(h.f14732b.b(str));
        }
        return kotlin.collections.o.r0(arrayList);
    }

    public final boolean e(SSLSocket socket) {
        kotlin.jvm.internal.r.e(socket, "socket");
        if (!this.f14907a) {
            return false;
        }
        String[] strArr = this.f14910d;
        if (strArr != null && !i9.d.t(strArr, socket.getEnabledProtocols(), q8.a.b())) {
            return false;
        }
        String[] strArr2 = this.f14909c;
        return strArr2 == null || i9.d.t(strArr2, socket.getEnabledCipherSuites(), h.f14732b.c());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        boolean z10 = this.f14907a;
        k kVar = (k) obj;
        if (z10 != kVar.f14907a) {
            return false;
        }
        return !z10 || (Arrays.equals(this.f14909c, kVar.f14909c) && Arrays.equals(this.f14910d, kVar.f14910d) && this.f14908b == kVar.f14908b);
    }

    public final boolean f() {
        return this.f14907a;
    }

    public final boolean h() {
        return this.f14908b;
    }

    public int hashCode() {
        if (!this.f14907a) {
            return 17;
        }
        String[] strArr = this.f14909c;
        int iHashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        String[] strArr2 = this.f14910d;
        return ((iHashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.f14908b ? 1 : 0);
    }

    public final List i() {
        String[] strArr = this.f14910d;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(e0.Companion.a(str));
        }
        return kotlin.collections.o.r0(arrayList);
    }

    public String toString() {
        if (!this.f14907a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + Objects.toString(d(), "[all enabled]") + ", tlsVersions=" + Objects.toString(i(), "[all enabled]") + ", supportsTlsExtensions=" + this.f14908b + ')';
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f14911a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String[] f14912b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String[] f14913c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f14914d;

        public a(boolean z10) {
            this.f14911a = z10;
        }

        public final k a() {
            return new k(this.f14911a, this.f14914d, this.f14912b, this.f14913c);
        }

        public final a b(String... cipherSuites) {
            kotlin.jvm.internal.r.e(cipherSuites, "cipherSuites");
            if (!this.f14911a) {
                throw new IllegalArgumentException("no cipher suites for cleartext connections");
            }
            if (cipherSuites.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f14912b = (String[]) cipherSuites.clone();
            return this;
        }

        public final a c(h... cipherSuites) {
            kotlin.jvm.internal.r.e(cipherSuites, "cipherSuites");
            if (!this.f14911a) {
                throw new IllegalArgumentException("no cipher suites for cleartext connections");
            }
            ArrayList arrayList = new ArrayList(cipherSuites.length);
            for (h hVar : cipherSuites) {
                arrayList.add(hVar.c());
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            return b((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final a d(boolean z10) {
            if (!this.f14911a) {
                throw new IllegalArgumentException("no TLS extensions for cleartext connections");
            }
            this.f14914d = z10;
            return this;
        }

        public final a e(String... tlsVersions) {
            kotlin.jvm.internal.r.e(tlsVersions, "tlsVersions");
            if (!this.f14911a) {
                throw new IllegalArgumentException("no TLS versions for cleartext connections");
            }
            if (tlsVersions.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f14913c = (String[]) tlsVersions.clone();
            return this;
        }

        public final a f(e0... tlsVersions) {
            kotlin.jvm.internal.r.e(tlsVersions, "tlsVersions");
            if (!this.f14911a) {
                throw new IllegalArgumentException("no TLS versions for cleartext connections");
            }
            ArrayList arrayList = new ArrayList(tlsVersions.length);
            for (e0 e0Var : tlsVersions) {
                arrayList.add(e0Var.javaName());
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            return e((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public a(k connectionSpec) {
            kotlin.jvm.internal.r.e(connectionSpec, "connectionSpec");
            this.f14911a = connectionSpec.f();
            this.f14912b = connectionSpec.f14909c;
            this.f14913c = connectionSpec.f14910d;
            this.f14914d = connectionSpec.h();
        }
    }
}
