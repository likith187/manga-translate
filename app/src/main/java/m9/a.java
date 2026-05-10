package m9;

import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import okhttp3.a0;
import okhttp3.b0;
import okhttp3.c0;
import okhttp3.l;
import okhttp3.m;
import okhttp3.v;
import okhttp3.w;
import okhttp3.z;
import t9.n;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f13890a;

    public a(m cookieJar) {
        r.e(cookieJar, "cookieJar");
        this.f13890a = cookieJar;
    }

    private final String b(List list) {
        StringBuilder sb = new StringBuilder();
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                o.q();
            }
            l lVar = (l) obj;
            if (i10 > 0) {
                sb.append("; ");
            }
            sb.append(lVar.e());
            sb.append('=');
            sb.append(lVar.g());
            i10 = i11;
        }
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // okhttp3.v
    public b0 a(v.a chain) {
        c0 c0VarC;
        r.e(chain, "chain");
        z zVarA = chain.a();
        z.a aVarH = zVarA.h();
        a0 a0VarA = zVarA.a();
        if (a0VarA != null) {
            w wVarB = a0VarA.b();
            if (wVarB != null) {
                aVarH.c("Content-Type", wVarB.toString());
            }
            long jA = a0VarA.a();
            if (jA != -1) {
                aVarH.c("Content-Length", String.valueOf(jA));
                aVarH.f("Transfer-Encoding");
            } else {
                aVarH.c("Transfer-Encoding", "chunked");
                aVarH.f("Content-Length");
            }
        }
        boolean z10 = false;
        if (zVarA.d("Host") == null) {
            aVarH.c("Host", i9.d.P(zVarA.i(), false, 1, null));
        }
        if (zVarA.d("Connection") == null) {
            aVarH.c("Connection", "Keep-Alive");
        }
        if (zVarA.d("Accept-Encoding") == null && zVarA.d("Range") == null) {
            aVarH.c("Accept-Encoding", "gzip");
            z10 = true;
        }
        List listA = this.f13890a.a(zVarA.i());
        if (!listA.isEmpty()) {
            aVarH.c("Cookie", b(listA));
        }
        if (zVarA.d("User-Agent") == null) {
            aVarH.c("User-Agent", "okhttp/4.12.0");
        }
        b0 b0VarB = chain.b(aVarH.b());
        e.f(this.f13890a, zVarA.i(), b0VarB.N());
        b0.a aVarR = b0VarB.b0().r(zVarA);
        if (z10 && kotlin.text.r.v("gzip", b0.I(b0VarB, "Content-Encoding", null, 2, null), true) && e.b(b0VarB) && (c0VarC = b0VarB.c()) != null) {
            t9.k kVar = new t9.k(c0VarC.k());
            aVarR.k(b0VarB.N().d().f("Content-Encoding").f("Content-Length").d());
            aVarR.b(new h(b0.I(b0VarB, "Content-Type", null, 2, null), -1L, n.b(kVar)));
        }
        return aVarR.c();
    }
}
