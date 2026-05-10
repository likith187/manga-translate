package o;

import java.util.HashSet;
import o.e;
import p.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class m extends j {
    private int X0 = 0;
    private int Y0 = 0;
    private int Z0 = 0;

    /* JADX INFO: renamed from: a1 */
    private int f14287a1 = 0;

    /* JADX INFO: renamed from: b1 */
    private int f14288b1 = 0;

    /* JADX INFO: renamed from: c1 */
    private int f14289c1 = 0;

    /* JADX INFO: renamed from: d1 */
    private int f14290d1 = 0;

    /* JADX INFO: renamed from: e1 */
    private int f14291e1 = 0;

    /* JADX INFO: renamed from: f1 */
    private boolean f14292f1 = false;

    /* JADX INFO: renamed from: g1 */
    private int f14293g1 = 0;

    /* JADX INFO: renamed from: h1 */
    private int f14294h1 = 0;

    /* JADX INFO: renamed from: i1 */
    protected b.a f14295i1 = new b.a();

    /* JADX INFO: renamed from: j1 */
    b.InterfaceC0199b f14296j1 = null;

    public boolean A1(HashSet hashSet) {
        for (int i10 = 0; i10 < this.W0; i10++) {
            if (hashSet.contains(this.V0[i10])) {
                return true;
            }
        }
        return false;
    }

    public int B1() {
        return this.f14294h1;
    }

    public int C1() {
        return this.f14293g1;
    }

    public int D1() {
        return this.Y0;
    }

    public int E1() {
        return this.f14290d1;
    }

    public int F1() {
        return this.f14291e1;
    }

    public int G1() {
        return this.X0;
    }

    public abstract void H1(int i10, int i11, int i12, int i13);

    protected void I1(e eVar, e.b bVar, int i10, e.b bVar2, int i11) {
        while (this.f14296j1 == null && M() != null) {
            this.f14296j1 = ((f) M()).O1();
        }
        b.a aVar = this.f14295i1;
        aVar.f15062a = bVar;
        aVar.f15063b = bVar2;
        aVar.f15064c = i10;
        aVar.f15065d = i11;
        this.f14296j1.b(eVar, aVar);
        eVar.p1(this.f14295i1.f15066e);
        eVar.Q0(this.f14295i1.f15067f);
        eVar.P0(this.f14295i1.f15069h);
        eVar.F0(this.f14295i1.f15068g);
    }

    protected boolean J1() {
        e eVar = this.f14174c0;
        b.InterfaceC0199b interfaceC0199bO1 = eVar != null ? ((f) eVar).O1() : null;
        if (interfaceC0199bO1 == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.W0; i10++) {
            e eVar2 = this.V0[i10];
            if (eVar2 != null && !(eVar2 instanceof h)) {
                e.b bVarW = eVar2.w(0);
                e.b bVarW2 = eVar2.w(1);
                e.b bVar = e.b.MATCH_CONSTRAINT;
                if (bVarW != bVar || eVar2.f14213w == 1 || bVarW2 != bVar || eVar2.f14215x == 1) {
                    if (bVarW == bVar) {
                        bVarW = e.b.WRAP_CONTENT;
                    }
                    if (bVarW2 == bVar) {
                        bVarW2 = e.b.WRAP_CONTENT;
                    }
                    b.a aVar = this.f14295i1;
                    aVar.f15062a = bVarW;
                    aVar.f15063b = bVarW2;
                    aVar.f15064c = eVar2.Y();
                    this.f14295i1.f15065d = eVar2.z();
                    interfaceC0199bO1.b(eVar2, this.f14295i1);
                    eVar2.p1(this.f14295i1.f15066e);
                    eVar2.Q0(this.f14295i1.f15067f);
                    eVar2.F0(this.f14295i1.f15068g);
                }
            }
        }
        return true;
    }

    public boolean K1() {
        return this.f14292f1;
    }

    protected void L1(boolean z10) {
        this.f14292f1 = z10;
    }

    public void M1(int i10, int i11) {
        this.f14293g1 = i10;
        this.f14294h1 = i11;
    }

    public void N1(int i10) {
        this.Z0 = i10;
        this.X0 = i10;
        this.f14287a1 = i10;
        this.Y0 = i10;
        this.f14288b1 = i10;
        this.f14289c1 = i10;
    }

    public void O1(int i10) {
        this.Y0 = i10;
    }

    public void P1(int i10) {
        this.f14289c1 = i10;
    }

    public void Q1(int i10) {
        this.Z0 = i10;
        this.f14290d1 = i10;
    }

    public void R1(int i10) {
        this.f14287a1 = i10;
        this.f14291e1 = i10;
    }

    public void S1(int i10) {
        this.f14288b1 = i10;
        this.f14290d1 = i10;
        this.f14291e1 = i10;
    }

    public void T1(int i10) {
        this.X0 = i10;
    }

    @Override // o.j, o.i
    public void a(f fVar) {
        z1();
    }

    public void y1(boolean z10) {
        int i10 = this.f14288b1;
        if (i10 > 0 || this.f14289c1 > 0) {
            if (z10) {
                this.f14290d1 = this.f14289c1;
                this.f14291e1 = i10;
            } else {
                this.f14290d1 = i10;
                this.f14291e1 = this.f14289c1;
            }
        }
    }

    public void z1() {
        for (int i10 = 0; i10 < this.W0; i10++) {
            e eVar = this.V0[i10];
            if (eVar != null) {
                eVar.Z0(true);
            }
        }
    }
}
