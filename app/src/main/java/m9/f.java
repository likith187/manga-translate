package m9;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class f {
    public static final f INSTANCE = new f();

    private f() {
    }

    public static final boolean a(String method) {
        r.e(method, "method");
        return (r.a(method, "GET") || r.a(method, "HEAD")) ? false : true;
    }

    public static final boolean d(String method) {
        r.e(method, "method");
        return r.a(method, "POST") || r.a(method, "PUT") || r.a(method, "PATCH") || r.a(method, "PROPPATCH") || r.a(method, "REPORT");
    }

    public final boolean b(String method) {
        r.e(method, "method");
        return !r.a(method, "PROPFIND");
    }

    public final boolean c(String method) {
        r.e(method, "method");
        return r.a(method, "PROPFIND");
    }
}
