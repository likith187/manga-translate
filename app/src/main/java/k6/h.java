package k6;

import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12929a = c.a.a("ty", "d");

    static h6.c a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        h6.c cVarA;
        String strX;
        cVar.k();
        int I = 2;
        while (true) {
            cVarA = null;
            if (!cVar.B()) {
                strX = null;
                break;
            }
            int iV0 = cVar.v0(f12929a);
            if (iV0 == 0) {
                strX = cVar.X();
                break;
            }
            if (iV0 != 1) {
                cVar.x0();
                cVar.D0();
            } else {
                I = cVar.I();
            }
        }
        if (strX == null) {
            return null;
        }
        switch (strX) {
            case "el":
                cVarA = f.a(cVar, aVar, I);
                break;
            case "fl":
                cVarA = i0.a(cVar, aVar);
                break;
            case "gf":
                cVarA = q.a(cVar, aVar);
                break;
            case "gr":
                cVarA = j0.a(cVar, aVar);
                break;
            case "gs":
                cVarA = r.a(cVar, aVar);
                break;
            case "mm":
                cVarA = y.a(cVar);
                aVar.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                break;
            case "rc":
                cVarA = d0.a(cVar, aVar);
                break;
            case "rd":
                cVarA = f0.a(cVar, aVar);
                break;
            case "rp":
                cVarA = e0.a(cVar, aVar);
                break;
            case "sh":
                cVarA = k0.a(cVar, aVar);
                break;
            case "sr":
                cVarA = c0.a(cVar, aVar, I);
                break;
            case "st":
                cVarA = l0.a(cVar, aVar);
                break;
            case "tm":
                cVarA = m0.a(cVar, aVar);
                break;
            case "tr":
                cVarA = c.g(cVar, aVar);
                break;
            default:
                l6.e.c("Unknown shape type " + strX);
                break;
        }
        while (cVar.B()) {
            cVar.D0();
        }
        cVar.x();
        return cVarA;
    }
}
