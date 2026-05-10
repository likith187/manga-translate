package k6;

import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
abstract class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static c.a f12946a = c.a.a("nm", "ind", "ks", "hd");

    static h6.q a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        String strX = null;
        int I = 0;
        boolean zD = false;
        g6.h hVarK = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12946a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                I = cVar.I();
            } else if (iV0 == 2) {
                hVarK = d.k(cVar, aVar);
            } else if (iV0 != 3) {
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        return new h6.q(strX, I, hVarK, zD);
    }
}
