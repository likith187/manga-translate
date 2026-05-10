package p;

import o.d;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class p implements d {

    /* JADX INFO: renamed from: a */
    public int f15126a;

    /* JADX INFO: renamed from: b */
    o.e f15127b;

    /* JADX INFO: renamed from: c */
    m f15128c;

    /* JADX INFO: renamed from: d */
    protected e.b f15129d;

    /* JADX INFO: renamed from: e */
    g f15130e = new g(this);

    /* JADX INFO: renamed from: f */
    public int f15131f = 0;

    /* JADX INFO: renamed from: g */
    boolean f15132g = false;

    /* JADX INFO: renamed from: h */
    public f f15133h = new f(this);

    /* JADX INFO: renamed from: i */
    public f f15134i = new f(this);

    /* JADX INFO: renamed from: j */
    protected b f15135j = b.NONE;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f15136a;

        static {
            int[] iArr = new int[d.a.values().length];
            f15136a = iArr;
            try {
                iArr[d.a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15136a[d.a.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15136a[d.a.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15136a[d.a.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15136a[d.a.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    enum b {
        NONE,
        START,
        END,
        CENTER
    }

    public p(o.e eVar) {
        this.f15127b = eVar;
    }

    private void l(int i10, int i11) {
        int i12 = this.f15126a;
        if (i12 == 0) {
            this.f15130e.d(g(i11, i10));
            return;
        }
        if (i12 == 1) {
            this.f15130e.d(Math.min(g(this.f15130e.f15095m, i10), i11));
            return;
        }
        if (i12 == 2) {
            o.e eVarM = this.f15127b.M();
            if (eVarM != null) {
                if ((i10 == 0 ? eVarM.f14177e : eVarM.f14179f).f15130e.f15092j) {
                    this.f15130e.d(g((int) ((r9.f15089g * (i10 == 0 ? this.f15127b.B : this.f15127b.E)) + 0.5f), i10));
                    return;
                }
                return;
            }
            return;
        }
        if (i12 != 3) {
            return;
        }
        o.e eVar = this.f15127b;
        p pVar = eVar.f14177e;
        e.b bVar = pVar.f15129d;
        e.b bVar2 = e.b.MATCH_CONSTRAINT;
        if (bVar == bVar2 && pVar.f15126a == 3) {
            n nVar = eVar.f14179f;
            if (nVar.f15129d == bVar2 && nVar.f15126a == 3) {
                return;
            }
        }
        if (i10 == 0) {
            pVar = eVar.f14179f;
        }
        if (pVar.f15130e.f15092j) {
            float fX = eVar.x();
            this.f15130e.d(i10 == 1 ? (int) ((pVar.f15130e.f15089g / fX) + 0.5f) : (int) ((fX * pVar.f15130e.f15089g) + 0.5f));
        }
    }

    @Override // p.d
    public abstract void a(d dVar);

    protected final void b(f fVar, f fVar2, int i10) {
        fVar.f15094l.add(fVar2);
        fVar.f15088f = i10;
        fVar2.f15093k.add(fVar);
    }

    protected final void c(f fVar, f fVar2, int i10, g gVar) {
        fVar.f15094l.add(fVar2);
        fVar.f15094l.add(this.f15130e);
        fVar.f15090h = i10;
        fVar.f15091i = gVar;
        fVar2.f15093k.add(fVar);
        gVar.f15093k.add(fVar);
    }

    abstract void d();

    abstract void e();

    abstract void f();

    protected final int g(int i10, int i11) {
        int iMax;
        if (i11 == 0) {
            o.e eVar = this.f15127b;
            int i12 = eVar.A;
            iMax = Math.max(eVar.f14219z, i10);
            if (i12 > 0) {
                iMax = Math.min(i12, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        } else {
            o.e eVar2 = this.f15127b;
            int i13 = eVar2.D;
            iMax = Math.max(eVar2.C, i10);
            if (i13 > 0) {
                iMax = Math.min(i13, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        }
        return iMax;
    }

    protected final f h(o.d dVar) {
        o.d dVar2 = dVar.f14165f;
        if (dVar2 == null) {
            return null;
        }
        o.e eVar = dVar2.f14163d;
        int i10 = a.f15136a[dVar2.f14164e.ordinal()];
        if (i10 == 1) {
            return eVar.f14177e.f15133h;
        }
        if (i10 == 2) {
            return eVar.f14177e.f15134i;
        }
        if (i10 == 3) {
            return eVar.f14179f.f15133h;
        }
        if (i10 == 4) {
            return eVar.f14179f.f15109k;
        }
        if (i10 != 5) {
            return null;
        }
        return eVar.f14179f.f15134i;
    }

    protected final f i(o.d dVar, int i10) {
        o.d dVar2 = dVar.f14165f;
        if (dVar2 == null) {
            return null;
        }
        o.e eVar = dVar2.f14163d;
        p pVar = i10 == 0 ? eVar.f14177e : eVar.f14179f;
        int i11 = a.f15136a[dVar2.f14164e.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 5) {
                        return null;
                    }
                }
            }
            return pVar.f15134i;
        }
        return pVar.f15133h;
    }

    public long j() {
        if (this.f15130e.f15092j) {
            return r2.f15089g;
        }
        return 0L;
    }

    public boolean k() {
        return this.f15132g;
    }

    abstract boolean m();

    protected void n(d dVar, o.d dVar2, o.d dVar3, int i10) {
        f fVarH = h(dVar2);
        f fVarH2 = h(dVar3);
        if (fVarH.f15092j && fVarH2.f15092j) {
            int iF = fVarH.f15089g + dVar2.f();
            int iF2 = fVarH2.f15089g - dVar3.f();
            int i11 = iF2 - iF;
            if (!this.f15130e.f15092j && this.f15129d == e.b.MATCH_CONSTRAINT) {
                l(i10, i11);
            }
            g gVar = this.f15130e;
            if (gVar.f15092j) {
                if (gVar.f15089g == i11) {
                    this.f15133h.d(iF);
                    this.f15134i.d(iF2);
                    return;
                }
                float fA = i10 == 0 ? this.f15127b.A() : this.f15127b.T();
                if (fVarH == fVarH2) {
                    iF = fVarH.f15089g;
                    iF2 = fVarH2.f15089g;
                    fA = 0.5f;
                }
                this.f15133h.d((int) (iF + 0.5f + (((iF2 - iF) - this.f15130e.f15089g) * fA)));
                this.f15134i.d(this.f15133h.f15089g + this.f15130e.f15089g);
            }
        }
    }

    protected void o(d dVar) {
    }

    protected void p(d dVar) {
    }
}
