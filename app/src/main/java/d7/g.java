package d7;

import android.graphics.RectF;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g extends d {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected b7.a f11623p;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected int f11629v;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final RectF f11622o = new RectF();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f11624q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected boolean f11625r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected float f11626s = 0.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected float f11627t = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected int f11628u = 0;

    public g(int i10, RectF rectF) {
        this.f11629v = i10;
        i0(rectF);
        if (W()) {
            c7.c cVar = new c7.c();
            this.f11614l = cVar;
            cVar.f4469e = 1.0f;
            cVar.f4470f = 0.4f;
        }
    }

    private void P() {
        if (f(this.f11614l)) {
            this.f11615m.h(this.f11626s, this.f11627t);
        }
    }

    private void Q() {
        l();
        h0();
    }

    private boolean U() {
        return this.f11629v == 1;
    }

    private boolean V() {
        return this.f11629v == 3;
    }

    private boolean W() {
        return U() || V() || X() || Y();
    }

    private boolean X() {
        return this.f11629v == 2;
    }

    private boolean Y() {
        return this.f11629v == 4;
    }

    private void h0() {
        this.f11628u = 0;
        this.f11624q = false;
        this.f11625r = false;
    }

    @Override // d7.d
    public void A() {
        super.A();
        this.f11613k.a(this);
        if (W()) {
            Q();
            k(this.f11623p);
        }
    }

    @Override // d7.d
    public d B(float f10, float f11) {
        if (this.f11613k != null && W()) {
            b7.a aVar = this.f11613k;
            if (aVar.f4244n == 50.0f) {
                aVar.k(f10);
            }
        }
        return super.B(f10, f11);
    }

    @Override // d7.d
    protected void C() {
        super.C();
        g0();
    }

    @Override // d7.d
    protected boolean D() {
        this.f11613k.b(this);
        if (W()) {
            Q();
            this.f11623p.l(false);
        }
        return super.D();
    }

    protected void N() {
        this.f11624q = e0();
        this.f11625r = f0();
        this.f11626s = R(this.f11613k.f().f109a);
        this.f11627t = S(this.f11613k.f().f110b);
    }

    protected void O(float f10, float f11) {
        this.f11628u = 0;
        RectF rectF = this.f11613k.f4239i;
        if (rectF != null) {
            if (this.f11605c || !rectF.isEmpty()) {
                RectF rectF2 = this.f11613k.f4239i;
                if (f10 < rectF2.left) {
                    this.f11628u |= 1;
                } else if (f10 > rectF2.right) {
                    this.f11628u |= 4;
                }
                if (f11 < rectF2.top) {
                    this.f11628u |= 2;
                } else if (f11 > rectF2.bottom) {
                    this.f11628u |= 8;
                }
            }
        }
    }

    protected float R(float f10) {
        RectF rectF = this.f11613k.f4239i;
        if (rectF != null && (this.f11605c || !rectF.isEmpty())) {
            RectF rectF2 = this.f11613k.f4239i;
            float f11 = rectF2.left;
            if (f10 < f11) {
                return f11;
            }
            float f12 = rectF2.right;
            if (f10 > f12) {
                return f12;
            }
        }
        return f10;
    }

    protected float S(float f10) {
        RectF rectF = this.f11613k.f4239i;
        if (rectF != null && (this.f11605c || !rectF.isEmpty())) {
            RectF rectF2 = this.f11613k.f4239i;
            float f11 = rectF2.top;
            if (f10 < f11) {
                return f11;
            }
            float f12 = rectF2.bottom;
            if (f10 > f12) {
                return f12;
            }
        }
        return f10;
    }

    protected void T() {
        int i10 = this.f11629v;
        if (i10 == 0) {
            this.f11612j.f11662d.e(this.f11613k.f());
            E(this.f11613k, this.f11612j.f11662d);
            return;
        }
        if (i10 == 1) {
            this.f11612j.f11662d.e(this.f11613k.f());
            if (this.f11624q) {
                this.f11612j.f11662d.f109a = this.f11623p.f().f109a;
            } else {
                this.f11626s = R(this.f11612j.f11662d.f109a);
            }
            if (e0()) {
                this.f11624q = true;
            }
            if (this.f11625r) {
                this.f11612j.f11662d.f110b = this.f11623p.f().f110b;
            } else {
                this.f11627t = S(this.f11612j.f11662d.f110b);
            }
            if (f0()) {
                this.f11625r = true;
            }
            j0(this.f11612j.f11662d);
            return;
        }
        if (i10 == 2) {
            if (this.f11624q || this.f11625r) {
                this.f11612j.f11662d.e(this.f11623p.f());
            } else {
                if (a0()) {
                    b7.a aVar = this.f11613k;
                    aVar.o(aVar.d().b(0.5f).c());
                }
                this.f11612j.f11662d.d(R(this.f11613k.f().f109a), S(this.f11613k.f().f110b));
                this.f11626s = R(this.f11612j.f11662d.f109a);
                this.f11627t = S(this.f11612j.f11662d.f110b);
            }
            j0(this.f11612j.f11662d);
            return;
        }
        if (i10 == 3) {
            if (this.f11624q || this.f11625r) {
                this.f11612j.f11662d.e(this.f11623p.f());
            } else {
                if (a0()) {
                    this.f11613k.d().f();
                }
                this.f11612j.f11662d.d(R(this.f11613k.f().f109a), S(this.f11613k.f().f110b));
                this.f11626s = R(this.f11612j.f11662d.f109a);
                this.f11627t = S(this.f11612j.f11662d.f110b);
            }
            j0(this.f11612j.f11662d);
            return;
        }
        if (i10 != 4) {
            return;
        }
        this.f11612j.f11662d.e(this.f11613k.f());
        if (this.f11624q) {
            this.f11612j.f11662d.f109a = this.f11623p.f().f109a;
        } else {
            this.f11626s = R(this.f11612j.f11662d.f109a);
        }
        if (e0()) {
            this.f11624q = true;
        } else {
            this.f11624q = false;
        }
        if (this.f11625r) {
            this.f11612j.f11662d.f110b = this.f11623p.f().f110b;
        } else {
            this.f11627t = S(this.f11612j.f11662d.f110b);
        }
        if (f0()) {
            this.f11625r = true;
        } else {
            this.f11625r = false;
        }
        j0(this.f11612j.f11662d);
    }

    protected boolean Z() {
        return (this.f11628u & 8) != 0;
    }

    protected boolean a0() {
        return this.f11628u != 0;
    }

    @Override // d7.d
    public d b(float f10, float f11) {
        super.b(f10, f11);
        b7.a aVar = this.f11623p;
        if (aVar != null) {
            b7.a aVar2 = this.f11613k;
            aVar.t(aVar2.f4245o, aVar2.f4246p);
        }
        return this;
    }

    protected boolean b0() {
        return (this.f11628u & 1) != 0;
    }

    protected boolean c0() {
        return (this.f11628u & 4) != 0;
    }

    protected boolean d0() {
        return (this.f11628u & 2) != 0;
    }

    protected boolean e0() {
        return b0() || c0();
    }

    protected boolean f0() {
        return d0() || Z();
    }

    protected void g0() {
        if (this.f11613k.y(this) && W()) {
            O(this.f11613k.f().f109a, this.f11613k.f().f110b);
            N();
            this.f11623p.l(true);
            this.f11623p.o(this.f11613k.d());
            E(this.f11623p, this.f11613k.f());
            P();
        }
    }

    public void i0(RectF rectF) {
        if (rectF == null || rectF.isEmpty()) {
            return;
        }
        this.f11622o.set(rectF);
        b7.a aVar = this.f11613k;
        if (aVar != null) {
            aVar.q(this.f11622o);
            this.f11613k.y(this);
        }
    }

    protected void j0(a7.e eVar) {
        E(this.f11613k, eVar);
        c7.b bVar = this.f11615m;
        if (bVar != null) {
            bVar.h(this.f11626s, this.f11627t);
            E(this.f11623p, eVar);
        }
    }

    @Override // d7.d
    protected void n() {
        b7.a aVar = this.f11613k;
        if (aVar.f4239i != null) {
            O(aVar.f().f109a, this.f11613k.f().f110b);
        }
        T();
        super.n();
    }

    @Override // d7.d
    public boolean u() {
        return W() ? super.u() : v(this.f11613k.f4235e);
    }

    @Override // d7.d
    protected void w(b7.a aVar) {
        if (W()) {
            super.w(aVar);
        }
    }

    @Override // d7.d
    protected void x() {
        super.x();
        b7.a aVar = this.f11623p;
        if (aVar != null) {
            E(aVar, this.f11612j.f11662d);
        }
    }

    @Override // d7.d
    protected void z() {
        RectF rectF = this.f11622o;
        if (rectF != null && !rectF.isEmpty()) {
            this.f11613k.q(this.f11622o);
            this.f11613k.y(this);
            if (W()) {
                b7.a aVar = this.f11613k;
                if (aVar.f4244n == 50.0f) {
                    aVar.k(this.f11614l.f4469e);
                }
            }
        }
        if (this.f11614l != null) {
            b7.a aVarE = e("Assist", this.f11623p);
            this.f11623p = aVarE;
            this.f11614l.f4466b = aVarE;
        }
    }
}
