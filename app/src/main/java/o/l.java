package o;

import o.d;

/* JADX INFO: loaded from: classes.dex */
public class l extends m {
    @Override // o.m
    public void H1(int i10, int i11, int i12, int i13) {
        int iE1 = E1() + F1();
        int iG1 = G1() + D1();
        if (this.W0 > 0) {
            iE1 += this.V0[0].Y();
            iG1 += this.V0[0].z();
        }
        int iMax = Math.max(K(), iE1);
        int iMax2 = Math.max(J(), iG1);
        if (i10 != 1073741824) {
            i11 = i10 == Integer.MIN_VALUE ? Math.min(iMax, i11) : i10 == 0 ? iMax : 0;
        }
        if (i12 != 1073741824) {
            i13 = i12 == Integer.MIN_VALUE ? Math.min(iMax2, i13) : i12 == 0 ? iMax2 : 0;
        }
        M1(i11, i13);
        p1(i11);
        Q0(i13);
        L1(this.W0 > 0);
    }

    @Override // o.e
    public void g(l.d dVar, boolean z10) {
        super.g(dVar, z10);
        if (this.W0 > 0) {
            e eVar = this.V0[0];
            eVar.w0();
            d.a aVar = d.a.LEFT;
            eVar.j(aVar, this, aVar);
            d.a aVar2 = d.a.RIGHT;
            eVar.j(aVar2, this, aVar2);
            d.a aVar3 = d.a.TOP;
            eVar.j(aVar3, this, aVar3);
            d.a aVar4 = d.a.BOTTOM;
            eVar.j(aVar4, this, aVar4);
        }
    }
}
