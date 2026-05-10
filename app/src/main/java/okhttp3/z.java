package okhttp3;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.j0;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.t;

/* JADX INFO: loaded from: classes2.dex */
public final class z {

    /* JADX INFO: renamed from: a */
    private final u f15036a;

    /* JADX INFO: renamed from: b */
    private final String f15037b;

    /* JADX INFO: renamed from: c */
    private final t f15038c;

    /* JADX INFO: renamed from: d */
    private final a0 f15039d;

    /* JADX INFO: renamed from: e */
    private final Map f15040e;

    /* JADX INFO: renamed from: f */
    private d f15041f;

    public z(u url, String method, t headers, a0 a0Var, Map tags) {
        kotlin.jvm.internal.r.e(url, "url");
        kotlin.jvm.internal.r.e(method, "method");
        kotlin.jvm.internal.r.e(headers, "headers");
        kotlin.jvm.internal.r.e(tags, "tags");
        this.f15036a = url;
        this.f15037b = method;
        this.f15038c = headers;
        this.f15039d = a0Var;
        this.f15040e = tags;
    }

    public final a0 a() {
        return this.f15039d;
    }

    public final d b() {
        d dVar = this.f15041f;
        if (dVar != null) {
            return dVar;
        }
        d dVarB = d.f14696n.b(this.f15038c);
        this.f15041f = dVarB;
        return dVarB;
    }

    public final Map c() {
        return this.f15040e;
    }

    public final String d(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        return this.f15038c.a(name);
    }

    public final t e() {
        return this.f15038c;
    }

    public final boolean f() {
        return this.f15036a.i();
    }

    public final String g() {
        return this.f15037b;
    }

    public final a h() {
        return new a(this);
    }

    public final u i() {
        return this.f15036a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f15037b);
        sb.append(", url=");
        sb.append(this.f15036a);
        if (this.f15038c.size() != 0) {
            sb.append(", headers=[");
            int i10 = 0;
            for (Object obj : this.f15038c) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    kotlin.collections.o.q();
                }
                n8.q qVar = (n8.q) obj;
                String str = (String) qVar.component1();
                String str2 = (String) qVar.component2();
                if (i10 > 0) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append(':');
                sb.append(str2);
                i10 = i11;
            }
            sb.append(AbstractJsonLexerKt.END_LIST);
        }
        if (!this.f15040e.isEmpty()) {
            sb.append(", tags=");
            sb.append(this.f15040e);
        }
        sb.append(AbstractJsonLexerKt.END_OBJ);
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static class a {

        /* JADX INFO: renamed from: a */
        private u f15042a;

        /* JADX INFO: renamed from: b */
        private String f15043b;

        /* JADX INFO: renamed from: c */
        private t.a f15044c;

        /* JADX INFO: renamed from: d */
        private a0 f15045d;

        /* JADX INFO: renamed from: e */
        private Map f15046e;

        public a() {
            this.f15046e = new LinkedHashMap();
            this.f15043b = "GET";
            this.f15044c = new t.a();
        }

        public a a(String name, String value) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(value, "value");
            this.f15044c.a(name, value);
            return this;
        }

        public z b() {
            u uVar = this.f15042a;
            if (uVar != null) {
                return new z(uVar, this.f15043b, this.f15044c.d(), this.f15045d, i9.d.R(this.f15046e));
            }
            throw new IllegalStateException("url == null");
        }

        public a c(String name, String value) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(value, "value");
            this.f15044c.g(name, value);
            return this;
        }

        public a d(t headers) {
            kotlin.jvm.internal.r.e(headers, "headers");
            this.f15044c = headers.d();
            return this;
        }

        public a e(String method, a0 a0Var) {
            kotlin.jvm.internal.r.e(method, "method");
            if (method.length() <= 0) {
                throw new IllegalArgumentException("method.isEmpty() == true");
            }
            if (a0Var == null) {
                if (m9.f.d(method)) {
                    throw new IllegalArgumentException(("method " + method + " must have a request body.").toString());
                }
            } else if (!m9.f.a(method)) {
                throw new IllegalArgumentException(("method " + method + " must not have a request body.").toString());
            }
            this.f15043b = method;
            this.f15045d = a0Var;
            return this;
        }

        public a f(String name) {
            kotlin.jvm.internal.r.e(name, "name");
            this.f15044c.f(name);
            return this;
        }

        public a g(String url) {
            kotlin.jvm.internal.r.e(url, "url");
            if (kotlin.text.r.D(url, "ws:", true)) {
                StringBuilder sb = new StringBuilder();
                sb.append("http:");
                String strSubstring = url.substring(3);
                kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String).substring(startIndex)");
                sb.append(strSubstring);
                url = sb.toString();
            } else if (kotlin.text.r.D(url, "wss:", true)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("https:");
                String strSubstring2 = url.substring(4);
                kotlin.jvm.internal.r.d(strSubstring2, "this as java.lang.String).substring(startIndex)");
                sb2.append(strSubstring2);
                url = sb2.toString();
            }
            return h(u.f14959k.d(url));
        }

        public a h(u url) {
            kotlin.jvm.internal.r.e(url, "url");
            this.f15042a = url;
            return this;
        }

        public a(z request) {
            Map mapS;
            kotlin.jvm.internal.r.e(request, "request");
            this.f15046e = new LinkedHashMap();
            this.f15042a = request.i();
            this.f15043b = request.g();
            this.f15045d = request.a();
            if (request.c().isEmpty()) {
                mapS = new LinkedHashMap();
            } else {
                mapS = j0.s(request.c());
            }
            this.f15046e = mapS;
            this.f15044c = request.e().d();
        }
    }
}
