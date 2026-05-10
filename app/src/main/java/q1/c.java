package q1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a */
    private static final c.a f15280a = c.a.a("a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa");

    /* JADX INFO: renamed from: b */
    private static final c.a f15281b = c.a.a("k");

    private static boolean a(m1.e eVar) {
        return eVar == null || (eVar.c() && ((PointF) ((s1.a) eVar.b().get(0)).f15504b).equals(0.0f, 0.0f));
    }

    private static boolean b(m1.m mVar) {
        return mVar == null || (!(mVar instanceof m1.i) && mVar.c() && ((PointF) ((s1.a) mVar.b().get(0)).f15504b).equals(0.0f, 0.0f));
    }

    private static boolean c(m1.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((s1.a) bVar.b().get(0)).f15504b).floatValue() == 0.0f);
    }

    private static boolean d(m1.g gVar) {
        return gVar == null || (gVar.c() && ((s1.d) ((s1.a) gVar.b().get(0)).f15504b).a(1.0f, 1.0f));
    }

    private static boolean e(m1.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((s1.a) bVar.b().get(0)).f15504b).floatValue() == 0.0f);
    }

    private static boolean f(m1.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((s1.a) bVar.b().get(0)).f15504b).floatValue() == 0.0f);
    }

    public static m1.l g(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        boolean z10;
        boolean z11 = false;
        boolean z12 = cVar.b0() == c.b.BEGIN_OBJECT;
        if (z12) {
            cVar.k();
        }
        m1.b bVar = null;
        m1.e eVarA = null;
        m1.m mVarB = null;
        m1.g gVarJ = null;
        m1.b bVarF = null;
        m1.b bVarF2 = null;
        m1.d dVarH = null;
        m1.b bVarF3 = null;
        m1.b bVarF4 = null;
        while (cVar.B()) {
            switch (cVar.v0(f15280a)) {
                case 0:
                    boolean z13 = z11;
                    cVar.k();
                    while (cVar.B()) {
                        if (cVar.v0(f15281b) != 0) {
                            cVar.x0();
                            cVar.D0();
                        } else {
                            eVarA = a.a(cVar, jVar);
                        }
                    }
                    cVar.x();
                    z11 = z13;
                    continue;
                case 1:
                    mVarB = a.b(cVar, jVar);
                    continue;
                case 2:
                    gVarJ = d.j(cVar, jVar);
                    continue;
                case 3:
                    jVar.a("Lottie doesn't support 3D layers.");
                    break;
                case 4:
                    break;
                case 5:
                    dVarH = d.h(cVar, jVar);
                    continue;
                case 6:
                    bVarF3 = d.f(cVar, jVar, z11);
                    continue;
                case 7:
                    bVarF4 = d.f(cVar, jVar, z11);
                    continue;
                case 8:
                    bVarF = d.f(cVar, jVar, z11);
                    continue;
                case 9:
                    bVarF2 = d.f(cVar, jVar, z11);
                    continue;
                default:
                    cVar.x0();
                    cVar.D0();
                    continue;
            }
            m1.b bVarF5 = d.f(cVar, jVar, z11);
            if (bVarF5.b().isEmpty()) {
                bVarF5.b().add(new s1.a(jVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(jVar.f())));
            } else {
                if (((s1.a) bVarF5.b().get(0)).f15504b == null) {
                    z10 = false;
                    bVarF5.b().set(0, new s1.a(jVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(jVar.f())));
                }
                z11 = z10;
                bVar = bVarF5;
            }
            z10 = false;
            z11 = z10;
            bVar = bVarF5;
        }
        if (z12) {
            cVar.x();
        }
        m1.e eVar = a(eVarA) ? null : eVarA;
        m1.m mVar = b(mVarB) ? null : mVarB;
        m1.b bVar2 = c(bVar) ? null : bVar;
        if (d(gVarJ)) {
            gVarJ = null;
        }
        return new m1.l(eVar, mVar, gVarJ, bVar2, dVarH, bVarF3, bVarF4, f(bVarF) ? null : bVarF, e(bVarF2) ? null : bVarF2);
    }
}
