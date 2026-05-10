package p;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import o.e;
import p.b;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o.f f15074a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o.f f15077d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f15075b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f15076c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList f15078e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList f15079f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b.InterfaceC0199b f15080g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b.a f15081h = new b.a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ArrayList f15082i = new ArrayList();

    public e(o.f fVar) {
        this.f15074a = fVar;
        this.f15077d = fVar;
    }

    private void a(f fVar, int i10, int i11, f fVar2, ArrayList arrayList, m mVar) {
        p pVar = fVar.f15086d;
        if (pVar.f15128c == null) {
            o.f fVar3 = this.f15074a;
            if (pVar == fVar3.f14177e || pVar == fVar3.f14179f) {
                return;
            }
            if (mVar == null) {
                mVar = new m(pVar, i11);
                arrayList.add(mVar);
            }
            pVar.f15128c = mVar;
            mVar.a(pVar);
            for (d dVar : pVar.f15133h.f15093k) {
                if (dVar instanceof f) {
                    a((f) dVar, i10, 0, fVar2, arrayList, mVar);
                }
            }
            for (d dVar2 : pVar.f15134i.f15093k) {
                if (dVar2 instanceof f) {
                    a((f) dVar2, i10, 1, fVar2, arrayList, mVar);
                }
            }
            if (i10 == 1 && (pVar instanceof n)) {
                for (d dVar3 : ((n) pVar).f15109k.f15093k) {
                    if (dVar3 instanceof f) {
                        a((f) dVar3, i10, 2, fVar2, arrayList, mVar);
                    }
                }
            }
            for (f fVar4 : pVar.f15133h.f15094l) {
                if (fVar4 == fVar2) {
                    mVar.f15103b = true;
                }
                a(fVar4, i10, 0, fVar2, arrayList, mVar);
            }
            for (f fVar5 : pVar.f15134i.f15094l) {
                if (fVar5 == fVar2) {
                    mVar.f15103b = true;
                }
                a(fVar5, i10, 1, fVar2, arrayList, mVar);
            }
            if (i10 == 1 && (pVar instanceof n)) {
                Iterator it = ((n) pVar).f15109k.f15094l.iterator();
                while (it.hasNext()) {
                    a((f) it.next(), i10, 2, fVar2, arrayList, mVar);
                }
            }
        }
    }

    private boolean b(o.f fVar) {
        int iY;
        e.b bVar;
        int iZ;
        e.b bVar2;
        e.b bVar3;
        e.b bVar4;
        for (o.e eVar : fVar.V0) {
            e.b[] bVarArr = eVar.f14172b0;
            e.b bVar5 = bVarArr[0];
            e.b bVar6 = bVarArr[1];
            if (eVar.X() == 8) {
                eVar.f14169a = true;
            } else {
                if (eVar.B < 1.0f && bVar5 == e.b.MATCH_CONSTRAINT) {
                    eVar.f14213w = 2;
                }
                if (eVar.E < 1.0f && bVar6 == e.b.MATCH_CONSTRAINT) {
                    eVar.f14215x = 2;
                }
                if (eVar.x() > 0.0f) {
                    e.b bVar7 = e.b.MATCH_CONSTRAINT;
                    if (bVar5 == bVar7 && (bVar6 == e.b.WRAP_CONTENT || bVar6 == e.b.FIXED)) {
                        eVar.f14213w = 3;
                    } else if (bVar6 == bVar7 && (bVar5 == e.b.WRAP_CONTENT || bVar5 == e.b.FIXED)) {
                        eVar.f14215x = 3;
                    } else if (bVar5 == bVar7 && bVar6 == bVar7) {
                        if (eVar.f14213w == 0) {
                            eVar.f14213w = 3;
                        }
                        if (eVar.f14215x == 0) {
                            eVar.f14215x = 3;
                        }
                    }
                }
                e.b bVar8 = e.b.MATCH_CONSTRAINT;
                if (bVar5 == bVar8 && eVar.f14213w == 1 && (eVar.Q.f14165f == null || eVar.S.f14165f == null)) {
                    bVar5 = e.b.WRAP_CONTENT;
                }
                e.b bVar9 = bVar5;
                if (bVar6 == bVar8 && eVar.f14215x == 1 && (eVar.R.f14165f == null || eVar.T.f14165f == null)) {
                    bVar6 = e.b.WRAP_CONTENT;
                }
                e.b bVar10 = bVar6;
                l lVar = eVar.f14177e;
                lVar.f15129d = bVar9;
                int i10 = eVar.f14213w;
                lVar.f15126a = i10;
                n nVar = eVar.f14179f;
                nVar.f15129d = bVar10;
                int i11 = eVar.f14215x;
                nVar.f15126a = i11;
                e.b bVar11 = e.b.MATCH_PARENT;
                if ((bVar9 == bVar11 || bVar9 == e.b.FIXED || bVar9 == e.b.WRAP_CONTENT) && (bVar10 == bVar11 || bVar10 == e.b.FIXED || bVar10 == e.b.WRAP_CONTENT)) {
                    int iY2 = eVar.Y();
                    if (bVar9 == bVar11) {
                        iY = (fVar.Y() - eVar.Q.f14166g) - eVar.S.f14166g;
                        bVar = e.b.FIXED;
                    } else {
                        iY = iY2;
                        bVar = bVar9;
                    }
                    int iZ2 = eVar.z();
                    if (bVar10 == bVar11) {
                        iZ = (fVar.z() - eVar.R.f14166g) - eVar.T.f14166g;
                        bVar2 = e.b.FIXED;
                    } else {
                        iZ = iZ2;
                        bVar2 = bVar10;
                    }
                    l(eVar, bVar, iY, bVar2, iZ);
                    eVar.f14177e.f15130e.d(eVar.Y());
                    eVar.f14179f.f15130e.d(eVar.z());
                    eVar.f14169a = true;
                } else {
                    if (bVar9 == bVar8 && (bVar10 == (bVar4 = e.b.WRAP_CONTENT) || bVar10 == e.b.FIXED)) {
                        if (i10 == 3) {
                            if (bVar10 == bVar4) {
                                l(eVar, bVar4, 0, bVar4, 0);
                            }
                            int iZ3 = eVar.z();
                            int i12 = (int) ((iZ3 * eVar.f14180f0) + 0.5f);
                            e.b bVar12 = e.b.FIXED;
                            l(eVar, bVar12, i12, bVar12, iZ3);
                            eVar.f14177e.f15130e.d(eVar.Y());
                            eVar.f14179f.f15130e.d(eVar.z());
                            eVar.f14169a = true;
                        } else if (i10 == 1) {
                            l(eVar, bVar4, 0, bVar10, 0);
                            eVar.f14177e.f15130e.f15095m = eVar.Y();
                        } else if (i10 == 2) {
                            e.b bVar13 = fVar.f14172b0[0];
                            e.b bVar14 = e.b.FIXED;
                            if (bVar13 == bVar14 || bVar13 == bVar11) {
                                l(eVar, bVar14, (int) ((eVar.B * fVar.Y()) + 0.5f), bVar10, eVar.z());
                                eVar.f14177e.f15130e.d(eVar.Y());
                                eVar.f14179f.f15130e.d(eVar.z());
                                eVar.f14169a = true;
                            }
                        } else {
                            o.d[] dVarArr = eVar.Y;
                            if (dVarArr[0].f14165f == null || dVarArr[1].f14165f == null) {
                                l(eVar, bVar4, 0, bVar10, 0);
                                eVar.f14177e.f15130e.d(eVar.Y());
                                eVar.f14179f.f15130e.d(eVar.z());
                                eVar.f14169a = true;
                            }
                        }
                    }
                    if (bVar10 == bVar8 && (bVar9 == (bVar3 = e.b.WRAP_CONTENT) || bVar9 == e.b.FIXED)) {
                        if (i11 == 3) {
                            if (bVar9 == bVar3) {
                                l(eVar, bVar3, 0, bVar3, 0);
                            }
                            int iY3 = eVar.Y();
                            float f10 = eVar.f14180f0;
                            if (eVar.y() == -1) {
                                f10 = 1.0f / f10;
                            }
                            e.b bVar15 = e.b.FIXED;
                            l(eVar, bVar15, iY3, bVar15, (int) ((iY3 * f10) + 0.5f));
                            eVar.f14177e.f15130e.d(eVar.Y());
                            eVar.f14179f.f15130e.d(eVar.z());
                            eVar.f14169a = true;
                        } else if (i11 == 1) {
                            l(eVar, bVar9, 0, bVar3, 0);
                            eVar.f14179f.f15130e.f15095m = eVar.z();
                        } else if (i11 == 2) {
                            e.b bVar16 = fVar.f14172b0[1];
                            e.b bVar17 = e.b.FIXED;
                            if (bVar16 == bVar17 || bVar16 == bVar11) {
                                l(eVar, bVar9, eVar.Y(), bVar17, (int) ((eVar.E * fVar.z()) + 0.5f));
                                eVar.f14177e.f15130e.d(eVar.Y());
                                eVar.f14179f.f15130e.d(eVar.z());
                                eVar.f14169a = true;
                            }
                        } else {
                            o.d[] dVarArr2 = eVar.Y;
                            if (dVarArr2[2].f14165f == null || dVarArr2[3].f14165f == null) {
                                l(eVar, bVar3, 0, bVar10, 0);
                                eVar.f14177e.f15130e.d(eVar.Y());
                                eVar.f14179f.f15130e.d(eVar.z());
                                eVar.f14169a = true;
                            }
                        }
                    }
                    if (bVar9 == bVar8 && bVar10 == bVar8) {
                        if (i10 == 1 || i11 == 1) {
                            e.b bVar18 = e.b.WRAP_CONTENT;
                            l(eVar, bVar18, 0, bVar18, 0);
                            eVar.f14177e.f15130e.f15095m = eVar.Y();
                            eVar.f14179f.f15130e.f15095m = eVar.z();
                        } else if (i11 == 2 && i10 == 2) {
                            e.b[] bVarArr2 = fVar.f14172b0;
                            e.b bVar19 = bVarArr2[0];
                            e.b bVar20 = e.b.FIXED;
                            if (bVar19 == bVar20 && bVarArr2[1] == bVar20) {
                                l(eVar, bVar20, (int) ((eVar.B * fVar.Y()) + 0.5f), bVar20, (int) ((eVar.E * fVar.z()) + 0.5f));
                                eVar.f14177e.f15130e.d(eVar.Y());
                                eVar.f14179f.f15130e.d(eVar.z());
                                eVar.f14169a = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private int e(o.f fVar, int i10) {
        int size = this.f15082i.size();
        long jMax = 0;
        for (int i11 = 0; i11 < size; i11++) {
            jMax = Math.max(jMax, ((m) this.f15082i.get(i11)).b(fVar, i10));
        }
        return (int) jMax;
    }

    private void i(p pVar, int i10, ArrayList arrayList) {
        for (d dVar : pVar.f15133h.f15093k) {
            if (dVar instanceof f) {
                a((f) dVar, i10, 0, pVar.f15134i, arrayList, null);
            } else if (dVar instanceof p) {
                a(((p) dVar).f15133h, i10, 0, pVar.f15134i, arrayList, null);
            }
        }
        for (d dVar2 : pVar.f15134i.f15093k) {
            if (dVar2 instanceof f) {
                a((f) dVar2, i10, 1, pVar.f15133h, arrayList, null);
            } else if (dVar2 instanceof p) {
                a(((p) dVar2).f15134i, i10, 1, pVar.f15133h, arrayList, null);
            }
        }
        if (i10 == 1) {
            for (d dVar3 : ((n) pVar).f15109k.f15093k) {
                if (dVar3 instanceof f) {
                    a((f) dVar3, i10, 2, null, arrayList, null);
                }
            }
        }
    }

    private void l(o.e eVar, e.b bVar, int i10, e.b bVar2, int i11) {
        b.a aVar = this.f15081h;
        aVar.f15062a = bVar;
        aVar.f15063b = bVar2;
        aVar.f15064c = i10;
        aVar.f15065d = i11;
        this.f15080g.b(eVar, aVar);
        eVar.p1(this.f15081h.f15066e);
        eVar.Q0(this.f15081h.f15067f);
        eVar.P0(this.f15081h.f15069h);
        eVar.F0(this.f15081h.f15068g);
    }

    public void c() {
        d(this.f15078e);
        this.f15082i.clear();
        m.f15101h = 0;
        i(this.f15074a.f14177e, 0, this.f15082i);
        i(this.f15074a.f14179f, 1, this.f15082i);
        this.f15075b = false;
    }

    public void d(ArrayList arrayList) {
        arrayList.clear();
        this.f15077d.f14177e.f();
        this.f15077d.f14179f.f();
        arrayList.add(this.f15077d.f14177e);
        arrayList.add(this.f15077d.f14179f);
        HashSet hashSet = null;
        for (o.e eVar : this.f15077d.V0) {
            if (eVar instanceof o.h) {
                arrayList.add(new j(eVar));
            } else {
                if (eVar.k0()) {
                    if (eVar.f14173c == null) {
                        eVar.f14173c = new c(eVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(eVar.f14173c);
                } else {
                    arrayList.add(eVar.f14177e);
                }
                if (eVar.m0()) {
                    if (eVar.f14175d == null) {
                        eVar.f14175d = new c(eVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(eVar.f14175d);
                } else {
                    arrayList.add(eVar.f14179f);
                }
                if (eVar instanceof o.j) {
                    arrayList.add(new k(eVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((p) it.next()).f();
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            p pVar = (p) it2.next();
            if (pVar.f15127b != this.f15077d) {
                pVar.d();
            }
        }
    }

    public boolean f(boolean z10) {
        boolean z11;
        boolean z12 = false;
        if (this.f15075b || this.f15076c) {
            for (o.e eVar : this.f15074a.V0) {
                eVar.p();
                eVar.f14169a = false;
                eVar.f14177e.r();
                eVar.f14179f.q();
            }
            this.f15074a.p();
            o.f fVar = this.f15074a;
            fVar.f14169a = false;
            fVar.f14177e.r();
            this.f15074a.f14179f.q();
            this.f15076c = false;
        }
        if (b(this.f15077d)) {
            return false;
        }
        this.f15074a.r1(0);
        this.f15074a.s1(0);
        e.b bVarW = this.f15074a.w(0);
        e.b bVarW2 = this.f15074a.w(1);
        if (this.f15075b) {
            c();
        }
        int iZ = this.f15074a.Z();
        int iA0 = this.f15074a.a0();
        this.f15074a.f14177e.f15133h.d(iZ);
        this.f15074a.f14179f.f15133h.d(iA0);
        m();
        e.b bVar = e.b.WRAP_CONTENT;
        if (bVarW == bVar || bVarW2 == bVar) {
            if (z10) {
                Iterator it = this.f15078e.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (!((p) it.next()).m()) {
                        z10 = false;
                        break;
                    }
                }
            }
            if (z10 && bVarW == e.b.WRAP_CONTENT) {
                this.f15074a.U0(e.b.FIXED);
                o.f fVar2 = this.f15074a;
                fVar2.p1(e(fVar2, 0));
                o.f fVar3 = this.f15074a;
                fVar3.f14177e.f15130e.d(fVar3.Y());
            }
            if (z10 && bVarW2 == e.b.WRAP_CONTENT) {
                this.f15074a.l1(e.b.FIXED);
                o.f fVar4 = this.f15074a;
                fVar4.Q0(e(fVar4, 1));
                o.f fVar5 = this.f15074a;
                fVar5.f14179f.f15130e.d(fVar5.z());
            }
        }
        o.f fVar6 = this.f15074a;
        e.b bVar2 = fVar6.f14172b0[0];
        e.b bVar3 = e.b.FIXED;
        if (bVar2 == bVar3 || bVar2 == e.b.MATCH_PARENT) {
            int iY = fVar6.Y() + iZ;
            this.f15074a.f14177e.f15134i.d(iY);
            this.f15074a.f14177e.f15130e.d(iY - iZ);
            m();
            o.f fVar7 = this.f15074a;
            e.b bVar4 = fVar7.f14172b0[1];
            if (bVar4 == bVar3 || bVar4 == e.b.MATCH_PARENT) {
                int iZ2 = fVar7.z() + iA0;
                this.f15074a.f14179f.f15134i.d(iZ2);
                this.f15074a.f14179f.f15130e.d(iZ2 - iA0);
            }
            m();
            z11 = true;
        } else {
            z11 = false;
        }
        for (p pVar : this.f15078e) {
            if (pVar.f15127b != this.f15074a || pVar.f15132g) {
                pVar.e();
            }
        }
        Iterator it2 = this.f15078e.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z12 = true;
                break;
            }
            p pVar2 = (p) it2.next();
            if (z11 || pVar2.f15127b != this.f15074a) {
                if (!pVar2.f15133h.f15092j || ((!pVar2.f15134i.f15092j && !(pVar2 instanceof j)) || (!pVar2.f15130e.f15092j && !(pVar2 instanceof c) && !(pVar2 instanceof j)))) {
                    break;
                }
            }
        }
        this.f15074a.U0(bVarW);
        this.f15074a.l1(bVarW2);
        return z12;
    }

    public boolean g(boolean z10) {
        if (this.f15075b) {
            for (o.e eVar : this.f15074a.V0) {
                eVar.p();
                eVar.f14169a = false;
                l lVar = eVar.f14177e;
                lVar.f15130e.f15092j = false;
                lVar.f15132g = false;
                lVar.r();
                n nVar = eVar.f14179f;
                nVar.f15130e.f15092j = false;
                nVar.f15132g = false;
                nVar.q();
            }
            this.f15074a.p();
            o.f fVar = this.f15074a;
            fVar.f14169a = false;
            l lVar2 = fVar.f14177e;
            lVar2.f15130e.f15092j = false;
            lVar2.f15132g = false;
            lVar2.r();
            n nVar2 = this.f15074a.f14179f;
            nVar2.f15130e.f15092j = false;
            nVar2.f15132g = false;
            nVar2.q();
            c();
        }
        if (b(this.f15077d)) {
            return false;
        }
        this.f15074a.r1(0);
        this.f15074a.s1(0);
        this.f15074a.f14177e.f15133h.d(0);
        this.f15074a.f14179f.f15133h.d(0);
        return true;
    }

    public boolean h(boolean z10, int i10) {
        boolean z11;
        e.b bVar;
        boolean z12 = false;
        e.b bVarW = this.f15074a.w(0);
        e.b bVarW2 = this.f15074a.w(1);
        int iZ = this.f15074a.Z();
        int iA0 = this.f15074a.a0();
        if (z10 && (bVarW == (bVar = e.b.WRAP_CONTENT) || bVarW2 == bVar)) {
            Iterator it = this.f15078e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                p pVar = (p) it.next();
                if (pVar.f15131f == i10 && !pVar.m()) {
                    z10 = false;
                    break;
                }
            }
            if (i10 == 0) {
                if (z10 && bVarW == e.b.WRAP_CONTENT) {
                    this.f15074a.U0(e.b.FIXED);
                    o.f fVar = this.f15074a;
                    fVar.p1(e(fVar, 0));
                    o.f fVar2 = this.f15074a;
                    fVar2.f14177e.f15130e.d(fVar2.Y());
                }
            } else if (z10 && bVarW2 == e.b.WRAP_CONTENT) {
                this.f15074a.l1(e.b.FIXED);
                o.f fVar3 = this.f15074a;
                fVar3.Q0(e(fVar3, 1));
                o.f fVar4 = this.f15074a;
                fVar4.f14179f.f15130e.d(fVar4.z());
            }
        }
        if (i10 == 0) {
            o.f fVar5 = this.f15074a;
            e.b bVar2 = fVar5.f14172b0[0];
            if (bVar2 == e.b.FIXED || bVar2 == e.b.MATCH_PARENT) {
                int iY = fVar5.Y() + iZ;
                this.f15074a.f14177e.f15134i.d(iY);
                this.f15074a.f14177e.f15130e.d(iY - iZ);
                z11 = true;
            }
            z11 = false;
        } else {
            o.f fVar6 = this.f15074a;
            e.b bVar3 = fVar6.f14172b0[1];
            if (bVar3 == e.b.FIXED || bVar3 == e.b.MATCH_PARENT) {
                int iZ2 = fVar6.z() + iA0;
                this.f15074a.f14179f.f15134i.d(iZ2);
                this.f15074a.f14179f.f15130e.d(iZ2 - iA0);
                z11 = true;
            }
            z11 = false;
        }
        m();
        for (p pVar2 : this.f15078e) {
            if (pVar2.f15131f == i10 && (pVar2.f15127b != this.f15074a || pVar2.f15132g)) {
                pVar2.e();
            }
        }
        Iterator it2 = this.f15078e.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z12 = true;
                break;
            }
            p pVar3 = (p) it2.next();
            if (pVar3.f15131f == i10 && (z11 || pVar3.f15127b != this.f15074a)) {
                if (!pVar3.f15133h.f15092j || !pVar3.f15134i.f15092j || (!(pVar3 instanceof c) && !pVar3.f15130e.f15092j)) {
                    break;
                }
            }
        }
        this.f15074a.U0(bVarW);
        this.f15074a.l1(bVarW2);
        return z12;
    }

    public void j() {
        this.f15075b = true;
    }

    public void k() {
        this.f15076c = true;
    }

    public void m() {
        g gVar;
        for (o.e eVar : this.f15074a.V0) {
            if (!eVar.f14169a) {
                e.b[] bVarArr = eVar.f14172b0;
                boolean z10 = false;
                e.b bVar = bVarArr[0];
                e.b bVar2 = bVarArr[1];
                int i10 = eVar.f14213w;
                int i11 = eVar.f14215x;
                e.b bVar3 = e.b.WRAP_CONTENT;
                boolean z11 = bVar == bVar3 || (bVar == e.b.MATCH_CONSTRAINT && i10 == 1);
                if (bVar2 == bVar3 || (bVar2 == e.b.MATCH_CONSTRAINT && i11 == 1)) {
                    z10 = true;
                }
                g gVar2 = eVar.f14177e.f15130e;
                boolean z12 = gVar2.f15092j;
                g gVar3 = eVar.f14179f.f15130e;
                boolean z13 = gVar3.f15092j;
                if (z12 && z13) {
                    e.b bVar4 = e.b.FIXED;
                    l(eVar, bVar4, gVar2.f15089g, bVar4, gVar3.f15089g);
                    eVar.f14169a = true;
                } else if (z12 && z10) {
                    l(eVar, e.b.FIXED, gVar2.f15089g, bVar3, gVar3.f15089g);
                    if (bVar2 == e.b.MATCH_CONSTRAINT) {
                        eVar.f14179f.f15130e.f15095m = eVar.z();
                    } else {
                        eVar.f14179f.f15130e.d(eVar.z());
                        eVar.f14169a = true;
                    }
                } else if (z13 && z11) {
                    l(eVar, bVar3, gVar2.f15089g, e.b.FIXED, gVar3.f15089g);
                    if (bVar == e.b.MATCH_CONSTRAINT) {
                        eVar.f14177e.f15130e.f15095m = eVar.Y();
                    } else {
                        eVar.f14177e.f15130e.d(eVar.Y());
                        eVar.f14169a = true;
                    }
                }
                if (eVar.f14169a && (gVar = eVar.f14179f.f15110l) != null) {
                    gVar.d(eVar.r());
                }
            }
        }
    }

    public void n(b.InterfaceC0199b interfaceC0199b) {
        this.f15080g = interfaceC0199b;
    }
}
