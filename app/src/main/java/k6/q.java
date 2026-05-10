package k6;

import android.graphics.Path;
import com.oplus.anim.parser.moshi.c;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
abstract class q {

    /* JADX INFO: renamed from: a */
    private static final c.a f12958a = c.a.a("nm", "g", "o", "t", "s", "e", "r", "hd");

    /* JADX INFO: renamed from: b */
    private static final c.a f12959b = c.a.a("p", "k");

    static h6.e a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        g6.d dVarH = null;
        Path.FillType fillType = Path.FillType.WINDING;
        String strX = null;
        h6.g gVar = null;
        g6.c cVarG = null;
        g6.f fVarI = null;
        g6.f fVarI2 = null;
        boolean zD = false;
        while (cVar.B()) {
            switch (cVar.v0(f12958a)) {
                case 0:
                    strX = cVar.X();
                    break;
                case 1:
                    cVar.k();
                    int I = -1;
                    while (cVar.B()) {
                        int iV0 = cVar.v0(f12959b);
                        if (iV0 == 0) {
                            I = cVar.I();
                        } else if (iV0 != 1) {
                            cVar.x0();
                            cVar.D0();
                        } else {
                            cVarG = d.g(cVar, aVar, I);
                        }
                    }
                    cVar.x();
                    break;
                case 2:
                    dVarH = d.h(cVar, aVar);
                    break;
                case 3:
                    gVar = cVar.I() == 1 ? h6.g.LINEAR : h6.g.RADIAL;
                    break;
                case 4:
                    fVarI = d.i(cVar, aVar);
                    break;
                case 5:
                    fVarI2 = d.i(cVar, aVar);
                    break;
                case 6:
                    fillType = cVar.I() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 7:
                    zD = cVar.D();
                    break;
                default:
                    cVar.x0();
                    cVar.D0();
                    break;
            }
        }
        return new h6.e(strX, gVar, fillType, cVarG, dVarH == null ? new g6.d(Collections.singletonList(new m6.c(100))) : dVarH, fVarI, fVarI2, null, null, zD);
    }
}
