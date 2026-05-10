package m9;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.jvm.internal.r;
import okhttp3.a0;
import okhttp3.b0;
import okhttp3.c0;
import okhttp3.v;
import okhttp3.z;
import t9.n;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f13891a;

    public b(boolean z10) {
        this.f13891a = z10;
    }

    private final boolean b(int i10) {
        if (i10 == 100) {
            return true;
        }
        return 102 <= i10 && i10 < 200;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Object, okhttp3.b0$a] */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v4, types: [okhttp3.b0$a] */
    @Override // okhttp3.v
    public b0 a(v.a chain) throws IOException {
        boolean z10;
        ?? r92;
        ?? Q;
        b0.a aVar;
        r.e(chain, "chain");
        g gVar = (g) chain;
        okhttp3.internal.connection.c cVarG = gVar.g();
        r.b(cVarG);
        z zVarI = gVar.i();
        a0 a0VarA = zVarI.a();
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            cVarG.u(zVarI);
            ?? A = f.a(zVarI.g());
            try {
                if (A == 0 || a0VarA == null) {
                    cVarG.o();
                    z10 = true;
                    A = 0;
                } else {
                    if (kotlin.text.r.v("100-continue", zVarI.d("Expect"), true)) {
                        cVarG.f();
                        b0.a aVarQ = cVarG.q(true);
                        try {
                            cVarG.s();
                            z10 = false;
                            aVar = aVarQ;
                        } catch (IOException e10) {
                            e = e10;
                            z10 = true;
                            r92 = aVarQ;
                            if (e instanceof o9.a) {
                                throw e;
                            }
                            Q = r92;
                            if (!cVarG.k()) {
                                throw e;
                            }
                        }
                    } else {
                        z10 = true;
                        aVar = null;
                    }
                    if (aVar != null) {
                        cVarG.o();
                        A = aVar;
                        if (!cVarG.h().v()) {
                            cVarG.n();
                            A = aVar;
                        }
                    } else if (a0VarA.c()) {
                        cVarG.f();
                        a0VarA.e(n.a(cVarG.c(zVarI, true)));
                        A = aVar;
                    } else {
                        t9.e eVarA = n.a(cVarG.c(zVarI, false));
                        a0VarA.e(eVarA);
                        eVarA.close();
                        A = aVar;
                    }
                }
                if (a0VarA == null || !a0VarA.c()) {
                    cVarG.e();
                }
                e = null;
                Q = A;
            } catch (IOException e11) {
                e = e11;
                r92 = A;
            }
        } catch (IOException e12) {
            e = e12;
            z10 = true;
            r92 = 0;
        }
        if (Q == 0) {
            try {
                Q = cVarG.q(false);
                r.b(Q);
                if (z10) {
                    cVarG.s();
                    z10 = false;
                }
            } catch (IOException e13) {
                if (e == null) {
                    throw e13;
                }
                n8.e.a(e, e13);
                throw e;
            }
        }
        b0 b0VarC = Q.r(zVarI).i(cVarG.h().r()).s(jCurrentTimeMillis).q(System.currentTimeMillis()).c();
        int iX = b0VarC.x();
        if (b(iX)) {
            b0.a aVarQ2 = cVarG.q(false);
            r.b(aVarQ2);
            if (z10) {
                cVarG.s();
            }
            b0VarC = aVarQ2.r(zVarI).i(cVarG.h().r()).s(jCurrentTimeMillis).q(System.currentTimeMillis()).c();
            iX = b0VarC.x();
        }
        cVarG.r(b0VarC);
        b0 b0VarC2 = (this.f13891a && iX == 101) ? b0VarC.b0().b(i9.d.f12669c).c() : b0VarC.b0().b(cVarG.p(b0VarC)).c();
        if (kotlin.text.r.v("close", b0VarC2.D0().d("Connection"), true) || kotlin.text.r.v("close", b0.I(b0VarC2, "Connection", null, 2, null), true)) {
            cVarG.n();
        }
        if (iX == 204 || iX == 205) {
            c0 c0VarC = b0VarC2.c();
            if ((c0VarC != null ? c0VarC.i() : -1L) > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("HTTP ");
                sb.append(iX);
                sb.append(" had non-zero Content-Length: ");
                c0 c0VarC2 = b0VarC2.c();
                sb.append(c0VarC2 != null ? Long.valueOf(c0VarC2.i()) : null);
                throw new ProtocolException(sb.toString());
            }
        }
        return b0VarC2;
    }
}
