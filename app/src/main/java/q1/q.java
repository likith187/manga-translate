package q1;

import com.airbnb.lottie.parser.moshi.c;
import java.util.ArrayList;
import java.util.Collections;
import n1.s;

/* JADX INFO: loaded from: classes.dex */
abstract class q {

    /* JADX INFO: renamed from: a */
    private static final c.a f15316a = c.a.a("nm", "g", "o", "t", "s", "e", "w", "lc", "lj", "ml", "hd", "d");

    /* JADX INFO: renamed from: b */
    private static final c.a f15317b = c.a.a("p", "k");

    /* JADX INFO: renamed from: c */
    private static final c.a f15318c = c.a.a("n", "v");

    static n1.f a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        String str;
        m1.c cVar2;
        ArrayList arrayList = new ArrayList();
        float fG = 0.0f;
        String strX = null;
        n1.g gVar = null;
        m1.c cVarG = null;
        m1.f fVarI = null;
        m1.f fVarI2 = null;
        m1.b bVarE = null;
        s.b bVar = null;
        s.c cVar3 = null;
        m1.b bVar2 = null;
        boolean zD = false;
        m1.d dVar = null;
        while (cVar.B()) {
            switch (cVar.v0(f15316a)) {
                case 0:
                    strX = cVar.X();
                    continue;
                case 1:
                    str = strX;
                    cVar.k();
                    int I = -1;
                    while (cVar.B()) {
                        int iV0 = cVar.v0(f15317b);
                        if (iV0 != 0) {
                            cVar2 = cVarG;
                            if (iV0 != 1) {
                                cVar.x0();
                                cVar.D0();
                            } else {
                                cVarG = d.g(cVar, jVar, I);
                            }
                        } else {
                            cVar2 = cVarG;
                            I = cVar.I();
                        }
                        cVarG = cVar2;
                    }
                    cVar.x();
                    break;
                case 2:
                    dVar = d.h(cVar, jVar);
                    continue;
                case 3:
                    str = strX;
                    gVar = cVar.I() == 1 ? n1.g.LINEAR : n1.g.RADIAL;
                    break;
                case 4:
                    fVarI = d.i(cVar, jVar);
                    continue;
                case 5:
                    fVarI2 = d.i(cVar, jVar);
                    continue;
                case 6:
                    bVarE = d.e(cVar, jVar);
                    continue;
                case 7:
                    str = strX;
                    bVar = s.b.values()[cVar.I() - 1];
                    break;
                case 8:
                    str = strX;
                    cVar3 = s.c.values()[cVar.I() - 1];
                    break;
                case 9:
                    str = strX;
                    fG = (float) cVar.G();
                    break;
                case 10:
                    zD = cVar.D();
                    continue;
                case 11:
                    cVar.i();
                    while (cVar.B()) {
                        cVar.k();
                        String strX2 = null;
                        m1.b bVarE2 = null;
                        while (cVar.B()) {
                            int iV02 = cVar.v0(f15318c);
                            if (iV02 != 0) {
                                m1.b bVar3 = bVar2;
                                if (iV02 != 1) {
                                    cVar.x0();
                                    cVar.D0();
                                } else {
                                    bVarE2 = d.e(cVar, jVar);
                                }
                                bVar2 = bVar3;
                            } else {
                                strX2 = cVar.X();
                            }
                        }
                        m1.b bVar4 = bVar2;
                        cVar.x();
                        if (strX2.equals("o")) {
                            bVar2 = bVarE2;
                        } else {
                            if (strX2.equals("d") || strX2.equals("g")) {
                                jVar.u(true);
                                arrayList.add(bVarE2);
                            }
                            bVar2 = bVar4;
                        }
                    }
                    m1.b bVar5 = bVar2;
                    cVar.v();
                    if (arrayList.size() == 1) {
                        arrayList.add((m1.b) arrayList.get(0));
                    }
                    bVar2 = bVar5;
                    continue;
                default:
                    cVar.x0();
                    cVar.D0();
                    continue;
            }
            strX = str;
        }
        String str2 = strX;
        if (dVar == null) {
            dVar = new m1.d(Collections.singletonList(new s1.a(100)));
        }
        return new n1.f(str2, gVar, cVarG, dVar, fVarI, fVarI2, bVarE, bVar, cVar3, fG, arrayList, bVar2, zD);
    }
}
