package m9;

import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.r;
import okhttp3.b0;
import okhttp3.l;
import okhttp3.m;
import okhttp3.t;
import okhttp3.u;
import t9.g;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final t9.g f13895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final t9.g f13896b;

    static {
        g.a aVar = t9.g.Companion;
        f13895a = aVar.d("\"\\");
        f13896b = aVar.d("\t ,=");
    }

    public static final List a(t tVar, String headerName) {
        r.e(tVar, "<this>");
        r.e(headerName, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = tVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (kotlin.text.r.v(headerName, tVar.c(i10), true)) {
                try {
                    c(new t9.d().u0(tVar.e(i10)), arrayList);
                } catch (EOFException e10) {
                    p9.h.f15249a.g().j("Unable to parse challenge", 5, e10);
                }
            }
        }
        return arrayList;
    }

    public static final boolean b(b0 b0Var) {
        r.e(b0Var, "<this>");
        if (r.a(b0Var.D0().g(), "HEAD")) {
            return false;
        }
        int iX = b0Var.x();
        return (((iX >= 100 && iX < 200) || iX == 204 || iX == 304) && i9.d.u(b0Var) == -1 && !kotlin.text.r.v("chunked", b0.I(b0Var, "Transfer-Encoding", null, 2, null), true)) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ba, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ba, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static final void c(t9.d r7, java.util.List r8) throws java.io.EOFException {
        /*
            r0 = 0
        L1:
            r1 = r0
        L2:
            if (r1 != 0) goto Le
            g(r7)
            java.lang.String r1 = e(r7)
            if (r1 != 0) goto Le
            return
        Le:
            boolean r2 = g(r7)
            java.lang.String r3 = e(r7)
            if (r3 != 0) goto L2c
            boolean r7 = r7.S()
            if (r7 != 0) goto L1f
            return
        L1f:
            okhttp3.g r7 = new okhttp3.g
            java.util.Map r0 = kotlin.collections.j0.h()
            r7.<init>(r1, r0)
            r8.add(r7)
            return
        L2c:
            r4 = 61
            int r5 = i9.d.I(r7, r4)
            boolean r6 = g(r7)
            if (r2 != 0) goto L67
            if (r6 != 0) goto L40
            boolean r2 = r7.S()
            if (r2 == 0) goto L67
        L40:
            okhttp3.g r2 = new okhttp3.g
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r3)
            java.lang.String r3 = "="
            java.lang.String r3 = kotlin.text.r.x(r3, r5)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            java.util.Map r3 = java.util.Collections.singletonMap(r0, r3)
            java.lang.String r4 = "singletonMap<String, Str…ek + \"=\".repeat(eqCount))"
            kotlin.jvm.internal.r.d(r3, r4)
            r2.<init>(r1, r3)
            r8.add(r2)
            goto L1
        L67:
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            r2.<init>()
            int r6 = i9.d.I(r7, r4)
            int r5 = r5 + r6
        L71:
            if (r3 != 0) goto L81
            java.lang.String r3 = e(r7)
            boolean r5 = g(r7)
            if (r5 != 0) goto Lba
            int r5 = i9.d.I(r7, r4)
        L81:
            if (r5 == 0) goto Lba
            r6 = 1
            if (r5 <= r6) goto L87
            return
        L87:
            boolean r6 = g(r7)
            if (r6 == 0) goto L8e
            return
        L8e:
            r6 = 34
            boolean r6 = h(r7, r6)
            if (r6 == 0) goto L9b
            java.lang.String r6 = d(r7)
            goto L9f
        L9b:
            java.lang.String r6 = e(r7)
        L9f:
            if (r6 != 0) goto La2
            return
        La2:
            java.lang.Object r3 = r2.put(r3, r6)
            java.lang.String r3 = (java.lang.String) r3
            if (r3 == 0) goto Lab
            return
        Lab:
            boolean r3 = g(r7)
            if (r3 != 0) goto Lb8
            boolean r3 = r7.S()
            if (r3 != 0) goto Lb8
            return
        Lb8:
            r3 = r0
            goto L71
        Lba:
            okhttp3.g r4 = new okhttp3.g
            r4.<init>(r1, r2)
            r8.add(r4)
            r1 = r3
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: m9.e.c(t9.d, java.util.List):void");
    }

    private static final String d(t9.d dVar) throws EOFException {
        if (dVar.C0() != 34) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        t9.d dVar2 = new t9.d();
        while (true) {
            long jR = dVar.R(f13895a);
            if (jR == -1) {
                return null;
            }
            if (dVar.D(jR) == 34) {
                dVar2.p(dVar, jR);
                dVar.C0();
                return dVar2.D0();
            }
            if (dVar.G0() == jR + 1) {
                return null;
            }
            dVar2.p(dVar, jR);
            dVar.C0();
            dVar2.p(dVar, 1L);
        }
    }

    private static final String e(t9.d dVar) {
        long jR = dVar.R(f13896b);
        if (jR == -1) {
            jR = dVar.G0();
        }
        if (jR != 0) {
            return dVar.E0(jR);
        }
        return null;
    }

    public static final void f(m mVar, u url, t headers) {
        r.e(mVar, "<this>");
        r.e(url, "url");
        r.e(headers, "headers");
        if (mVar == m.f14930b) {
            return;
        }
        List listE = l.f14915j.e(url, headers);
        if (listE.isEmpty()) {
            return;
        }
        mVar.b(url, listE);
    }

    private static final boolean g(t9.d dVar) throws EOFException {
        boolean z10 = false;
        while (!dVar.S()) {
            byte bD = dVar.D(0L);
            if (bD == 44) {
                dVar.C0();
                z10 = true;
            } else {
                if (bD != 32 && bD != 9) {
                    break;
                }
                dVar.C0();
            }
        }
        return z10;
    }

    private static final boolean h(t9.d dVar, byte b10) {
        return !dVar.S() && dVar.D(0L) == b10;
    }
}
