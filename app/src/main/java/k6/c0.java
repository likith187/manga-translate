package k6;

import com.oplus.anim.parser.moshi.c;
import h6.j;

/* JADX INFO: loaded from: classes2.dex */
abstract class c0 {

    /* JADX INFO: renamed from: a */
    private static final c.a f12922a = c.a.a("nm", "sy", "pt", "p", "r", "or", "os", "ir", "is", "hd", "d");

    static h6.j a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar, int i10) {
        boolean zD = false;
        boolean z10 = i10 == 3;
        String strX = null;
        j.a aVarForValue = null;
        g6.b bVarF = null;
        g6.m mVarB = null;
        g6.b bVarF2 = null;
        g6.b bVarE = null;
        g6.b bVarE2 = null;
        g6.b bVarF3 = null;
        g6.b bVarF4 = null;
        while (cVar.B()) {
            switch (cVar.v0(f12922a)) {
                case 0:
                    strX = cVar.X();
                    break;
                case 1:
                    aVarForValue = j.a.forValue(cVar.I());
                    break;
                case 2:
                    bVarF = d.f(cVar, aVar, false);
                    break;
                case 3:
                    mVarB = a.b(cVar, aVar);
                    break;
                case 4:
                    bVarF2 = d.f(cVar, aVar, false);
                    break;
                case 5:
                    bVarE2 = d.e(cVar, aVar);
                    break;
                case 6:
                    bVarF4 = d.f(cVar, aVar, false);
                    break;
                case 7:
                    bVarE = d.e(cVar, aVar);
                    break;
                case 8:
                    bVarF3 = d.f(cVar, aVar, false);
                    break;
                case 9:
                    zD = cVar.D();
                    break;
                case 10:
                    z10 = cVar.I() == 3;
                    break;
                default:
                    cVar.x0();
                    cVar.D0();
                    break;
            }
        }
        return new h6.j(strX, aVarForValue, bVarF, mVarB, bVarF2, bVarE, bVarE2, bVarF3, bVarF4, zD, z10);
    }
}
