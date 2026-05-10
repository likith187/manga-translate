package k6;

import com.oplus.anim.parser.moshi.c;
import h6.s;

/* JADX INFO: loaded from: classes2.dex */
abstract class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12953a = c.a.a("s", "e", "o", "nm", "m", "hd");

    static h6.s a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        String strX = null;
        s.a aVarForId = null;
        g6.b bVarF = null;
        g6.b bVarF2 = null;
        g6.b bVarF3 = null;
        boolean zD = false;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12953a);
            if (iV0 == 0) {
                bVarF = d.f(cVar, aVar, false);
            } else if (iV0 == 1) {
                bVarF2 = d.f(cVar, aVar, false);
            } else if (iV0 == 2) {
                bVarF3 = d.f(cVar, aVar, false);
            } else if (iV0 == 3) {
                strX = cVar.X();
            } else if (iV0 == 4) {
                aVarForId = s.a.forId(cVar.I());
            } else if (iV0 != 5) {
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        return new h6.s(strX, aVarForId, bVarF, bVarF2, bVarF3, zD);
    }
}
