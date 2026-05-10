package k6;

import h6.h;

/* JADX INFO: loaded from: classes2.dex */
abstract class x {
    static h6.h a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        String strN;
        cVar.k();
        h.a aVar2 = null;
        g6.h hVarK = null;
        g6.d dVarH = null;
        boolean zD = false;
        while (cVar.B()) {
            strN = cVar.N();
            strN.hashCode();
            switch (strN) {
                case "o":
                    dVarH = d.h(cVar, aVar);
                    break;
                case "pt":
                    hVarK = d.k(cVar, aVar);
                    break;
                case "inv":
                    zD = cVar.D();
                    break;
                case "mode":
                    String strX = cVar.X();
                    strX.hashCode();
                    switch (strX) {
                        case "a":
                            aVar2 = h.a.MASK_MODE_ADD;
                            break;
                        case "i":
                            aVar.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                            aVar2 = h.a.MASK_MODE_INTERSECT;
                            break;
                        case "n":
                            aVar2 = h.a.MASK_MODE_NONE;
                            break;
                        case "s":
                            aVar2 = h.a.MASK_MODE_SUBTRACT;
                            break;
                        default:
                            l6.e.c("Unknown mask mode " + strN + ". Defaulting to Add.");
                            aVar2 = h.a.MASK_MODE_ADD;
                            break;
                    }
                    break;
                default:
                    cVar.D0();
                    break;
            }
        }
        cVar.x();
        return new h6.h(aVar2, hVarK, dVarH, zD);
    }
}
