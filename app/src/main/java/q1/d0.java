package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
abstract class d0 {

    /* JADX INFO: renamed from: a */
    private static final c.a f15283a = c.a.a("nm", "p", "s", "r", "hd");

    static n1.l a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        String strX = null;
        m1.m mVarB = null;
        m1.f fVarI = null;
        m1.b bVarE = null;
        boolean zD = false;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15283a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                mVarB = a.b(cVar, jVar);
            } else if (iV0 == 2) {
                fVarI = d.i(cVar, jVar);
            } else if (iV0 == 3) {
                bVarE = d.e(cVar, jVar);
            } else if (iV0 != 4) {
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        return new n1.l(strX, mVarB, fVarI, bVarE, zD);
    }
}
