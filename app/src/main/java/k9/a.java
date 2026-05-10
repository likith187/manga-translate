package k9;

import i9.d;
import k9.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.r;
import okhttp3.b0;
import okhttp3.c;
import okhttp3.c0;
import okhttp3.e;
import okhttp3.q;
import okhttp3.t;
import okhttp3.v;
import okhttp3.y;
import okhttp3.z;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0159a f12993a = new C0159a(null);

    /* JADX INFO: renamed from: k9.a$a, reason: collision with other inner class name */
    public static final class C0159a {
        public /* synthetic */ C0159a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final t c(t tVar, t tVar2) {
            t.a aVar = new t.a();
            int size = tVar.size();
            for (int i10 = 0; i10 < size; i10++) {
                String strC = tVar.c(i10);
                String strE = tVar.e(i10);
                if ((!r.v("Warning", strC, true) || !r.F(strE, "1", false, 2, null)) && (d(strC) || !e(strC) || tVar2.a(strC) == null)) {
                    aVar.c(strC, strE);
                }
            }
            int size2 = tVar2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                String strC2 = tVar2.c(i11);
                if (!d(strC2) && e(strC2)) {
                    aVar.c(strC2, tVar2.e(i11));
                }
            }
            return aVar.d();
        }

        private final boolean d(String str) {
            return r.v("Content-Length", str, true) || r.v("Content-Encoding", str, true) || r.v("Content-Type", str, true);
        }

        private final boolean e(String str) {
            return (r.v("Connection", str, true) || r.v("Keep-Alive", str, true) || r.v("Proxy-Authenticate", str, true) || r.v("Proxy-Authorization", str, true) || r.v("TE", str, true) || r.v("Trailers", str, true) || r.v("Transfer-Encoding", str, true) || r.v("Upgrade", str, true)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final b0 f(b0 b0Var) {
            return (b0Var != null ? b0Var.c() : null) != null ? b0Var.b0().b(null).c() : b0Var;
        }

        private C0159a() {
        }
    }

    public a(c cVar) {
    }

    @Override // okhttp3.v
    public b0 a(v.a chain) {
        q qVarL;
        kotlin.jvm.internal.r.e(chain, "chain");
        e eVarCall = chain.call();
        b bVarB = new b.C0160b(System.currentTimeMillis(), chain.a(), null).b();
        z zVarB = bVarB.b();
        b0 b0VarA = bVarB.a();
        okhttp3.internal.connection.e eVar = eVarCall instanceof okhttp3.internal.connection.e ? (okhttp3.internal.connection.e) eVarCall : null;
        if (eVar == null || (qVarL = eVar.l()) == null) {
            qVarL = q.f14943b;
        }
        if (zVarB == null && b0VarA == null) {
            b0 b0VarC = new b0.a().r(chain.a()).p(y.HTTP_1_1).g(504).m("Unsatisfiable Request (only-if-cached)").b(d.f12669c).s(-1L).q(System.currentTimeMillis()).c();
            qVarL.z(eVarCall, b0VarC);
            return b0VarC;
        }
        if (zVarB == null) {
            kotlin.jvm.internal.r.b(b0VarA);
            b0 b0VarC2 = b0VarA.b0().d(f12993a.f(b0VarA)).c();
            qVarL.b(eVarCall, b0VarC2);
            return b0VarC2;
        }
        if (b0VarA != null) {
            qVarL.a(eVarCall, b0VarA);
        }
        b0 b0VarB = chain.b(zVarB);
        if (b0VarA != null) {
            if (b0VarB != null && b0VarB.x() == 304) {
                b0.a aVarB0 = b0VarA.b0();
                C0159a c0159a = f12993a;
                aVarB0.k(c0159a.c(b0VarA.N(), b0VarB.N())).s(b0VarB.E0()).q(b0VarB.x0()).d(c0159a.f(b0VarA)).n(c0159a.f(b0VarB)).c();
                c0 c0VarC = b0VarB.c();
                kotlin.jvm.internal.r.b(c0VarC);
                c0VarC.close();
                kotlin.jvm.internal.r.b(null);
                throw null;
            }
            c0 c0VarC2 = b0VarA.c();
            if (c0VarC2 != null) {
                d.l(c0VarC2);
            }
        }
        kotlin.jvm.internal.r.b(b0VarB);
        b0.a aVarB02 = b0VarB.b0();
        C0159a c0159a2 = f12993a;
        return aVarB02.d(c0159a2.f(b0VarA)).n(c0159a2.f(b0VarB)).c();
    }
}
