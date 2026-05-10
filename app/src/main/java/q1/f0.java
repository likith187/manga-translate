package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15288a = c.a.a("nm", "r", "hd");

    static n1.n a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        boolean zD = false;
        String strX = null;
        m1.b bVarF = null;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15288a);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                bVarF = d.f(cVar, jVar, true);
            } else if (iV0 != 2) {
                cVar.D0();
            } else {
                zD = cVar.D();
            }
        }
        if (zD) {
            return null;
        }
        return new n1.n(strX, bVarF);
    }
}
