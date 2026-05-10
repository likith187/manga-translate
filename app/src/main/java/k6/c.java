package k6;

import android.graphics.PointF;
import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a */
    private static final c.a f12920a = c.a.a("a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa");

    /* JADX INFO: renamed from: b */
    private static final c.a f12921b = c.a.a("k");

    private static boolean a(g6.e eVar) {
        return eVar == null || (eVar.c() && ((PointF) ((m6.c) eVar.b().get(0)).f13847b).equals(0.0f, 0.0f));
    }

    private static boolean b(g6.m mVar) {
        return mVar == null || (!(mVar instanceof g6.i) && mVar.c() && ((PointF) ((m6.c) mVar.b().get(0)).f13847b).equals(0.0f, 0.0f));
    }

    private static boolean c(g6.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((m6.c) bVar.b().get(0)).f13847b).floatValue() == 0.0f);
    }

    private static boolean d(g6.g gVar) {
        return gVar == null || (gVar.c() && ((m6.d) ((m6.c) gVar.b().get(0)).f13847b).a(1.0f, 1.0f));
    }

    private static boolean e(g6.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((m6.c) bVar.b().get(0)).f13847b).floatValue() == 0.0f);
    }

    private static boolean f(g6.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((m6.c) bVar.b().get(0)).f13847b).floatValue() == 0.0f);
    }

    public static g6.l g(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        boolean z13 = cVar.b0() == c.b.BEGIN_OBJECT;
        if (z13) {
            cVar.k();
        }
        g6.b bVar = null;
        g6.e eVarA = null;
        g6.m mVarB = null;
        g6.g gVarJ = null;
        g6.b bVarF = null;
        g6.b bVarF2 = null;
        g6.d dVarH = null;
        g6.b bVarF3 = null;
        g6.b bVarF4 = null;
        while (cVar.B()) {
            switch (cVar.v0(f12920a)) {
                case 0:
                    z10 = z12;
                    cVar.k();
                    while (cVar.B()) {
                        if (cVar.v0(f12921b) != 0) {
                            cVar.x0();
                            cVar.D0();
                        } else {
                            eVarA = a.a(cVar, aVar);
                        }
                    }
                    cVar.x();
                    break;
                case 1:
                    mVarB = a.b(cVar, aVar);
                    continue;
                case 2:
                    gVarJ = d.j(cVar, aVar);
                    continue;
                case 3:
                    z10 = z12;
                    aVar.a("EffectiveAnimation doesn't support 3D layers.");
                    break;
                case 4:
                    g6.b bVarF5 = d.f(cVar, aVar, z12);
                    if (!bVarF5.b().isEmpty()) {
                        if (((m6.c) bVarF5.b().get(0)).f13847b == null) {
                            z11 = false;
                            bVarF5.b().set(0, new m6.c(aVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(aVar.f())));
                        }
                        z12 = z11;
                        bVar = bVarF5;
                        continue;
                    } else {
                        bVarF5.b().add(new m6.c(aVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(aVar.f())));
                    }
                    z11 = false;
                    z12 = z11;
                    bVar = bVarF5;
                    continue;
                case 5:
                    dVarH = d.h(cVar, aVar);
                    continue;
                case 6:
                    bVarF3 = d.f(cVar, aVar, z12);
                    continue;
                case 7:
                    bVarF4 = d.f(cVar, aVar, z12);
                    continue;
                case 8:
                    bVarF = d.f(cVar, aVar, z12);
                    continue;
                case 9:
                    bVarF2 = d.f(cVar, aVar, z12);
                    continue;
                default:
                    cVar.x0();
                    cVar.D0();
                    z10 = z12;
                    break;
            }
            z12 = z10;
        }
        if (z13) {
            cVar.x();
        }
        g6.e eVar = a(eVarA) ? null : eVarA;
        g6.m mVar = b(mVarB) ? null : mVarB;
        g6.b bVar2 = c(bVar) ? null : bVar;
        if (d(gVarJ)) {
            gVarJ = null;
        }
        return new g6.l(eVar, mVar, gVarJ, bVar2, dVarH, bVarF3, bVarF4, f(bVarF) ? null : bVarF, e(bVarF2) ? null : bVarF2);
    }
}
