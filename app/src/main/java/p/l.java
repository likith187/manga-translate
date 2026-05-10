package p;

import o.d;
import o.e;
import p.f;
import p.p;

/* JADX INFO: loaded from: classes.dex */
public class l extends p {

    /* JADX INFO: renamed from: k */
    private static int[] f15099k = new int[2];

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f15100a;

        static {
            int[] iArr = new int[p.b.values().length];
            f15100a = iArr;
            try {
                iArr[p.b.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15100a[p.b.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15100a[p.b.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public l(o.e eVar) {
        super(eVar);
        this.f15133h.f15087e = f.a.LEFT;
        this.f15134i.f15087e = f.a.RIGHT;
        this.f15131f = 0;
    }

    private void q(int[] iArr, int i10, int i11, int i12, int i13, float f10, int i14) {
        int i15 = i11 - i10;
        int i16 = i13 - i12;
        if (i14 != -1) {
            if (i14 == 0) {
                iArr[0] = (int) ((i16 * f10) + 0.5f);
                iArr[1] = i16;
                return;
            } else {
                if (i14 != 1) {
                    return;
                }
                iArr[0] = i15;
                iArr[1] = (int) ((i15 * f10) + 0.5f);
                return;
            }
        }
        int i17 = (int) ((i16 * f10) + 0.5f);
        int i18 = (int) ((i15 / f10) + 0.5f);
        if (i17 <= i15) {
            iArr[0] = i17;
            iArr[1] = i16;
        } else if (i18 <= i16) {
            iArr[0] = i15;
            iArr[1] = i18;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:314:0x02df  */
    @Override // p.p, p.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(p.d r17) {
        /*
            Method dump skipped, instruction units count: 1088
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p.l.a(p.d):void");
    }

    @Override // p.p
    void d() {
        o.e eVarM;
        o.e eVarM2;
        o.e eVar = this.f15127b;
        if (eVar.f14169a) {
            this.f15130e.d(eVar.Y());
        }
        if (this.f15130e.f15092j) {
            e.b bVar = this.f15129d;
            e.b bVar2 = e.b.MATCH_PARENT;
            if (bVar == bVar2 && (eVarM = this.f15127b.M()) != null && (eVarM.C() == e.b.FIXED || eVarM.C() == bVar2)) {
                b(this.f15133h, eVarM.f14177e.f15133h, this.f15127b.Q.f());
                b(this.f15134i, eVarM.f14177e.f15134i, -this.f15127b.S.f());
                return;
            }
        } else {
            e.b bVarC = this.f15127b.C();
            this.f15129d = bVarC;
            if (bVarC != e.b.MATCH_CONSTRAINT) {
                e.b bVar3 = e.b.MATCH_PARENT;
                if (bVarC == bVar3 && (eVarM2 = this.f15127b.M()) != null && (eVarM2.C() == e.b.FIXED || eVarM2.C() == bVar3)) {
                    int iY = (eVarM2.Y() - this.f15127b.Q.f()) - this.f15127b.S.f();
                    b(this.f15133h, eVarM2.f14177e.f15133h, this.f15127b.Q.f());
                    b(this.f15134i, eVarM2.f14177e.f15134i, -this.f15127b.S.f());
                    this.f15130e.d(iY);
                    return;
                }
                if (this.f15129d == e.b.FIXED) {
                    this.f15130e.d(this.f15127b.Y());
                }
            }
        }
        g gVar = this.f15130e;
        if (gVar.f15092j) {
            o.e eVar2 = this.f15127b;
            if (eVar2.f14169a) {
                o.d[] dVarArr = eVar2.Y;
                o.d dVar = dVarArr[0];
                o.d dVar2 = dVar.f14165f;
                if (dVar2 != null && dVarArr[1].f14165f != null) {
                    if (eVar2.k0()) {
                        this.f15133h.f15088f = this.f15127b.Y[0].f();
                        this.f15134i.f15088f = -this.f15127b.Y[1].f();
                        return;
                    }
                    f fVarH = h(this.f15127b.Y[0]);
                    if (fVarH != null) {
                        b(this.f15133h, fVarH, this.f15127b.Y[0].f());
                    }
                    f fVarH2 = h(this.f15127b.Y[1]);
                    if (fVarH2 != null) {
                        b(this.f15134i, fVarH2, -this.f15127b.Y[1].f());
                    }
                    this.f15133h.f15084b = true;
                    this.f15134i.f15084b = true;
                    return;
                }
                if (dVar2 != null) {
                    f fVarH3 = h(dVar);
                    if (fVarH3 != null) {
                        b(this.f15133h, fVarH3, this.f15127b.Y[0].f());
                        b(this.f15134i, this.f15133h, this.f15130e.f15089g);
                        return;
                    }
                    return;
                }
                o.d dVar3 = dVarArr[1];
                if (dVar3.f14165f != null) {
                    f fVarH4 = h(dVar3);
                    if (fVarH4 != null) {
                        b(this.f15134i, fVarH4, -this.f15127b.Y[1].f());
                        b(this.f15133h, this.f15134i, -this.f15130e.f15089g);
                        return;
                    }
                    return;
                }
                if ((eVar2 instanceof o.i) || eVar2.M() == null || this.f15127b.q(d.a.CENTER).f14165f != null) {
                    return;
                }
                b(this.f15133h, this.f15127b.M().f14177e.f15133h, this.f15127b.Z());
                b(this.f15134i, this.f15133h, this.f15130e.f15089g);
                return;
            }
        }
        if (this.f15129d == e.b.MATCH_CONSTRAINT) {
            o.e eVar3 = this.f15127b;
            int i10 = eVar3.f14213w;
            if (i10 == 2) {
                o.e eVarM3 = eVar3.M();
                if (eVarM3 != null) {
                    g gVar2 = eVarM3.f14179f.f15130e;
                    this.f15130e.f15094l.add(gVar2);
                    gVar2.f15093k.add(this.f15130e);
                    g gVar3 = this.f15130e;
                    gVar3.f15084b = true;
                    gVar3.f15093k.add(this.f15133h);
                    this.f15130e.f15093k.add(this.f15134i);
                }
            } else if (i10 == 3) {
                if (eVar3.f14215x == 3) {
                    this.f15133h.f15083a = this;
                    this.f15134i.f15083a = this;
                    n nVar = eVar3.f14179f;
                    nVar.f15133h.f15083a = this;
                    nVar.f15134i.f15083a = this;
                    gVar.f15083a = this;
                    if (eVar3.m0()) {
                        this.f15130e.f15094l.add(this.f15127b.f14179f.f15130e);
                        this.f15127b.f14179f.f15130e.f15093k.add(this.f15130e);
                        n nVar2 = this.f15127b.f14179f;
                        nVar2.f15130e.f15083a = this;
                        this.f15130e.f15094l.add(nVar2.f15133h);
                        this.f15130e.f15094l.add(this.f15127b.f14179f.f15134i);
                        this.f15127b.f14179f.f15133h.f15093k.add(this.f15130e);
                        this.f15127b.f14179f.f15134i.f15093k.add(this.f15130e);
                    } else if (this.f15127b.k0()) {
                        this.f15127b.f14179f.f15130e.f15094l.add(this.f15130e);
                        this.f15130e.f15093k.add(this.f15127b.f14179f.f15130e);
                    } else {
                        this.f15127b.f14179f.f15130e.f15094l.add(this.f15130e);
                    }
                } else {
                    g gVar4 = eVar3.f14179f.f15130e;
                    gVar.f15094l.add(gVar4);
                    gVar4.f15093k.add(this.f15130e);
                    this.f15127b.f14179f.f15133h.f15093k.add(this.f15130e);
                    this.f15127b.f14179f.f15134i.f15093k.add(this.f15130e);
                    g gVar5 = this.f15130e;
                    gVar5.f15084b = true;
                    gVar5.f15093k.add(this.f15133h);
                    this.f15130e.f15093k.add(this.f15134i);
                    this.f15133h.f15094l.add(this.f15130e);
                    this.f15134i.f15094l.add(this.f15130e);
                }
            }
        }
        o.e eVar4 = this.f15127b;
        o.d[] dVarArr2 = eVar4.Y;
        o.d dVar4 = dVarArr2[0];
        o.d dVar5 = dVar4.f14165f;
        if (dVar5 != null && dVarArr2[1].f14165f != null) {
            if (eVar4.k0()) {
                this.f15133h.f15088f = this.f15127b.Y[0].f();
                this.f15134i.f15088f = -this.f15127b.Y[1].f();
                return;
            }
            f fVarH5 = h(this.f15127b.Y[0]);
            f fVarH6 = h(this.f15127b.Y[1]);
            if (fVarH5 != null) {
                fVarH5.b(this);
            }
            if (fVarH6 != null) {
                fVarH6.b(this);
            }
            this.f15135j = p.b.CENTER;
            return;
        }
        if (dVar5 != null) {
            f fVarH7 = h(dVar4);
            if (fVarH7 != null) {
                b(this.f15133h, fVarH7, this.f15127b.Y[0].f());
                c(this.f15134i, this.f15133h, 1, this.f15130e);
                return;
            }
            return;
        }
        o.d dVar6 = dVarArr2[1];
        if (dVar6.f14165f != null) {
            f fVarH8 = h(dVar6);
            if (fVarH8 != null) {
                b(this.f15134i, fVarH8, -this.f15127b.Y[1].f());
                c(this.f15133h, this.f15134i, -1, this.f15130e);
                return;
            }
            return;
        }
        if ((eVar4 instanceof o.i) || eVar4.M() == null) {
            return;
        }
        b(this.f15133h, this.f15127b.M().f14177e.f15133h, this.f15127b.Z());
        c(this.f15134i, this.f15133h, 1, this.f15130e);
    }

    @Override // p.p
    public void e() {
        f fVar = this.f15133h;
        if (fVar.f15092j) {
            this.f15127b.r1(fVar.f15089g);
        }
    }

    @Override // p.p
    void f() {
        this.f15128c = null;
        this.f15133h.c();
        this.f15134i.c();
        this.f15130e.c();
        this.f15132g = false;
    }

    @Override // p.p
    boolean m() {
        return this.f15129d != e.b.MATCH_CONSTRAINT || this.f15127b.f14213w == 0;
    }

    void r() {
        this.f15132g = false;
        this.f15133h.c();
        this.f15133h.f15092j = false;
        this.f15134i.c();
        this.f15134i.f15092j = false;
        this.f15130e.f15092j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.f15127b.v();
    }
}
