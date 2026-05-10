package k6;

import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12918a = c.a.a("a");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.a f12919b = c.a.a("fc", "sc", "sw", "t");

    public static g6.k a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        cVar.k();
        g6.k kVarB = null;
        while (cVar.B()) {
            if (cVar.v0(f12918a) != 0) {
                cVar.x0();
                cVar.D0();
            } else {
                kVarB = b(cVar, aVar);
            }
        }
        cVar.x();
        return kVarB == null ? new g6.k(null, null, null, null) : kVarB;
    }

    private static g6.k b(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        cVar.k();
        g6.a aVarC = null;
        g6.a aVarC2 = null;
        g6.b bVarE = null;
        g6.b bVarE2 = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12919b);
            if (iV0 == 0) {
                aVarC = d.c(cVar, aVar);
            } else if (iV0 == 1) {
                aVarC2 = d.c(cVar, aVar);
            } else if (iV0 == 2) {
                bVarE = d.e(cVar, aVar);
            } else if (iV0 != 3) {
                cVar.x0();
                cVar.D0();
            } else {
                bVarE2 = d.e(cVar, aVar);
            }
        }
        cVar.x();
        return new g6.k(aVarC, aVarC2, bVarE, bVarE2);
    }
}
