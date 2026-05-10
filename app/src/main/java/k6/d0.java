package k6;

import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
abstract class d0 {

    /* JADX INFO: renamed from: a */
    private static final c.a f12923a = c.a.a("nm", "p", "s", "r", "hd");

    static h6.k a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        String strX = null;
        g6.m mVarB = null;
        g6.f fVarI = null;
        g6.b bVarE = null;
        boolean zD = false;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12923a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                mVarB = a.b(cVar, aVar);
            } else if (iV0 == 2) {
                fVarI = d.i(cVar, aVar);
            } else if (iV0 == 3) {
                bVarE = d.e(cVar, aVar);
            } else if (iV0 != 4) {
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        return new h6.k(strX, mVarB, fVarI, bVarE, zD);
    }
}
