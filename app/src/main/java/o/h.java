package o;

import java.util.HashMap;
import o.d;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public class h extends e {
    protected float V0 = -1.0f;
    protected int W0 = -1;
    protected int X0 = -1;
    protected boolean Y0 = true;
    private d Z0 = this.R;

    /* JADX INFO: renamed from: a1 */
    private int f14282a1 = 0;

    /* JADX INFO: renamed from: b1 */
    private int f14283b1 = 0;

    /* JADX INFO: renamed from: c1 */
    private boolean f14284c1;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f14285a;

        static {
            int[] iArr = new int[d.a.values().length];
            f14285a = iArr;
            try {
                iArr[d.a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14285a[d.a.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14285a[d.a.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14285a[d.a.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14285a[d.a.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14285a[d.a.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14285a[d.a.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14285a[d.a.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14285a[d.a.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public h() {
        this.Z.clear();
        this.Z.add(this.Z0);
        int length = this.Y.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.Y[i10] = this.Z0;
        }
    }

    public float A1() {
        return this.V0;
    }

    public void B1(int i10) {
        this.Z0.t(i10);
        this.f14284c1 = true;
    }

    public void C1(int i10) {
        if (i10 > -1) {
            this.V0 = -1.0f;
            this.W0 = i10;
            this.X0 = -1;
        }
    }

    public void D1(int i10) {
        if (i10 > -1) {
            this.V0 = -1.0f;
            this.W0 = -1;
            this.X0 = i10;
        }
    }

    public void E1(float f10) {
        if (f10 > -1.0f) {
            this.V0 = f10;
            this.W0 = -1;
            this.X0 = -1;
        }
    }

    public void F1(int i10) {
        if (this.f14282a1 == i10) {
            return;
        }
        this.f14282a1 = i10;
        this.Z.clear();
        if (this.f14282a1 == 1) {
            this.Z0 = this.Q;
        } else {
            this.Z0 = this.R;
        }
        this.Z.add(this.Z0);
        int length = this.Y.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.Y[i11] = this.Z0;
        }
    }

    @Override // o.e
    public void g(l.d dVar, boolean z10) {
        f fVar = (f) M();
        if (fVar == null) {
            return;
        }
        d dVarQ = fVar.q(d.a.LEFT);
        d dVarQ2 = fVar.q(d.a.RIGHT);
        e eVar = this.f14174c0;
        boolean z11 = eVar != null && eVar.f14172b0[0] == e.b.WRAP_CONTENT;
        if (this.f14282a1 == 0) {
            dVarQ = fVar.q(d.a.TOP);
            dVarQ2 = fVar.q(d.a.BOTTOM);
            e eVar2 = this.f14174c0;
            z11 = eVar2 != null && eVar2.f14172b0[1] == e.b.WRAP_CONTENT;
        }
        if (this.f14284c1 && this.Z0.n()) {
            l.i iVarQ = dVar.q(this.Z0);
            dVar.f(iVarQ, this.Z0.e());
            if (this.W0 != -1) {
                if (z11) {
                    dVar.h(dVar.q(dVarQ2), iVarQ, 0, 5);
                }
            } else if (this.X0 != -1 && z11) {
                l.i iVarQ2 = dVar.q(dVarQ2);
                dVar.h(iVarQ, dVar.q(dVarQ), 0, 5);
                dVar.h(iVarQ2, iVarQ, 0, 5);
            }
            this.f14284c1 = false;
            return;
        }
        if (this.W0 != -1) {
            l.i iVarQ3 = dVar.q(this.Z0);
            dVar.e(iVarQ3, dVar.q(dVarQ), this.W0, 8);
            if (z11) {
                dVar.h(dVar.q(dVarQ2), iVarQ3, 0, 5);
                return;
            }
            return;
        }
        if (this.X0 == -1) {
            if (this.V0 != -1.0f) {
                dVar.d(l.d.s(dVar, dVar.q(this.Z0), dVar.q(dVarQ2), this.V0));
                return;
            }
            return;
        }
        l.i iVarQ4 = dVar.q(this.Z0);
        l.i iVarQ5 = dVar.q(dVarQ2);
        dVar.e(iVarQ4, iVarQ5, -this.X0, 8);
        if (z11) {
            dVar.h(iVarQ4, dVar.q(dVarQ), 0, 5);
            dVar.h(iVarQ5, iVarQ4, 0, 5);
        }
    }

    @Override // o.e
    public boolean h() {
        return true;
    }

    @Override // o.e
    public void n(e eVar, HashMap map) {
        super.n(eVar, map);
        h hVar = (h) eVar;
        this.V0 = hVar.V0;
        this.W0 = hVar.W0;
        this.X0 = hVar.X0;
        this.Y0 = hVar.Y0;
        F1(hVar.f14282a1);
    }

    @Override // o.e
    public boolean p0() {
        return this.f14284c1;
    }

    @Override // o.e
    public d q(d.a aVar) {
        int i10 = a.f14285a[aVar.ordinal()];
        if (i10 == 1 || i10 == 2) {
            if (this.f14282a1 == 1) {
                return this.Z0;
            }
            return null;
        }
        if ((i10 == 3 || i10 == 4) && this.f14282a1 == 0) {
            return this.Z0;
        }
        return null;
    }

    @Override // o.e
    public boolean q0() {
        return this.f14284c1;
    }

    @Override // o.e
    public void v1(l.d dVar, boolean z10) {
        if (M() == null) {
            return;
        }
        int iY = dVar.y(this.Z0);
        if (this.f14282a1 == 1) {
            r1(iY);
            s1(0);
            Q0(M().z());
            p1(0);
            return;
        }
        r1(0);
        s1(iY);
        p1(M().Y());
        Q0(0);
    }

    public d w1() {
        return this.Z0;
    }

    public int x1() {
        return this.f14282a1;
    }

    public int y1() {
        return this.W0;
    }

    public int z1() {
        return this.X0;
    }
}
