package okhttp3;

import java.io.Closeable;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.t;

/* JADX INFO: loaded from: classes2.dex */
public final class b0 implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f14665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y f14666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f14667c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f14668f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final s f14669h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final t f14670i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final c0 f14671j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b0 f14672k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b0 f14673l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final b0 f14674m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final long f14675n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f14676o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final okhttp3.internal.connection.c f14677p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private d f14678q;

    public b0(z request, y protocol, String message, int i10, s sVar, t headers, c0 c0Var, b0 b0Var, b0 b0Var2, b0 b0Var3, long j10, long j11, okhttp3.internal.connection.c cVar) {
        kotlin.jvm.internal.r.e(request, "request");
        kotlin.jvm.internal.r.e(protocol, "protocol");
        kotlin.jvm.internal.r.e(message, "message");
        kotlin.jvm.internal.r.e(headers, "headers");
        this.f14665a = request;
        this.f14666b = protocol;
        this.f14667c = message;
        this.f14668f = i10;
        this.f14669h = sVar;
        this.f14670i = headers;
        this.f14671j = c0Var;
        this.f14672k = b0Var;
        this.f14673l = b0Var2;
        this.f14674m = b0Var3;
        this.f14675n = j10;
        this.f14676o = j11;
        this.f14677p = cVar;
    }

    public static /* synthetic */ String I(b0 b0Var, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return b0Var.G(str, str2);
    }

    public final okhttp3.internal.connection.c B() {
        return this.f14677p;
    }

    public final s D() {
        return this.f14669h;
    }

    public final z D0() {
        return this.f14665a;
    }

    public final long E0() {
        return this.f14675n;
    }

    public final String G(String name, String str) {
        kotlin.jvm.internal.r.e(name, "name");
        String strA = this.f14670i.a(name);
        return strA == null ? str : strA;
    }

    public final t N() {
        return this.f14670i;
    }

    public final String X() {
        return this.f14667c;
    }

    public final b0 a0() {
        return this.f14672k;
    }

    public final a b0() {
        return new a(this);
    }

    public final c0 c() {
        return this.f14671j;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        c0 c0Var = this.f14671j;
        if (c0Var == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        c0Var.close();
    }

    public final d i() {
        d dVar = this.f14678q;
        if (dVar != null) {
            return dVar;
        }
        d dVarB = d.f14696n.b(this.f14670i);
        this.f14678q = dVarB;
        return dVarB;
    }

    public final b0 k() {
        return this.f14673l;
    }

    public final b0 q0() {
        return this.f14674m;
    }

    public String toString() {
        return "Response{protocol=" + this.f14666b + ", code=" + this.f14668f + ", message=" + this.f14667c + ", url=" + this.f14665a.i() + AbstractJsonLexerKt.END_OBJ;
    }

    public final List v() {
        String str;
        t tVar = this.f14670i;
        int i10 = this.f14668f;
        if (i10 == 401) {
            str = "WWW-Authenticate";
        } else {
            if (i10 != 407) {
                return kotlin.collections.o.h();
            }
            str = "Proxy-Authenticate";
        }
        return m9.e.a(tVar, str);
    }

    public final y v0() {
        return this.f14666b;
    }

    public final int x() {
        return this.f14668f;
    }

    public final long x0() {
        return this.f14676o;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private z f14679a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private y f14680b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f14681c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f14682d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private s f14683e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private t.a f14684f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private c0 f14685g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private b0 f14686h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private b0 f14687i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private b0 f14688j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private long f14689k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private long f14690l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private okhttp3.internal.connection.c f14691m;

        public a() {
            this.f14681c = -1;
            this.f14684f = new t.a();
        }

        private final void e(b0 b0Var) {
            if (b0Var != null && b0Var.c() != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        private final void f(String str, b0 b0Var) {
            if (b0Var != null) {
                if (b0Var.c() != null) {
                    throw new IllegalArgumentException((str + ".body != null").toString());
                }
                if (b0Var.a0() != null) {
                    throw new IllegalArgumentException((str + ".networkResponse != null").toString());
                }
                if (b0Var.k() != null) {
                    throw new IllegalArgumentException((str + ".cacheResponse != null").toString());
                }
                if (b0Var.q0() == null) {
                    return;
                }
                throw new IllegalArgumentException((str + ".priorResponse != null").toString());
            }
        }

        public a a(String name, String value) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(value, "value");
            this.f14684f.a(name, value);
            return this;
        }

        public a b(c0 c0Var) {
            this.f14685g = c0Var;
            return this;
        }

        public b0 c() {
            int i10 = this.f14681c;
            if (i10 < 0) {
                throw new IllegalStateException(("code < 0: " + this.f14681c).toString());
            }
            z zVar = this.f14679a;
            if (zVar == null) {
                throw new IllegalStateException("request == null");
            }
            y yVar = this.f14680b;
            if (yVar == null) {
                throw new IllegalStateException("protocol == null");
            }
            String str = this.f14682d;
            if (str != null) {
                return new b0(zVar, yVar, str, i10, this.f14683e, this.f14684f.d(), this.f14685g, this.f14686h, this.f14687i, this.f14688j, this.f14689k, this.f14690l, this.f14691m);
            }
            throw new IllegalStateException("message == null");
        }

        public a d(b0 b0Var) {
            f("cacheResponse", b0Var);
            this.f14687i = b0Var;
            return this;
        }

        public a g(int i10) {
            this.f14681c = i10;
            return this;
        }

        public final int h() {
            return this.f14681c;
        }

        public a i(s sVar) {
            this.f14683e = sVar;
            return this;
        }

        public a j(String name, String value) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(value, "value");
            this.f14684f.g(name, value);
            return this;
        }

        public a k(t headers) {
            kotlin.jvm.internal.r.e(headers, "headers");
            this.f14684f = headers.d();
            return this;
        }

        public final void l(okhttp3.internal.connection.c deferredTrailers) {
            kotlin.jvm.internal.r.e(deferredTrailers, "deferredTrailers");
            this.f14691m = deferredTrailers;
        }

        public a m(String message) {
            kotlin.jvm.internal.r.e(message, "message");
            this.f14682d = message;
            return this;
        }

        public a n(b0 b0Var) {
            f("networkResponse", b0Var);
            this.f14686h = b0Var;
            return this;
        }

        public a o(b0 b0Var) {
            e(b0Var);
            this.f14688j = b0Var;
            return this;
        }

        public a p(y protocol) {
            kotlin.jvm.internal.r.e(protocol, "protocol");
            this.f14680b = protocol;
            return this;
        }

        public a q(long j10) {
            this.f14690l = j10;
            return this;
        }

        public a r(z request) {
            kotlin.jvm.internal.r.e(request, "request");
            this.f14679a = request;
            return this;
        }

        public a s(long j10) {
            this.f14689k = j10;
            return this;
        }

        public a(b0 response) {
            kotlin.jvm.internal.r.e(response, "response");
            this.f14681c = -1;
            this.f14679a = response.D0();
            this.f14680b = response.v0();
            this.f14681c = response.x();
            this.f14682d = response.X();
            this.f14683e = response.D();
            this.f14684f = response.N().d();
            this.f14685g = response.c();
            this.f14686h = response.a0();
            this.f14687i = response.k();
            this.f14688j = response.q0();
            this.f14689k = response.E0();
            this.f14690l = response.x0();
            this.f14691m = response.B();
        }
    }
}
