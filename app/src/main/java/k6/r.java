package k6;

import com.oplus.anim.parser.moshi.c;
import h6.r;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
abstract class r {

    /* JADX INFO: renamed from: a */
    private static final c.a f12960a = c.a.a("nm", "g", "o", "t", "s", "e", "w", "lc", "lj", "ml", "hd", "d");

    /* JADX INFO: renamed from: b */
    private static final c.a f12961b = c.a.a("p", "k");

    /* JADX INFO: renamed from: c */
    private static final c.a f12962c = c.a.a("n", "v");

    static h6.f a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        String str;
        g6.c cVar2;
        ArrayList arrayList = new ArrayList();
        float fG = 0.0f;
        String strX = null;
        h6.g gVar = null;
        g6.c cVarG = null;
        g6.f fVarI = null;
        g6.f fVarI2 = null;
        g6.b bVarE = null;
        r.b bVar = null;
        r.c cVar3 = null;
        g6.b bVar2 = null;
        boolean zD = false;
        g6.d dVar = null;
        while (cVar.B()) {
            switch (cVar.v0(f12960a)) {
                case 0:
                    strX = cVar.X();
                    continue;
                case 1:
                    str = strX;
                    cVar.k();
                    int I = -1;
                    while (cVar.B()) {
                        int iV0 = cVar.v0(f12961b);
                        if (iV0 != 0) {
                            cVar2 = cVarG;
                            if (iV0 != 1) {
                                cVar.x0();
                                cVar.D0();
                            } else {
                                cVarG = d.g(cVar, aVar, I);
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
                    dVar = d.h(cVar, aVar);
                    continue;
                case 3:
                    str = strX;
                    gVar = cVar.I() == 1 ? h6.g.LINEAR : h6.g.RADIAL;
                    break;
                case 4:
                    fVarI = d.i(cVar, aVar);
                    continue;
                case 5:
                    fVarI2 = d.i(cVar, aVar);
                    continue;
                case 6:
                    bVarE = d.e(cVar, aVar);
                    continue;
                case 7:
                    str = strX;
                    bVar = r.b.values()[cVar.I() - 1];
                    break;
                case 8:
                    str = strX;
                    cVar3 = r.c.values()[cVar.I() - 1];
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
                        g6.b bVarE2 = null;
                        while (cVar.B()) {
                            int iV02 = cVar.v0(f12962c);
                            if (iV02 != 0) {
                                g6.b bVar3 = bVar2;
                                if (iV02 != 1) {
                                    cVar.x0();
                                    cVar.D0();
                                } else {
                                    bVarE2 = d.e(cVar, aVar);
                                }
                                bVar2 = bVar3;
                            } else {
                                strX2 = cVar.X();
                            }
                        }
                        g6.b bVar4 = bVar2;
                        cVar.x();
                        if (strX2.equals("o")) {
                            bVar2 = bVarE2;
                        } else {
                            if (strX2.equals("d") || strX2.equals("g")) {
                                aVar.u(true);
                                arrayList.add(bVarE2);
                            }
                            bVar2 = bVar4;
                        }
                    }
                    g6.b bVar5 = bVar2;
                    cVar.v();
                    if (arrayList.size() == 1) {
                        arrayList.add((g6.b) arrayList.get(0));
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
            dVar = new g6.d(Collections.singletonList(new m6.c(100)));
        }
        return new h6.f(str2, gVar, cVarG, dVar, fVarI, fVarI2, bVarE, bVar, cVar3, fG, arrayList, bVar2, zD);
    }
}
