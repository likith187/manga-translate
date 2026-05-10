package q1;

import com.airbnb.lottie.parser.moshi.c;
import n1.t;

/* JADX INFO: loaded from: classes.dex */
abstract class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15311a = c.a.a("s", "e", "o", "nm", "m", "hd");

    static n1.t a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        String strX = null;
        t.a aVarForId = null;
        m1.b bVarF = null;
        m1.b bVarF2 = null;
        m1.b bVarF3 = null;
        boolean zD = false;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15311a);
            if (iV0 == 0) {
                bVarF = d.f(cVar, jVar, false);
            } else if (iV0 == 1) {
                bVarF2 = d.f(cVar, jVar, false);
            } else if (iV0 == 2) {
                bVarF3 = d.f(cVar, jVar, false);
            } else if (iV0 == 3) {
                strX = cVar.X();
            } else if (iV0 == 4) {
                aVarForId = t.a.forId(cVar.I());
            } else if (iV0 != 5) {
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        return new n1.t(strX, aVarForId, bVarF, bVarF2, bVarF3, zD);
    }
}
