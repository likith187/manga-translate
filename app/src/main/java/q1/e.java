package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15284a = c.a.a("ef");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.a f15285b = c.a.a("ty", "v");

    private static n1.a a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        cVar.k();
        n1.a aVar = null;
        while (true) {
            boolean z10 = false;
            while (cVar.B()) {
                int iV0 = cVar.v0(f15285b);
                if (iV0 != 0) {
                    if (iV0 != 1) {
                        cVar.x0();
                        cVar.D0();
                    } else if (z10) {
                        aVar = new n1.a(d.e(cVar, jVar));
                    } else {
                        cVar.D0();
                    }
                } else if (cVar.I() == 0) {
                    z10 = true;
                }
            }
            cVar.x();
            return aVar;
        }
    }

    static n1.a b(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        n1.a aVar = null;
        while (cVar.B()) {
            if (cVar.v0(f15284a) != 0) {
                cVar.x0();
                cVar.D0();
            } else {
                cVar.i();
                while (cVar.B()) {
                    n1.a aVarA = a(cVar, jVar);
                    if (aVarA != null) {
                        aVar = aVarA;
                    }
                }
                cVar.v();
            }
        }
        return aVar;
    }
}
