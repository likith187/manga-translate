package okhttp3;

import java.net.InetSocketAddress;
import java.net.Proxy;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f14720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Proxy f14721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final InetSocketAddress f14722c;

    public d0(a address, Proxy proxy, InetSocketAddress socketAddress) {
        kotlin.jvm.internal.r.e(address, "address");
        kotlin.jvm.internal.r.e(proxy, "proxy");
        kotlin.jvm.internal.r.e(socketAddress, "socketAddress");
        this.f14720a = address;
        this.f14721b = proxy;
        this.f14722c = socketAddress;
    }

    public final a a() {
        return this.f14720a;
    }

    public final Proxy b() {
        return this.f14721b;
    }

    public final boolean c() {
        return this.f14720a.k() != null && this.f14721b.type() == Proxy.Type.HTTP;
    }

    public final InetSocketAddress d() {
        return this.f14722c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof d0) {
            d0 d0Var = (d0) obj;
            if (kotlin.jvm.internal.r.a(d0Var.f14720a, this.f14720a) && kotlin.jvm.internal.r.a(d0Var.f14721b, this.f14721b) && kotlin.jvm.internal.r.a(d0Var.f14722c, this.f14722c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f14720a.hashCode()) * 31) + this.f14721b.hashCode()) * 31) + this.f14722c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f14722c + AbstractJsonLexerKt.END_OBJ;
    }
}
