package q1;

import com.airbnb.lottie.parser.moshi.c;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
abstract class j0 {

    /* JADX INFO: renamed from: a */
    private static final c.a f15298a = c.a.a("nm", "hd", "it");

    static n1.q a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        ArrayList arrayList = new ArrayList();
        String strX = null;
        boolean zD = false;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15298a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                zD = cVar.D();
            } else if (iV0 != 2) {
                cVar.D0();
            } else {
                cVar.i();
                while (cVar.B()) {
                    n1.c cVarA = h.a(cVar, jVar);
                    if (cVarA != null) {
                        arrayList.add(cVarA);
                    }
                }
                cVar.v();
            }
        }
        return new n1.q(strX, arrayList, zD);
    }
}
