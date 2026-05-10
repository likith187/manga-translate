package q1;

import android.graphics.Path;
import com.airbnb.lottie.parser.moshi.c;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
abstract class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15292a = c.a.a("nm", "c", "o", "fillEnabled", "r", "hd");

    static n1.p a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        m1.d dVar = null;
        String strX = null;
        m1.a aVarC = null;
        boolean zD = false;
        boolean zD2 = false;
        int I = 1;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15292a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                aVarC = d.c(cVar, jVar);
            } else if (iV0 == 2) {
                dVar = d.h(cVar, jVar);
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
            dVar = new m1.d(Collections.singletonList(new s1.a(100)));
        }
        return new n1.p(strX, zD, I == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, aVarC, dVar, zD2);
    }
}
