package k6;

import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12956a = c.a.a("fFamily", "fName", "fStyle", "ascent");

    static f6.d a(com.oplus.anim.parser.moshi.c cVar) {
        cVar.k();
        String strX = null;
        String strX2 = null;
        float fG = 0.0f;
        String strX3 = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12956a);
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
        return new f6.d(strX, strX3, strX2, fG);
    }
}
