package k6;

import com.oplus.anim.parser.moshi.c;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
abstract class j0 {

    /* JADX INFO: renamed from: a */
    private static final c.a f12938a = c.a.a("nm", "hd", "it");

    static h6.p a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        ArrayList arrayList = new ArrayList();
        String strX = null;
        boolean zD = false;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12938a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                zD = cVar.D();
            } else if (iV0 != 2) {
                cVar.D0();
            } else {
                cVar.i();
                while (cVar.B()) {
                    h6.c cVarA = h.a(cVar, aVar);
                    if (cVarA != null) {
                        arrayList.add(cVarA);
                    }
                }
                cVar.v();
            }
        }
        return new h6.p(strX, arrayList, zD);
    }
}
