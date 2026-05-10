package q1;

import android.graphics.Path;
import com.airbnb.lottie.parser.moshi.c;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
abstract class p {

    /* JADX INFO: renamed from: a */
    private static final c.a f15314a = c.a.a("nm", "g", "o", "t", "s", "e", "r", "hd");

    /* JADX INFO: renamed from: b */
    private static final c.a f15315b = c.a.a("p", "k");

    static n1.e a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        m1.d dVarH = null;
        Path.FillType fillType = Path.FillType.WINDING;
        String strX = null;
        n1.g gVar = null;
        m1.c cVarG = null;
        m1.f fVarI = null;
        m1.f fVarI2 = null;
        boolean zD = false;
        while (cVar.B()) {
            switch (cVar.v0(f15314a)) {
                case 0:
                    strX = cVar.X();
                    break;
                case 1:
                    cVar.k();
                    int I = -1;
                    while (cVar.B()) {
                        int iV0 = cVar.v0(f15315b);
                        if (iV0 == 0) {
                            I = cVar.I();
                        } else if (iV0 != 1) {
                            cVar.x0();
                            cVar.D0();
                        } else {
                            cVarG = d.g(cVar, jVar, I);
                        }
                    }
                    cVar.x();
                    break;
                case 2:
                    dVarH = d.h(cVar, jVar);
                    break;
                case 3:
                    gVar = cVar.I() == 1 ? n1.g.LINEAR : n1.g.RADIAL;
                    break;
                case 4:
                    fVarI = d.i(cVar, jVar);
                    break;
                case 5:
                    fVarI2 = d.i(cVar, jVar);
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
        return new n1.e(strX, gVar, fillType, cVarG, dVarH == null ? new m1.d(Collections.singletonList(new s1.a(100))) : dVarH, fVarI, fVarI2, null, null, zD);
    }
}
