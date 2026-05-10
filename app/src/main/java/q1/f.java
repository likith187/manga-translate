package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
abstract class f {

    /* JADX INFO: renamed from: a */
    private static final c.a f15287a = c.a.a("nm", "p", "s", "hd", "d");

    static n1.b a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar, int i10) {
        boolean z10 = i10 == 3;
        boolean zD = false;
        String strX = null;
        m1.m mVarB = null;
        m1.f fVarI = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15287a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                mVarB = a.b(cVar, jVar);
            } else if (iV0 == 2) {
                fVarI = d.i(cVar, jVar);
            } else if (iV0 == 3) {
                zD = cVar.D();
            } else if (iV0 != 4) {
                cVar.x0();
                cVar.D0();
            } else {
                z10 = cVar.I() == 3;
            }
        }
        return new n1.b(strX, mVarB, fVarI, z10, zD);
    }
}
