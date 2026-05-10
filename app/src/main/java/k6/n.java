package k6;

import com.oplus.anim.parser.moshi.c;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12954a = c.a.a("ch", "size", "w", "style", "fFamily", "data");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.a f12955b = c.a.a("shapes");

    static f6.e a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        ArrayList arrayList = new ArrayList();
        cVar.k();
        double dG = 0.0d;
        String strX = null;
        String strX2 = null;
        char cCharAt = 0;
        double dG2 = 0.0d;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12954a);
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
                    if (cVar.v0(f12955b) != 0) {
                        cVar.x0();
                        cVar.D0();
                    } else {
                        cVar.i();
                        while (cVar.B()) {
                            arrayList.add((h6.p) h.a(cVar, aVar));
                        }
                        cVar.v();
                    }
                }
                cVar.x();
            }
        }
        cVar.x();
        return new f6.e(arrayList, cCharAt, dG2, dG, strX, strX2);
    }
}
