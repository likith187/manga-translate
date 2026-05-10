package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.u;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a */
    private final p f14645a;

    /* JADX INFO: renamed from: b */
    private final SocketFactory f14646b;

    /* JADX INFO: renamed from: c */
    private final SSLSocketFactory f14647c;

    /* JADX INFO: renamed from: d */
    private final HostnameVerifier f14648d;

    /* JADX INFO: renamed from: e */
    private final f f14649e;

    /* JADX INFO: renamed from: f */
    private final b f14650f;

    /* JADX INFO: renamed from: g */
    private final Proxy f14651g;

    /* JADX INFO: renamed from: h */
    private final ProxySelector f14652h;

    /* JADX INFO: renamed from: i */
    private final u f14653i;

    /* JADX INFO: renamed from: j */
    private final List f14654j;

    /* JADX INFO: renamed from: k */
    private final List f14655k;

    public a(String uriHost, int i10, p dns, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, f fVar, b proxyAuthenticator, Proxy proxy, List protocols, List connectionSpecs, ProxySelector proxySelector) {
        kotlin.jvm.internal.r.e(uriHost, "uriHost");
        kotlin.jvm.internal.r.e(dns, "dns");
        kotlin.jvm.internal.r.e(socketFactory, "socketFactory");
        kotlin.jvm.internal.r.e(proxyAuthenticator, "proxyAuthenticator");
        kotlin.jvm.internal.r.e(protocols, "protocols");
        kotlin.jvm.internal.r.e(connectionSpecs, "connectionSpecs");
        kotlin.jvm.internal.r.e(proxySelector, "proxySelector");
        this.f14645a = dns;
        this.f14646b = socketFactory;
        this.f14647c = sSLSocketFactory;
        this.f14648d = hostnameVerifier;
        this.f14649e = fVar;
        this.f14650f = proxyAuthenticator;
        this.f14651g = proxy;
        this.f14652h = proxySelector;
        this.f14653i = new u.a().p(sSLSocketFactory != null ? "https" : "http").f(uriHost).l(i10).b();
        this.f14654j = i9.d.Q(protocols);
        this.f14655k = i9.d.Q(connectionSpecs);
    }

    public final f a() {
        return this.f14649e;
    }

    public final List b() {
        return this.f14655k;
    }

    public final p c() {
        return this.f14645a;
    }

    public final boolean d(a that) {
        kotlin.jvm.internal.r.e(that, "that");
        return kotlin.jvm.internal.r.a(this.f14645a, that.f14645a) && kotlin.jvm.internal.r.a(this.f14650f, that.f14650f) && kotlin.jvm.internal.r.a(this.f14654j, that.f14654j) && kotlin.jvm.internal.r.a(this.f14655k, that.f14655k) && kotlin.jvm.internal.r.a(this.f14652h, that.f14652h) && kotlin.jvm.internal.r.a(this.f14651g, that.f14651g) && kotlin.jvm.internal.r.a(this.f14647c, that.f14647c) && kotlin.jvm.internal.r.a(this.f14648d, that.f14648d) && kotlin.jvm.internal.r.a(this.f14649e, that.f14649e) && this.f14653i.m() == that.f14653i.m();
    }

    public final HostnameVerifier e() {
        return this.f14648d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (kotlin.jvm.internal.r.a(this.f14653i, aVar.f14653i) && d(aVar)) {
                return true;
            }
        }
        return false;
    }

    public final List f() {
        return this.f14654j;
    }

    public final Proxy g() {
        return this.f14651g;
    }

    public final b h() {
        return this.f14650f;
    }

    public int hashCode() {
        return ((((((((((((((((((527 + this.f14653i.hashCode()) * 31) + this.f14645a.hashCode()) * 31) + this.f14650f.hashCode()) * 31) + this.f14654j.hashCode()) * 31) + this.f14655k.hashCode()) * 31) + this.f14652h.hashCode()) * 31) + Objects.hashCode(this.f14651g)) * 31) + Objects.hashCode(this.f14647c)) * 31) + Objects.hashCode(this.f14648d)) * 31) + Objects.hashCode(this.f14649e);
    }

    public final ProxySelector i() {
        return this.f14652h;
    }

    public final SocketFactory j() {
        return this.f14646b;
    }

    public final SSLSocketFactory k() {
        return this.f14647c;
    }

    public final u l() {
        return this.f14653i;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Address{");
        sb2.append(this.f14653i.h());
        sb2.append(':');
        sb2.append(this.f14653i.m());
        sb2.append(", ");
        if (this.f14651g != null) {
            sb = new StringBuilder();
            sb.append("proxy=");
            obj = this.f14651g;
        } else {
            sb = new StringBuilder();
            sb.append("proxySelector=");
            obj = this.f14652h;
        }
        sb.append(obj);
        sb2.append(sb.toString());
        sb2.append(AbstractJsonLexerKt.END_OBJ);
        return sb2.toString();
    }
}
