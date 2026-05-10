package o;

import o.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a */
    static boolean[] f14286a = new boolean[3];

    static void a(f fVar, l.d dVar, e eVar) {
        eVar.f14207t = -1;
        eVar.f14209u = -1;
        e.b bVar = fVar.f14172b0[0];
        e.b bVar2 = e.b.WRAP_CONTENT;
        if (bVar != bVar2 && eVar.f14172b0[0] == e.b.MATCH_PARENT) {
            int i10 = eVar.Q.f14166g;
            int iY = fVar.Y() - eVar.S.f14166g;
            d dVar2 = eVar.Q;
            dVar2.f14168i = dVar.q(dVar2);
            d dVar3 = eVar.S;
            dVar3.f14168i = dVar.q(dVar3);
            dVar.f(eVar.Q.f14168i, i10);
            dVar.f(eVar.S.f14168i, iY);
            eVar.f14207t = 2;
            eVar.T0(i10, iY);
        }
        if (fVar.f14172b0[1] == bVar2 || eVar.f14172b0[1] != e.b.MATCH_PARENT) {
            return;
        }
        int i11 = eVar.R.f14166g;
        int iZ = fVar.z() - eVar.T.f14166g;
        d dVar4 = eVar.R;
        dVar4.f14168i = dVar.q(dVar4);
        d dVar5 = eVar.T;
        dVar5.f14168i = dVar.q(dVar5);
        dVar.f(eVar.R.f14168i, i11);
        dVar.f(eVar.T.f14168i, iZ);
        if (eVar.f14196n0 > 0 || eVar.X() == 8) {
            d dVar6 = eVar.U;
            dVar6.f14168i = dVar.q(dVar6);
            dVar.f(eVar.U.f14168i, eVar.f14196n0 + i11);
        }
        eVar.f14209u = 2;
        eVar.k1(i11, iZ);
    }

    public static final boolean b(int i10, int i11) {
        return (i10 & i11) == i11;
    }
}
