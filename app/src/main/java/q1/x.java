package q1;

import n1.i;

/* JADX INFO: loaded from: classes.dex */
abstract class x {
    static n1.i a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        String strN;
        cVar.k();
        i.a aVar = null;
        m1.h hVarK = null;
        m1.d dVarH = null;
        boolean zD = false;
        while (cVar.B()) {
            strN = cVar.N();
            strN.hashCode();
            switch (strN) {
                case "o":
                    dVarH = d.h(cVar, jVar);
                    break;
                case "pt":
                    hVarK = d.k(cVar, jVar);
                    break;
                case "inv":
                    zD = cVar.D();
                    break;
                case "mode":
                    String strX = cVar.X();
                    strX.hashCode();
                    switch (strX) {
                        case "a":
                            aVar = i.a.MASK_MODE_ADD;
                            break;
                        case "i":
                            jVar.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                            aVar = i.a.MASK_MODE_INTERSECT;
                            break;
                        case "n":
                            aVar = i.a.MASK_MODE_NONE;
                            break;
                        case "s":
                            aVar = i.a.MASK_MODE_SUBTRACT;
                            break;
                        default:
                            r1.d.c("Unknown mask mode " + strN + ". Defaulting to Add.");
                            aVar = i.a.MASK_MODE_ADD;
                            break;
                    }
                    break;
                default:
                    cVar.D0();
                    break;
            }
        }
        cVar.x();
        return new n1.i(aVar, hVarK, dVarH, zD);
    }
}
