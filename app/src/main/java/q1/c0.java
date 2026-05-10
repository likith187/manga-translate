package q1;

import com.airbnb.lottie.parser.moshi.c;
import n1.k;

/* JADX INFO: loaded from: classes.dex */
abstract class c0 {

    /* JADX INFO: renamed from: a */
    private static final c.a f15282a = c.a.a("nm", "sy", "pt", "p", "r", "or", "os", "ir", "is", "hd", "d");

    static n1.k a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar, int i10) {
        boolean zD = false;
        boolean z10 = i10 == 3;
        String strX = null;
        k.a aVarForValue = null;
        m1.b bVarF = null;
        m1.m mVarB = null;
        m1.b bVarF2 = null;
        m1.b bVarE = null;
        m1.b bVarE2 = null;
        m1.b bVarF3 = null;
        m1.b bVarF4 = null;
        while (cVar.B()) {
            switch (cVar.v0(f15282a)) {
                case 0:
                    strX = cVar.X();
                    break;
                case 1:
                    aVarForValue = k.a.forValue(cVar.I());
                    break;
                case 2:
                    bVarF = d.f(cVar, jVar, false);
                    break;
                case 3:
                    mVarB = a.b(cVar, jVar);
                    break;
                case 4:
                    bVarF2 = d.f(cVar, jVar, false);
                    break;
                case 5:
                    bVarE2 = d.e(cVar, jVar);
                    break;
                case 6:
                    bVarF4 = d.f(cVar, jVar, false);
                    break;
                case 7:
                    bVarE = d.e(cVar, jVar);
                    break;
                case 8:
                    bVarF3 = d.f(cVar, jVar, false);
                    break;
                case 9:
                    zD = cVar.D();
                    break;
                case 10:
                    z10 = cVar.I() == 3;
                    break;
                default:
                    cVar.x0();
                    cVar.D0();
                    break;
            }
        }
        return new n1.k(strX, aVarForValue, bVarF, mVarB, bVarF2, bVarE, bVarE2, bVarF3, bVarF4, zD, z10);
    }
}
