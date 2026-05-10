package q1;

import com.airbnb.lottie.parser.moshi.c;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15309a = c.a.a("ch", "size", "w", "style", "fFamily", "data");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.a f15310b = c.a.a("shapes");

    static l1.d a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        ArrayList arrayList = new ArrayList();
        cVar.k();
        double dG = 0.0d;
        String strX = null;
        String strX2 = null;
        char cCharAt = 0;
        double dG2 = 0.0d;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15309a);
            if (iV0 == 0) {
                cCharAt = cVar.X().charAt(0);
            } else if (iV0 == 1) {
                dG2 = cVar.G();
            } else if (iV0 == 2) {
                dG = cVar.G();
            } else if (iV0 == 3) {
                strX = cVar.X();
            } else if (iV0 == 4) {
                strX2 = cVar.X();
            } else if (iV0 != 5) {
                cVar.x0();
                cVar.D0();
            } else {
                cVar.k();
                while (cVar.B()) {
                    if (cVar.v0(f15310b) != 0) {
                        cVar.x0();
                        cVar.D0();
                    } else {
                        cVar.i();
                        while (cVar.B()) {
                            arrayList.add((n1.q) h.a(cVar, jVar));
                        }
                        cVar.v();
                    }
                }
                cVar.x();
            }
        }
        cVar.x();
        return new l1.d(arrayList, cCharAt, dG2, dG, strX, strX2);
    }
}
