package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15289a = c.a.a("ty", "d");

    static n1.c a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        n1.c cVarA;
        String strX;
        cVar.k();
        int I = 2;
        while (true) {
            cVarA = null;
            if (!cVar.B()) {
                strX = null;
                break;
            }
            int iV0 = cVar.v0(f15289a);
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
                cVarA = f.a(cVar, jVar, I);
                break;
            case "fl":
                cVarA = i0.a(cVar, jVar);
                break;
            case "gf":
                cVarA = p.a(cVar, jVar);
                break;
            case "gr":
                cVarA = j0.a(cVar, jVar);
                break;
            case "gs":
                cVarA = q.a(cVar, jVar);
                break;
            case "mm":
                cVarA = y.a(cVar);
                jVar.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                break;
            case "rc":
                cVarA = d0.a(cVar, jVar);
                break;
            case "rd":
                cVarA = f0.a(cVar, jVar);
                break;
            case "rp":
                cVarA = e0.a(cVar, jVar);
                break;
            case "sh":
                cVarA = k0.a(cVar, jVar);
                break;
            case "sr":
                cVarA = c0.a(cVar, jVar, I);
                break;
            case "st":
                cVarA = l0.a(cVar, jVar);
                break;
            case "tm":
                cVarA = m0.a(cVar, jVar);
                break;
            case "tr":
                cVarA = c.g(cVar, jVar);
                break;
            default:
                r1.d.c("Unknown shape type " + strX);
                break;
        }
        while (cVar.B()) {
            cVar.D0();
        }
        cVar.x();
        return cVarA;
    }
}
