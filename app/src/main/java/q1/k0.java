package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
abstract class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static c.a f15306a = c.a.a("nm", "ind", "ks", "hd");

    static n1.r a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        String strX = null;
        int I = 0;
        boolean zD = false;
        m1.h hVarK = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15306a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                I = cVar.I();
            } else if (iV0 == 2) {
                hVarK = d.k(cVar, jVar);
            } else if (iV0 != 3) {
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        return new n1.r(strX, I, hVarK, zD);
    }
}
