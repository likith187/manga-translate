package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15312a = c.a.a("fFamily", "fName", "fStyle", "ascent");

    static l1.c a(com.airbnb.lottie.parser.moshi.c cVar) {
        cVar.k();
        String strX = null;
        String strX2 = null;
        float fG = 0.0f;
        String strX3 = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15312a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                strX3 = cVar.X();
            } else if (iV0 == 2) {
                strX2 = cVar.X();
            } else if (iV0 != 3) {
                cVar.x0();
                cVar.D0();
            } else {
                fG = (float) cVar.G();
            }
        }
        cVar.x();
        return new l1.c(strX, strX3, strX2, fG);
    }
}
