package k6;

import android.graphics.Path;
import com.oplus.anim.parser.moshi.c;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
abstract class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12932a = c.a.a("nm", "c", "o", "fillEnabled", "r", "hd");

    static h6.o a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        g6.d dVar = null;
        String strX = null;
        g6.a aVarC = null;
        boolean zD = false;
        boolean zD2 = false;
        int I = 1;
        while (cVar.B()) {
            int iV0 = cVar.v0(f12932a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                aVarC = d.c(cVar, aVar);
            } else if (iV0 == 2) {
                dVar = d.h(cVar, aVar);
            } else if (iV0 == 3) {
                zD = cVar.D();
            } else if (iV0 == 4) {
                I = cVar.I();
            } else if (iV0 != 5) {
                cVar.x0();
                cVar.D0();
            } else {
                zD2 = cVar.D();
            }
        }
        if (dVar == null) {
            dVar = new g6.d(Collections.singletonList(new m6.c(100)));
        }
        return new h6.o(strX, zD, I == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, aVarC, dVar, zD2);
    }
}
