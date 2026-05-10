package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15278a = c.a.a("a");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.a f15279b = c.a.a("fc", "sc", "sw", "t");

    public static m1.k a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        cVar.k();
        m1.k kVarB = null;
        while (cVar.B()) {
            if (cVar.v0(f15278a) != 0) {
                cVar.x0();
                cVar.D0();
            } else {
                kVarB = b(cVar, jVar);
            }
        }
        cVar.x();
        return kVarB == null ? new m1.k(null, null, null, null) : kVarB;
    }

    private static m1.k b(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        cVar.k();
        m1.a aVarC = null;
        m1.a aVarC2 = null;
        m1.b bVarE = null;
        m1.b bVarE2 = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15279b);
            if (iV0 == 0) {
                aVarC = d.c(cVar, jVar);
            } else if (iV0 == 1) {
                aVarC2 = d.c(cVar, jVar);
            } else if (iV0 == 2) {
                bVarE = d.e(cVar, jVar);
            } else if (iV0 != 3) {
                cVar.x0();
                cVar.D0();
            } else {
                bVarE2 = d.e(cVar, jVar);
            }
        }
        cVar.x();
        return new m1.k(aVarC, aVarC2, bVarE, bVarE2);
    }
}
