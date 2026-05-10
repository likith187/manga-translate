package d7;

import android.graphics.RectF;

/* JADX INFO: loaded from: classes2.dex */
public class c extends g {
    private float A;
    private float B;
    private float C;
    private float D;
    private float E;
    private float F;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final float f11599w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f11600x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f11601y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f11602z;

    public c(int i10, int i11, RectF rectF) {
        super(1, rectF);
        this.f11599w = a7.a.c(27.0f);
        this.f11602z = 5;
        this.A = Float.MAX_VALUE;
        this.B = Float.MAX_VALUE;
        this.C = Float.MAX_VALUE;
        this.D = Float.MAX_VALUE;
        this.E = 0.0f;
        this.F = 0.0f;
        this.f11601y = i10;
        this.f11600x = i11;
    }

    private void k0() {
        int i10 = this.f11600x;
        float f10 = (i10 & 1) != 0 ? this.f11626s - this.f11613k.f4239i.left : Float.MAX_VALUE;
        float f11 = (i10 & 2) != 0 ? this.f11613k.f4239i.right - this.f11626s : Float.MAX_VALUE;
        float f12 = (i10 & 4) != 0 ? this.f11627t - this.f11613k.f4239i.top : Float.MAX_VALUE;
        float f13 = (i10 & 8) != 0 ? this.f11613k.f4239i.bottom - this.f11627t : Float.MAX_VALUE;
        if (f10 > this.A && (this.f11602z & 1) != 0) {
            f10 = Float.MAX_VALUE;
        }
        if (f11 > this.B && (this.f11602z & 2) != 0) {
            f11 = Float.MAX_VALUE;
        }
        if (f12 > this.C && (this.f11602z & 4) != 0) {
            f12 = Float.MAX_VALUE;
        }
        float f14 = (f13 <= this.D || (this.f11602z & 8) == 0) ? f13 : Float.MAX_VALUE;
        int i11 = this.f11601y;
        if (i11 == 0) {
            float fC = a7.d.c(a7.d.c(f12, f14), a7.d.c(f10, f11));
            if (a7.d.b(fC, f10)) {
                q0();
            } else if (a7.d.b(fC, f11)) {
                r0();
            } else if (a7.d.b(fC, f12)) {
                s0();
            } else if (a7.d.b(fC, f14)) {
                o0();
            }
        } else if (i11 == 1) {
            float fC2 = a7.d.c(f10, f11);
            float fC3 = a7.d.c(f12, f14);
            if (a7.d.b(fC2, f10)) {
                q0();
            } else if (a7.d.b(fC2, f11)) {
                r0();
            }
            if (a7.d.b(fC3, f12)) {
                s0();
            } else if (a7.d.b(fC3, f14)) {
                o0();
            }
        }
        if (a7.b.b()) {
            a7.b.c("AttachmentBehavior : attachCloseSideWithConstraint mPropertyBody.mActiveRect =:" + this.f11613k.f4239i + ",mCurrentSide =:" + this.f11602z);
        }
    }

    private void l0(float f10, float f11) {
        a7.e eVarF = this.f11613k.f();
        RectF rectF = this.f11613k.f4239i;
        float f12 = rectF.left;
        float f13 = rectF.right;
        float f14 = rectF.top;
        float f15 = rectF.bottom;
        float f16 = f10 == 0.0f ? Float.MAX_VALUE : f11 / f10;
        if (f10 <= 0.0f) {
            float f17 = eVarF.f110b;
            float f18 = eVarF.f109a;
            float f19 = (f17 - f14) / (f18 - f12);
            if (f11 <= 0.0f && f16 > f19) {
                this.f11627t = f14;
                this.f11626s = R(((f14 - f17) / f16) + f18);
                k0();
                return;
            }
            float f20 = (f17 - f15) / (f18 - f12);
            if (f11 <= 0.0f || f16 > f20) {
                this.f11626s = f12;
                this.f11627t = S((f16 * (f12 - f18)) + f17);
                k0();
                return;
            } else {
                this.f11627t = f15;
                this.f11626s = R(((f15 - f17) / f16) + f18);
                k0();
                return;
            }
        }
        float f21 = eVarF.f110b;
        float f22 = eVarF.f109a;
        float f23 = (f21 - f14) / (f22 - f13);
        if (f11 <= 0.0f && f16 <= f23) {
            this.f11627t = f14;
            this.f11626s = R(((f14 - f21) / f16) + f22);
            k0();
            return;
        }
        float f24 = (f21 - f15) / (f22 - f13);
        if (f11 <= 0.0f || f16 <= f24) {
            this.f11626s = f13;
            this.f11627t = S((f16 * (f13 - f22)) + f21);
            k0();
        } else {
            this.f11627t = f15;
            this.f11626s = R(((f15 - f21) / f16) + f22);
            k0();
        }
    }

    private boolean m0(float f10, float f11) {
        int i10 = this.f11601y;
        if (i10 == 0) {
            float fD = a7.d.d((f10 * f10) + (f11 * f11));
            float f12 = this.f11599w;
            if (fD >= a7.d.d(f12 * f12) && !a0()) {
                return false;
            }
            p0();
            return true;
        }
        if (i10 != 1) {
            return false;
        }
        float fD2 = a7.d.d((f10 * f10) + (f11 * f11));
        float f13 = this.f11599w;
        if (fD2 >= a7.d.d(f13 * f13)) {
            return false;
        }
        p0();
        return true;
    }

    private void n0(float f10, float f11) {
        if (f10 <= 0.0f) {
            q0();
        } else {
            r0();
        }
        if (f11 <= 0.0f) {
            s0();
        } else {
            o0();
        }
    }

    private void o0() {
        this.f11627t = this.f11613k.f4239i.bottom;
        this.f11602z = ((~(this.f11601y == 1 ? 12 : this.f11602z)) & this.f11602z) | 8;
    }

    private void p0() {
        this.f11626s = R(this.f11612j.f11662d.f109a);
        this.f11627t = S(this.f11612j.f11662d.f110b);
        if (a7.b.b()) {
            a7.b.c("AttachmentBehavior : convertToCloseSide mConstraintPointX =:" + this.f11626s + ",mConstraintPointY =:" + this.f11627t + ",mActiveUIItem.mMoveTarget =:" + this.f11612j.f11662d);
        }
        k0();
    }

    private void q0() {
        this.f11626s = this.f11613k.f4239i.left;
        this.f11602z = ((~(this.f11601y == 1 ? 3 : this.f11602z)) & this.f11602z) | 1;
    }

    private void r0() {
        this.f11626s = this.f11613k.f4239i.right;
        this.f11602z = ((~(this.f11601y == 1 ? 3 : this.f11602z)) & this.f11602z) | 2;
    }

    private void s0() {
        this.f11627t = this.f11613k.f4239i.top;
        this.f11602z = ((~(this.f11601y == 1 ? 12 : this.f11602z)) & this.f11602z) | 4;
    }

    @Override // d7.g, d7.d
    protected void C() {
        super.C();
        float f10 = this.F;
        if (f10 != 0.0f) {
            b7.a aVar = this.f11613k;
            this.E = aVar.f4250t;
            aVar.n(f10);
            b7.a aVar2 = this.f11623p;
            if (aVar2 != null) {
                aVar2.n(this.F);
            }
        }
    }

    @Override // d7.g, d7.d
    protected boolean D() {
        float f10 = this.E;
        if (f10 != 0.0f) {
            this.f11613k.n(f10);
            b7.a aVar = this.f11623p;
            if (aVar != null) {
                aVar.n(this.E);
            }
        }
        return super.D();
    }

    @Override // d7.g
    protected void N() {
        a7.e eVar = this.f11612j.f11665g;
        if (m0(eVar.f109a, eVar.f110b)) {
            return;
        }
        int i10 = this.f11601y;
        if (i10 == 0) {
            a7.e eVar2 = this.f11612j.f11665g;
            l0(eVar2.f109a, eVar2.f110b);
        } else {
            if (i10 != 1) {
                return;
            }
            a7.e eVar3 = this.f11612j.f11665g;
            n0(eVar3.f109a, eVar3.f110b);
        }
    }

    @Override // d7.g
    protected void T() {
        int i10 = this.f11601y;
        if (i10 != 0) {
            if (i10 == 1) {
                this.f11612j.f11662d.e(this.f11623p.f());
                j0(this.f11612j.f11662d);
                return;
            }
            return;
        }
        this.f11612j.f11662d.e(this.f11623p.f());
        if ((this.f11602z & 3) != 0) {
            if (!this.f11625r) {
                this.f11612j.f11662d.f110b = this.f11613k.f().f110b;
                this.f11627t = S(this.f11612j.f11662d.f110b);
            }
            if (f0()) {
                this.f11625r = true;
            }
        }
        if ((this.f11602z & 12) != 0) {
            if (!this.f11624q) {
                this.f11612j.f11662d.f109a = this.f11613k.f().f109a;
                this.f11626s = R(this.f11612j.f11662d.f109a);
            }
            if (e0()) {
                this.f11624q = true;
            }
        }
        if (this.f11624q && this.f11625r) {
            this.f11612j.f11662d.e(this.f11623p.f());
        }
        j0(this.f11612j.f11662d);
    }

    @Override // d7.d
    public int s() {
        return 3;
    }

    public void t0(int i10) {
        this.f11600x = i10;
    }

    public void u0() {
        C();
    }

    public void v0() {
        D();
    }
}
