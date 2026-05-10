package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
abstract class e0 {

    /* JADX INFO: renamed from: a */
    private static final c.a f15286a = c.a.a("nm", "c", "o", "tr", "hd");

    static n1.m a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        String strX = null;
        m1.b bVarF = null;
        m1.b bVarF2 = null;
        m1.l lVarG = null;
        boolean zD = false;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15286a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                bVarF = d.f(cVar, jVar, false);
            } else if (iV0 == 2) {
                bVarF2 = d.f(cVar, jVar, false);
            } else if (iV0 == 3) {
                lVarG = c.g(cVar, jVar);
            } else if (iV0 != 4) {
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        return new n1.m(strX, bVarF, bVarF2, lVarG, zD);
    }
}
