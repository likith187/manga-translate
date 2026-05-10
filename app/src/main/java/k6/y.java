package k6;

import com.oplus.anim.parser.moshi.c;
import h6.i;

/* JADX INFO: loaded from: classes2.dex */
abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12974a = c.a.a("nm", "mm", "hd");

    static h6.i a(com.oplus.anim.parser.moshi.c cVar) {
        String strX = null;
        boolean zD = false;
        i.a aVarForId = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12974a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                aVarForId = i.a.forId(cVar.I());
            } else if (iV0 != 2) {
                cVar.x0();
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        return new h6.i(strX, aVarForId, zD);
    }
}
