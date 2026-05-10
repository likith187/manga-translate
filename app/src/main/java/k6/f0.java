package k6;

import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12928a = c.a.a("nm", "r", "hd");

    static h6.m a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        boolean zD = false;
        String strX = null;
        g6.b bVarF = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12928a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                bVarF = d.f(cVar, aVar, true);
            } else if (iV0 != 2) {
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        if (zD) {
            return null;
        }
        return new h6.m(strX, bVarF);
    }
}
