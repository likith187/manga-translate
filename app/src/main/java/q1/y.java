package q1;

import com.airbnb.lottie.parser.moshi.c;
import n1.j;

/* JADX INFO: loaded from: classes.dex */
abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15334a = c.a.a("nm", "mm", "hd");

    static n1.j a(com.airbnb.lottie.parser.moshi.c cVar) {
        String strX = null;
        boolean zD = false;
        j.a aVarForId = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15334a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                aVarForId = j.a.forId(cVar.I());
            } else if (iV0 != 2) {
                cVar.x0();
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        return new n1.j(strX, aVarForId, zD);
    }
}
