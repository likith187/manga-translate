package p;

import o.d;
import o.e;
import p.f;
import p.p;

/* JADX INFO: loaded from: classes.dex */
public class n extends p {

    /* JADX INFO: renamed from: k */
    public f f15109k;

    /* JADX INFO: renamed from: l */
    g f15110l;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f15111a;

        static {
            int[] iArr = new int[p.b.values().length];
            f15111a = iArr;
            try {
                iArr[p.b.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15111a[p.b.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15111a[p.b.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public n(o.e eVar) {
        super(eVar);
        f fVar = new f(this);
        this.f15109k = fVar;
        this.f15110l = null;
        this.f15133h.f15087e = f.a.TOP;
        this.f15134i.f15087e = f.a.BOTTOM;
        fVar.f15087e = f.a.BASELINE;
        this.f15131f = 1;
    }

    @Override // p.p, p.d
    public void a(d dVar) {
        float f10;
        float fX;
        float fX2;
        int i10;
        int i11 = a.f15111a[this.f15135j.ordinal()];
        if (i11 == 1) {
            p(dVar);
        } else if (i11 == 2) {
            o(dVar);
        } else if (i11 == 3) {
            o.e eVar = this.f15127b;
            n(dVar, eVar.R, eVar.T, 1);
            return;
        }
        g gVar = this.f15130e;
        if (gVar.f15085c && !gVar.f15092j && this.f15129d == e.b.MATCH_CONSTRAINT) {
            o.e eVar2 = this.f15127b;
            int i12 = eVar2.f14215x;
            if (i12 == 2) {
                o.e eVarM = eVar2.M();
                if (eVarM != null) {
                    if (eVarM.f14179f.f15130e.f15092j) {
                        this.f15130e.d((int) ((r7.f15089g * this.f15127b.E) + 0.5f));
                    }
                }
            } else if (i12 == 3 && eVar2.f14177e.f15130e.f15092j) {
                int iY = eVar2.y();
                if (iY == -1) {
                    o.e eVar3 = this.f15127b;
                    f10 = eVar3.f14177e.f15130e.f15089g;
                    fX = eVar3.x();
                } else if (iY == 0) {
                    fX2 = r7.f14177e.f15130e.f15089g * this.f15127b.x();
                    i10 = (int) (fX2 + 0.5f);
                    this.f15130e.d(i10);
                } else if (iY != 1) {
                    i10 = 0;
                    this.f15130e.d(i10);
                } else {
                    o.e eVar4 = this.f15127b;
                    f10 = eVar4.f14177e.f15130e.f15089g;
                    fX = eVar4.x();
                }
                fX2 = f10 / fX;
                i10 = (int) (fX2 + 0.5f);
                this.f15130e.d(i10);
            }
        }
        f fVar = this.f15133h;
        if (fVar.f15085c) {
            f fVar2 = this.f15134i;
            if (fVar2.f15085c) {
                if (fVar.f15092j && fVar2.f15092j && this.f15130e.f15092j) {
                    return;
                }
                if (!this.f15130e.f15092j && this.f15129d == e.b.MATCH_CONSTRAINT) {
                    o.e eVar5 = this.f15127b;
                    if (eVar5.f14213w == 0 && !eVar5.m0()) {
                        f fVar3 = (f) this.f15133h.f15094l.get(0);
                        f fVar4 = (f) this.f15134i.f15094l.get(0);
                        int i13 = fVar3.f15089g;
                        f fVar5 = this.f15133h;
                        int i14 = i13 + fVar5.f15088f;
                        int i15 = fVar4.f15089g + this.f15134i.f15088f;
                        fVar5.d(i14);
                        this.f15134i.d(i15);
                        this.f15130e.d(i15 - i14);
                        return;
                    }
                }
                if (!this.f15130e.f15092j && this.f15129d == e.b.MATCH_CONSTRAINT && this.f15126a == 1 && this.f15133h.f15094l.size() > 0 && this.f15134i.f15094l.size() > 0) {
                    f fVar6 = (f) this.f15133h.f15094l.get(0);
                    int i16 = (((f) this.f15134i.f15094l.get(0)).f15089g + this.f15134i.f15088f) - (fVar6.f15089g + this.f15133h.f15088f);
                    g gVar2 = this.f15130e;
                    int i17 = gVar2.f15095m;
                    if (i16 < i17) {
                        gVar2.d(i16);
                    } else {
                        gVar2.d(i17);
                    }
                }
                if (this.f15130e.f15092j && this.f15133h.f15094l.size() > 0 && this.f15134i.f15094l.size() > 0) {
                    f fVar7 = (f) this.f15133h.f15094l.get(0);
                    f fVar8 = (f) this.f15134i.f15094l.get(0);
                    int i18 = fVar7.f15089g + this.f15133h.f15088f;
                    int i19 = fVar8.f15089g + this.f15134i.f15088f;
                    float fT = this.f15127b.T();
                    if (fVar7 == fVar8) {
                        i18 = fVar7.f15089g;
                        i19 = fVar8.f15089g;
                        fT = 0.5f;
                    }
                    this.f15133h.d((int) (i18 + 0.5f + (((i19 - i18) - this.f15130e.f15089g) * fT)));
                    this.f15134i.d(this.f15133h.f15089g + this.f15130e.f15089g);
                }
            }
        }
    }

    @Override // p.p
    void d() {
        o.e eVarM;
        o.e eVarM2;
        o.e eVar = this.f15127b;
        if (eVar.f14169a) {
            this.f15130e.d(eVar.z());
        }
        if (!this.f15130e.f15092j) {
            this.f15129d = this.f15127b.V();
            if (this.f15127b.b0()) {
                this.f15110l = new p.a(this);
            }
            e.b bVar = this.f15129d;
            if (bVar != e.b.MATCH_CONSTRAINT) {
                if (bVar == e.b.MATCH_PARENT && (eVarM2 = this.f15127b.M()) != null && eVarM2.V() == e.b.FIXED) {
                    int iZ = (eVarM2.z() - this.f15127b.R.f()) - this.f15127b.T.f();
                    b(this.f15133h, eVarM2.f14179f.f15133h, this.f15127b.R.f());
                    b(this.f15134i, eVarM2.f14179f.f15134i, -this.f15127b.T.f());
                    this.f15130e.d(iZ);
                    return;
                }
                if (this.f15129d == e.b.FIXED) {
                    this.f15130e.d(this.f15127b.z());
                }
            }
        } else if (this.f15129d == e.b.MATCH_PARENT && (eVarM = this.f15127b.M()) != null && eVarM.V() == e.b.FIXED) {
            b(this.f15133h, eVarM.f14179f.f15133h, this.f15127b.R.f());
            b(this.f15134i, eVarM.f14179f.f15134i, -this.f15127b.T.f());
            return;
        }
        g gVar = this.f15130e;
        boolean z10 = gVar.f15092j;
        if (z10) {
            o.e eVar2 = this.f15127b;
            if (eVar2.f14169a) {
                o.d[] dVarArr = eVar2.Y;
                o.d dVar = dVarArr[2];
                o.d dVar2 = dVar.f14165f;
                if (dVar2 != null && dVarArr[3].f14165f != null) {
                    if (eVar2.m0()) {
                        this.f15133h.f15088f = this.f15127b.Y[2].f();
                        this.f15134i.f15088f = -this.f15127b.Y[3].f();
                    } else {
                        f fVarH = h(this.f15127b.Y[2]);
                        if (fVarH != null) {
                            b(this.f15133h, fVarH, this.f15127b.Y[2].f());
                        }
                        f fVarH2 = h(this.f15127b.Y[3]);
                        if (fVarH2 != null) {
                            b(this.f15134i, fVarH2, -this.f15127b.Y[3].f());
                        }
                        this.f15133h.f15084b = true;
                        this.f15134i.f15084b = true;
                    }
                    if (this.f15127b.b0()) {
                        b(this.f15109k, this.f15133h, this.f15127b.r());
                        return;
                    }
                    return;
                }
                if (dVar2 != null) {
                    f fVarH3 = h(dVar);
                    if (fVarH3 != null) {
                        b(this.f15133h, fVarH3, this.f15127b.Y[2].f());
                        b(this.f15134i, this.f15133h, this.f15130e.f15089g);
                        if (this.f15127b.b0()) {
                            b(this.f15109k, this.f15133h, this.f15127b.r());
                            return;
                        }
                        return;
                    }
                    return;
                }
                o.d dVar3 = dVarArr[3];
                if (dVar3.f14165f != null) {
                    f fVarH4 = h(dVar3);
                    if (fVarH4 != null) {
                        b(this.f15134i, fVarH4, -this.f15127b.Y[3].f());
                        b(this.f15133h, this.f15134i, -this.f15130e.f15089g);
                    }
                    if (this.f15127b.b0()) {
                        b(this.f15109k, this.f15133h, this.f15127b.r());
                        return;
                    }
                    return;
                }
                o.d dVar4 = dVarArr[4];
                if (dVar4.f14165f != null) {
                    f fVarH5 = h(dVar4);
                    if (fVarH5 != null) {
                        b(this.f15109k, fVarH5, 0);
                        b(this.f15133h, this.f15109k, -this.f15127b.r());
                        b(this.f15134i, this.f15133h, this.f15130e.f15089g);
                        return;
                    }
                    return;
                }
                if ((eVar2 instanceof o.i) || eVar2.M() == null || this.f15127b.q(d.a.CENTER).f14165f != null) {
                    return;
                }
                b(this.f15133h, this.f15127b.M().f14179f.f15133h, this.f15127b.a0());
                b(this.f15134i, this.f15133h, this.f15130e.f15089g);
                if (this.f15127b.b0()) {
                    b(this.f15109k, this.f15133h, this.f15127b.r());
                    return;
                }
                return;
            }
        }
        if (z10 || this.f15129d != e.b.MATCH_CONSTRAINT) {
            gVar.b(this);
        } else {
            o.e eVar3 = this.f15127b;
            int i10 = eVar3.f14215x;
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
            } else if (i10 == 3 && !eVar3.m0()) {
                o.e eVar4 = this.f15127b;
                if (eVar4.f14213w != 3) {
                    g gVar4 = eVar4.f14177e.f15130e;
                    this.f15130e.f15094l.add(gVar4);
                    gVar4.f15093k.add(this.f15130e);
                    g gVar5 = this.f15130e;
                    gVar5.f15084b = true;
                    gVar5.f15093k.add(this.f15133h);
                    this.f15130e.f15093k.add(this.f15134i);
                }
            }
        }
        o.e eVar5 = this.f15127b;
        o.d[] dVarArr2 = eVar5.Y;
        o.d dVar5 = dVarArr2[2];
        o.d dVar6 = dVar5.f14165f;
        if (dVar6 != null && dVarArr2[3].f14165f != null) {
            if (eVar5.m0()) {
                this.f15133h.f15088f = this.f15127b.Y[2].f();
                this.f15134i.f15088f = -this.f15127b.Y[3].f();
            } else {
                f fVarH6 = h(this.f15127b.Y[2]);
                f fVarH7 = h(this.f15127b.Y[3]);
                if (fVarH6 != null) {
                    fVarH6.b(this);
                }
                if (fVarH7 != null) {
                    fVarH7.b(this);
                }
                this.f15135j = p.b.CENTER;
            }
            if (this.f15127b.b0()) {
                c(this.f15109k, this.f15133h, 1, this.f15110l);
            }
        } else if (dVar6 != null) {
            f fVarH8 = h(dVar5);
            if (fVarH8 != null) {
                b(this.f15133h, fVarH8, this.f15127b.Y[2].f());
                c(this.f15134i, this.f15133h, 1, this.f15130e);
                if (this.f15127b.b0()) {
                    c(this.f15109k, this.f15133h, 1, this.f15110l);
                }
                e.b bVar2 = this.f15129d;
                e.b bVar3 = e.b.MATCH_CONSTRAINT;
                if (bVar2 == bVar3 && this.f15127b.x() > 0.0f) {
                    l lVar = this.f15127b.f14177e;
                    if (lVar.f15129d == bVar3) {
                        lVar.f15130e.f15093k.add(this.f15130e);
                        this.f15130e.f15094l.add(this.f15127b.f14177e.f15130e);
                        this.f15130e.f15083a = this;
                    }
                }
            }
        } else {
            o.d dVar7 = dVarArr2[3];
            if (dVar7.f14165f != null) {
                f fVarH9 = h(dVar7);
                if (fVarH9 != null) {
                    b(this.f15134i, fVarH9, -this.f15127b.Y[3].f());
                    c(this.f15133h, this.f15134i, -1, this.f15130e);
                    if (this.f15127b.b0()) {
                        c(this.f15109k, this.f15133h, 1, this.f15110l);
                    }
                }
            } else {
                o.d dVar8 = dVarArr2[4];
                if (dVar8.f14165f != null) {
                    f fVarH10 = h(dVar8);
                    if (fVarH10 != null) {
                        b(this.f15109k, fVarH10, 0);
                        c(this.f15133h, this.f15109k, -1, this.f15110l);
                        c(this.f15134i, this.f15133h, 1, this.f15130e);
                    }
                } else if (!(eVar5 instanceof o.i) && eVar5.M() != null) {
                    b(this.f15133h, this.f15127b.M().f14179f.f15133h, this.f15127b.a0());
                    c(this.f15134i, this.f15133h, 1, this.f15130e);
                    if (this.f15127b.b0()) {
                        c(this.f15109k, this.f15133h, 1, this.f15110l);
                    }
                    e.b bVar4 = this.f15129d;
                    e.b bVar5 = e.b.MATCH_CONSTRAINT;
                    if (bVar4 == bVar5 && this.f15127b.x() > 0.0f) {
                        l lVar2 = this.f15127b.f14177e;
                        if (lVar2.f15129d == bVar5) {
                            lVar2.f15130e.f15093k.add(this.f15130e);
                            this.f15130e.f15094l.add(this.f15127b.f14177e.f15130e);
                            this.f15130e.f15083a = this;
                        }
                    }
                }
            }
        }
        if (this.f15130e.f15094l.size() == 0) {
            this.f15130e.f15085c = true;
        }
    }

    @Override // p.p
    public void e() {
        f fVar = this.f15133h;
        if (fVar.f15092j) {
            this.f15127b.s1(fVar.f15089g);
        }
    }

    @Override // p.p
    void f() {
        this.f15128c = null;
        this.f15133h.c();
        this.f15134i.c();
        this.f15109k.c();
        this.f15130e.c();
        this.f15132g = false;
    }

    @Override // p.p
    boolean m() {
        return this.f15129d != e.b.MATCH_CONSTRAINT || this.f15127b.f14215x == 0;
    }

    void q() {
        this.f15132g = false;
        this.f15133h.c();
        this.f15133h.f15092j = false;
        this.f15134i.c();
        this.f15134i.f15092j = false;
        this.f15109k.c();
        this.f15109k.f15092j = false;
        this.f15130e.f15092j = false;
    }

    public String toString() {
        return "VerticalRun " + this.f15127b.v();
    }
}
