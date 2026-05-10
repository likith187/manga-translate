package k6;

import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
abstract class f {

    /* JADX INFO: renamed from: a */
    private static final c.a f12927a = c.a.a("nm", "p", "s", "hd", "d");

    static h6.b a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar, int i10) {
        boolean z10 = i10 == 3;
        boolean zD = false;
        String strX = null;
        g6.m mVarB = null;
        g6.f fVarI = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12927a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                mVarB = a.b(cVar, aVar);
            } else if (iV0 == 2) {
                fVarI = d.i(cVar, aVar);
            } else if (iV0 == 3) {
                zD = cVar.D();
            } else if (iV0 != 4) {
                cVar.x0();
                cVar.D0();
            } else {
                z10 = cVar.I() == 3;
            }
        }
        return new h6.b(strX, mVarB, fVarI, z10, zD);
    }
}
