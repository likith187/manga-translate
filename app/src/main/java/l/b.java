package l;

import java.util.ArrayList;
import l.d;
import l.i;

/* JADX INFO: loaded from: classes.dex */
public class b implements d.a {

    /* JADX INFO: renamed from: e */
    public a f13456e;

    /* JADX INFO: renamed from: a */
    i f13452a = null;

    /* JADX INFO: renamed from: b */
    float f13453b = 0.0f;

    /* JADX INFO: renamed from: c */
    boolean f13454c = false;

    /* JADX INFO: renamed from: d */
    ArrayList f13455d = new ArrayList();

    /* JADX INFO: renamed from: f */
    boolean f13457f = false;

    public interface a {
        float a(int i10);

        float b(b bVar, boolean z10);

        void c(i iVar, float f10);

        void clear();

        int d();

        void e(i iVar, float f10, boolean z10);

        i f(int i10);

        float g(i iVar);

        float h(i iVar, boolean z10);

        boolean i(i iVar);

        void j(float f10);

        void k();
    }

    public b() {
    }

    private boolean u(i iVar, d dVar) {
        return iVar.f13512p <= 1;
    }

    private i w(boolean[] zArr, i iVar) {
        i.a aVar;
        int iD = this.f13456e.d();
        i iVar2 = null;
        float f10 = 0.0f;
        for (int i10 = 0; i10 < iD; i10++) {
            float fA = this.f13456e.a(i10);
            if (fA < 0.0f) {
                i iVarF = this.f13456e.f(i10);
                if ((zArr == null || !zArr[iVarF.f13502c]) && iVarF != iVar && (((aVar = iVarF.f13509m) == i.a.SLACK || aVar == i.a.ERROR) && fA < f10)) {
                    f10 = fA;
                    iVar2 = iVarF;
                }
            }
        }
        return iVar2;
    }

    public void A(d dVar, i iVar, boolean z10) {
        if (iVar == null || !iVar.f13506j) {
            return;
        }
        this.f13453b += iVar.f13505i * this.f13456e.g(iVar);
        this.f13456e.h(iVar, z10);
        if (z10) {
            iVar.d(this);
        }
        if (d.f13464u && this.f13456e.d() == 0) {
            this.f13457f = true;
            dVar.f13470b = true;
        }
    }

    public void B(d dVar, b bVar, boolean z10) {
        this.f13453b += bVar.f13453b * this.f13456e.b(bVar, z10);
        if (z10) {
            bVar.f13452a.d(this);
        }
        if (d.f13464u && this.f13452a != null && this.f13456e.d() == 0) {
            this.f13457f = true;
            dVar.f13470b = true;
        }
    }

    public void C(d dVar, i iVar, boolean z10) {
        if (iVar == null || !iVar.f13513q) {
            return;
        }
        float fG = this.f13456e.g(iVar);
        this.f13453b += iVar.f13515s * fG;
        this.f13456e.h(iVar, z10);
        if (z10) {
            iVar.d(this);
        }
        this.f13456e.e(dVar.f13483o.f13461d[iVar.f13514r], fG, z10);
        if (d.f13464u && this.f13456e.d() == 0) {
            this.f13457f = true;
            dVar.f13470b = true;
        }
    }

    public void D(d dVar) {
        if (dVar.f13476h.length == 0) {
            return;
        }
        boolean z10 = false;
        while (!z10) {
            int iD = this.f13456e.d();
            for (int i10 = 0; i10 < iD; i10++) {
                i iVarF = this.f13456e.f(i10);
                if (iVarF.f13503f != -1 || iVarF.f13506j || iVarF.f13513q) {
                    this.f13455d.add(iVarF);
                }
            }
            int size = this.f13455d.size();
            if (size > 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    i iVar = (i) this.f13455d.get(i11);
                    if (iVar.f13506j) {
                        A(dVar, iVar, true);
                    } else if (iVar.f13513q) {
                        C(dVar, iVar, true);
                    } else {
                        B(dVar, dVar.f13476h[iVar.f13503f], true);
                    }
                }
                this.f13455d.clear();
            } else {
                z10 = true;
            }
        }
        if (d.f13464u && this.f13452a != null && this.f13456e.d() == 0) {
            this.f13457f = true;
            dVar.f13470b = true;
        }
    }

    @Override // l.d.a
    public i a(d dVar, boolean[] zArr) {
        return w(zArr, null);
    }

    @Override // l.d.a
    public void b(d.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.f13452a = null;
            this.f13456e.clear();
            for (int i10 = 0; i10 < bVar.f13456e.d(); i10++) {
                this.f13456e.e(bVar.f13456e.f(i10), bVar.f13456e.a(i10), true);
            }
        }
    }

    @Override // l.d.a
    public void c(i iVar) {
        int i10 = iVar.f13504h;
        float f10 = 1.0f;
        if (i10 != 1) {
            if (i10 == 2) {
                f10 = 1000.0f;
            } else if (i10 == 3) {
                f10 = 1000000.0f;
            } else if (i10 == 4) {
                f10 = 1.0E9f;
            } else if (i10 == 5) {
                f10 = 1.0E12f;
            }
        }
        this.f13456e.c(iVar, f10);
    }

    @Override // l.d.a
    public void clear() {
        this.f13456e.clear();
        this.f13452a = null;
        this.f13453b = 0.0f;
    }

    public b d(d dVar, int i10) {
        this.f13456e.c(dVar.o(i10, "ep"), 1.0f);
        this.f13456e.c(dVar.o(i10, "em"), -1.0f);
        return this;
    }

    b e(i iVar, int i10) {
        this.f13456e.c(iVar, i10);
        return this;
    }

    boolean f(d dVar) {
        boolean z10;
        i iVarG = g(dVar);
        if (iVarG == null) {
            z10 = true;
        } else {
            x(iVarG);
            z10 = false;
        }
        if (this.f13456e.d() == 0) {
            this.f13457f = true;
        }
        return z10;
    }

    i g(d dVar) {
        int iD = this.f13456e.d();
        i iVar = null;
        float f10 = 0.0f;
        float f11 = 0.0f;
        boolean z10 = false;
        boolean z11 = false;
        i iVar2 = null;
        for (int i10 = 0; i10 < iD; i10++) {
            float fA = this.f13456e.a(i10);
            i iVarF = this.f13456e.f(i10);
            if (iVarF.f13509m == i.a.UNRESTRICTED) {
                if (iVar == null || f10 > fA) {
                    boolean zU = u(iVarF, dVar);
                    z10 = zU;
                    f10 = fA;
                    iVar = iVarF;
                } else if (!z10 && u(iVarF, dVar)) {
                    f10 = fA;
                    iVar = iVarF;
                    z10 = true;
                }
            } else if (iVar == null && fA < 0.0f) {
                if (iVar2 == null || f11 > fA) {
                    boolean zU2 = u(iVarF, dVar);
                    z11 = zU2;
                    f11 = fA;
                    iVar2 = iVarF;
                } else if (!z11 && u(iVarF, dVar)) {
                    f11 = fA;
                    iVar2 = iVarF;
                    z11 = true;
                }
            }
        }
        return iVar != null ? iVar : iVar2;
    }

    @Override // l.d.a
    public i getKey() {
        return this.f13452a;
    }

    b h(i iVar, i iVar2, int i10, float f10, i iVar3, i iVar4, int i11) {
        if (iVar2 == iVar3) {
            this.f13456e.c(iVar, 1.0f);
            this.f13456e.c(iVar4, 1.0f);
            this.f13456e.c(iVar2, -2.0f);
            return this;
        }
        if (f10 == 0.5f) {
            this.f13456e.c(iVar, 1.0f);
            this.f13456e.c(iVar2, -1.0f);
            this.f13456e.c(iVar3, -1.0f);
            this.f13456e.c(iVar4, 1.0f);
            if (i10 > 0 || i11 > 0) {
                this.f13453b = (-i10) + i11;
            }
        } else if (f10 <= 0.0f) {
            this.f13456e.c(iVar, -1.0f);
            this.f13456e.c(iVar2, 1.0f);
            this.f13453b = i10;
        } else if (f10 >= 1.0f) {
            this.f13456e.c(iVar4, -1.0f);
            this.f13456e.c(iVar3, 1.0f);
            this.f13453b = -i11;
        } else {
            float f11 = 1.0f - f10;
            this.f13456e.c(iVar, f11 * 1.0f);
            this.f13456e.c(iVar2, f11 * (-1.0f));
            this.f13456e.c(iVar3, (-1.0f) * f10);
            this.f13456e.c(iVar4, 1.0f * f10);
            if (i10 > 0 || i11 > 0) {
                this.f13453b = ((-i10) * f11) + (i11 * f10);
            }
        }
        return this;
    }

    b i(i iVar, int i10) {
        this.f13452a = iVar;
        float f10 = i10;
        iVar.f13505i = f10;
        this.f13453b = f10;
        this.f13457f = true;
        return this;
    }

    @Override // l.d.a
    public boolean isEmpty() {
        return this.f13452a == null && this.f13453b == 0.0f && this.f13456e.d() == 0;
    }

    b j(i iVar, i iVar2, float f10) {
        this.f13456e.c(iVar, -1.0f);
        this.f13456e.c(iVar2, f10);
        return this;
    }

    public b k(i iVar, i iVar2, i iVar3, i iVar4, float f10) {
        this.f13456e.c(iVar, -1.0f);
        this.f13456e.c(iVar2, 1.0f);
        this.f13456e.c(iVar3, f10);
        this.f13456e.c(iVar4, -f10);
        return this;
    }

    public b l(float f10, float f11, float f12, i iVar, i iVar2, i iVar3, i iVar4) {
        this.f13453b = 0.0f;
        if (f11 == 0.0f || f10 == f12) {
            this.f13456e.c(iVar, 1.0f);
            this.f13456e.c(iVar2, -1.0f);
            this.f13456e.c(iVar4, 1.0f);
            this.f13456e.c(iVar3, -1.0f);
        } else if (f10 == 0.0f) {
            this.f13456e.c(iVar, 1.0f);
            this.f13456e.c(iVar2, -1.0f);
        } else if (f12 == 0.0f) {
            this.f13456e.c(iVar3, 1.0f);
            this.f13456e.c(iVar4, -1.0f);
        } else {
            float f13 = (f10 / f11) / (f12 / f11);
            this.f13456e.c(iVar, 1.0f);
            this.f13456e.c(iVar2, -1.0f);
            this.f13456e.c(iVar4, f13);
            this.f13456e.c(iVar3, -f13);
        }
        return this;
    }

    public b m(i iVar, int i10) {
        if (i10 < 0) {
            this.f13453b = i10 * (-1);
            this.f13456e.c(iVar, 1.0f);
        } else {
            this.f13453b = i10;
            this.f13456e.c(iVar, -1.0f);
        }
        return this;
    }

    public b n(i iVar, i iVar2, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f13453b = i10;
        }
        if (z10) {
            this.f13456e.c(iVar, 1.0f);
            this.f13456e.c(iVar2, -1.0f);
        } else {
            this.f13456e.c(iVar, -1.0f);
            this.f13456e.c(iVar2, 1.0f);
        }
        return this;
    }

    public b o(i iVar, i iVar2, i iVar3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f13453b = i10;
        }
        if (z10) {
            this.f13456e.c(iVar, 1.0f);
            this.f13456e.c(iVar2, -1.0f);
            this.f13456e.c(iVar3, -1.0f);
        } else {
            this.f13456e.c(iVar, -1.0f);
            this.f13456e.c(iVar2, 1.0f);
            this.f13456e.c(iVar3, 1.0f);
        }
        return this;
    }

    public b p(i iVar, i iVar2, i iVar3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f13453b = i10;
        }
        if (z10) {
            this.f13456e.c(iVar, 1.0f);
            this.f13456e.c(iVar2, -1.0f);
            this.f13456e.c(iVar3, 1.0f);
        } else {
            this.f13456e.c(iVar, -1.0f);
            this.f13456e.c(iVar2, 1.0f);
            this.f13456e.c(iVar3, -1.0f);
        }
        return this;
    }

    public b q(i iVar, i iVar2, i iVar3, i iVar4, float f10) {
        this.f13456e.c(iVar3, 0.5f);
        this.f13456e.c(iVar4, 0.5f);
        this.f13456e.c(iVar, -0.5f);
        this.f13456e.c(iVar2, -0.5f);
        this.f13453b = -f10;
        return this;
    }

    void r() {
        float f10 = this.f13453b;
        if (f10 < 0.0f) {
            this.f13453b = f10 * (-1.0f);
            this.f13456e.k();
        }
    }

    boolean s() {
        i iVar = this.f13452a;
        return iVar != null && (iVar.f13509m == i.a.UNRESTRICTED || this.f13453b >= 0.0f);
    }

    boolean t(i iVar) {
        return this.f13456e.i(iVar);
    }

    public String toString() {
        return z();
    }

    public i v(i iVar) {
        return w(null, iVar);
    }

    void x(i iVar) {
        i iVar2 = this.f13452a;
        if (iVar2 != null) {
            this.f13456e.c(iVar2, -1.0f);
            this.f13452a.f13503f = -1;
            this.f13452a = null;
        }
        float fH = this.f13456e.h(iVar, true) * (-1.0f);
        this.f13452a = iVar;
        if (fH == 1.0f) {
            return;
        }
        this.f13453b /= fH;
        this.f13456e.j(fH);
    }

    public void y() {
        this.f13452a = null;
        this.f13456e.clear();
        this.f13453b = 0.0f;
        this.f13457f = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.lang.String z() {
        /*
            Method dump skipped, instruction units count: 256
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: l.b.z():java.lang.String");
    }

    public b(c cVar) {
        this.f13456e = new l.a(this, cVar);
    }
}
