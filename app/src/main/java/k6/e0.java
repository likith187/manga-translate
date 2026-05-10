package k6;

import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
abstract class e0 {

    /* JADX INFO: renamed from: a */
    private static final c.a f12926a = c.a.a("nm", "c", "o", "tr", "hd");

    static h6.l a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        String strX = null;
        g6.b bVarF = null;
        g6.b bVarF2 = null;
        g6.l lVarG = null;
        boolean zD = false;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12926a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                bVarF = d.f(cVar, aVar, false);
            } else if (iV0 == 2) {
                bVarF2 = d.f(cVar, aVar, false);
            } else if (iV0 == 3) {
                lVarG = c.g(cVar, aVar);
            } else if (iV0 != 4) {
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        return new h6.l(strX, bVarF, bVarF2, lVarG, zD);
    }
}
