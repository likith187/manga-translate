package m9;

import java.util.List;
import kotlin.jvm.internal.r;
import okhttp3.b0;
import okhttp3.v;
import okhttp3.z;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements v.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final okhttp3.internal.connection.e f13897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f13898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f13899c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final okhttp3.internal.connection.c f13900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z f13901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f13902f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f13903g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f13904h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f13905i;

    public g(okhttp3.internal.connection.e call, List interceptors, int i10, okhttp3.internal.connection.c cVar, z request, int i11, int i12, int i13) {
        r.e(call, "call");
        r.e(interceptors, "interceptors");
        r.e(request, "request");
        this.f13897a = call;
        this.f13898b = interceptors;
        this.f13899c = i10;
        this.f13900d = cVar;
        this.f13901e = request;
        this.f13902f = i11;
        this.f13903g = i12;
        this.f13904h = i13;
    }

    public static /* synthetic */ g d(g gVar, int i10, okhttp3.internal.connection.c cVar, z zVar, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = gVar.f13899c;
        }
        if ((i14 & 2) != 0) {
            cVar = gVar.f13900d;
        }
        okhttp3.internal.connection.c cVar2 = cVar;
        if ((i14 & 4) != 0) {
            zVar = gVar.f13901e;
        }
        z zVar2 = zVar;
        if ((i14 & 8) != 0) {
            i11 = gVar.f13902f;
        }
        int i15 = i11;
        if ((i14 & 16) != 0) {
            i12 = gVar.f13903g;
        }
        int i16 = i12;
        if ((i14 & 32) != 0) {
            i13 = gVar.f13904h;
        }
        return gVar.c(i10, cVar2, zVar2, i15, i16, i13);
    }

    @Override // okhttp3.v.a
    public z a() {
        return this.f13901e;
    }

    @Override // okhttp3.v.a
    public b0 b(z request) {
        r.e(request, "request");
        if (this.f13899c >= this.f13898b.size()) {
            throw new IllegalStateException("Check failed.");
        }
        this.f13905i++;
        okhttp3.internal.connection.c cVar = this.f13900d;
        if (cVar != null) {
            if (!cVar.j().g(request.i())) {
                throw new IllegalStateException(("network interceptor " + this.f13898b.get(this.f13899c - 1) + " must retain the same host and port").toString());
            }
            if (this.f13905i != 1) {
                throw new IllegalStateException(("network interceptor " + this.f13898b.get(this.f13899c - 1) + " must call proceed() exactly once").toString());
            }
        }
        g gVarD = d(this, this.f13899c + 1, null, request, 0, 0, 0, 58, null);
        v vVar = (v) this.f13898b.get(this.f13899c);
        b0 b0VarA = vVar.a(gVarD);
        if (b0VarA == null) {
            throw new NullPointerException("interceptor " + vVar + " returned null");
        }
        if (this.f13900d != null && this.f13899c + 1 < this.f13898b.size() && gVarD.f13905i != 1) {
            throw new IllegalStateException(("network interceptor " + vVar + " must call proceed() exactly once").toString());
        }
        if (b0VarA.c() != null) {
            return b0VarA;
        }
        throw new IllegalStateException(("interceptor " + vVar + " returned a response with no body").toString());
    }

    public final g c(int i10, okhttp3.internal.connection.c cVar, z request, int i11, int i12, int i13) {
        r.e(request, "request");
        return new g(this.f13897a, this.f13898b, i10, cVar, request, i11, i12, i13);
    }

    @Override // okhttp3.v.a
    public okhttp3.e call() {
        return this.f13897a;
    }

    public final okhttp3.internal.connection.e e() {
        return this.f13897a;
    }

    public final int f() {
        return this.f13902f;
    }

    public final okhttp3.internal.connection.c g() {
        return this.f13900d;
    }

    public final int h() {
        return this.f13903g;
    }

    public final z i() {
        return this.f13901e;
    }

    public final int j() {
        return this.f13904h;
    }

    public int k() {
        return this.f13903g;
    }
}
