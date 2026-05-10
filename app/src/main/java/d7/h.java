package d7;

import android.graphics.RectF;

/* JADX INFO: loaded from: classes2.dex */
public class h extends d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private b7.a f11630o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private c7.c f11631p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private c7.b f11632q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f11633r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f11634s = true;

    public h() {
        h();
        c7.c cVar = new c7.c();
        this.f11631p = cVar;
        cVar.f4469e = 2000000.0f;
        cVar.f4470f = 100.0f;
    }

    private void P() {
        if (f(this.f11614l)) {
            this.f11615m.i(this.f11612j.f11662d);
            c7.b bVarG = g(this.f11631p, this.f11630o);
            this.f11632q = bVarG;
            if (bVarG != null) {
                bVarG.i(this.f11612j.f11662d);
                this.f11630o.l(true);
            }
        }
    }

    private void Q() {
        if (l()) {
            m(this.f11632q);
            this.f11630o.l(false);
        }
    }

    private void R(float f10, float f11) {
        if (a7.b.b()) {
            a7.b.c("DragBehavior : dragTo : x =:" + f10 + ",y =:" + f11);
        }
        if (this.f11615m != null) {
            this.f11612j.f11662d.d(U(a7.a.d(f10)), V(a7.a.d(f11)));
            this.f11615m.i(this.f11612j.f11662d);
            c7.b bVar = this.f11632q;
            if (bVar != null) {
                bVar.i(this.f11612j.f11662d);
            }
        }
    }

    private void Z(a7.e eVar) {
        E(this.f11613k, eVar);
        b7.a aVar = this.f11630o;
        if (aVar != null) {
            E(aVar, eVar);
        }
    }

    @Override // d7.d
    void A() {
        super.A();
        b7.a aVar = this.f11630o;
        if (aVar != null) {
            k(aVar);
        }
    }

    @Override // d7.d
    public d B(float f10, float f11) {
        b7.a aVar = this.f11613k;
        if (aVar != null) {
            aVar.k(f10);
        }
        return super.B(f10, f11);
    }

    @Override // d7.d
    protected void C() {
        super.C();
        P();
    }

    @Override // d7.d
    protected boolean D() {
        Q();
        return super.D();
    }

    public void N(float f10, float f11) {
        O(f10, 0.0f, f11, 0.0f);
    }

    public void O(float f10, float f11, float f12, float f13) {
        if (a7.b.b()) {
            a7.b.c("DragBehavior : beginDrag : x =:" + f10 + ",y =:" + f11 + ",currentX =:" + f12 + ",currentY =:" + f13);
        }
        this.f11613k.m(f10 - f12, f11 - f13);
        this.f11613k.y(this);
        this.f11613k.f4235e.f();
        b7.a aVar = this.f11630o;
        if (aVar != null) {
            aVar.f4235e.f();
        }
        this.f11612j.f11662d.d(U(a7.a.d(f10)), V(a7.a.d(f11)));
        Z(this.f11612j.f11662d);
        this.f11633r = true;
        C();
    }

    public void S(float f10) {
        T(f10, 0.0f);
    }

    public void T(float f10, float f11) {
        if (a7.b.b()) {
            a7.b.c("DragBehavior : endDrag : xVel =:" + f10 + ",yVel =:" + f11);
        }
        Q();
        b7.a aVar = this.f11630o;
        if (aVar != null) {
            a7.e eVar = aVar.f4235e;
            float f12 = eVar.f109a;
            f10 = f12 == 0.0f ? 0.0f : (f12 / a7.d.a(f12)) * a7.d.a(f10);
            float f13 = eVar.f110b;
            f11 = f13 == 0.0f ? 0.0f : a7.d.a(f11) * (f13 / a7.d.a(f13));
        }
        this.f11612j.e(f10, f11);
        this.f11633r = false;
        this.f11613k.b(this);
    }

    protected float U(float f10) {
        RectF rectF;
        if (!this.f11634s && (rectF = this.f11613k.f4239i) != null && (this.f11605c || !rectF.isEmpty())) {
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

    protected float V(float f10) {
        RectF rectF;
        if (!this.f11634s && (rectF = this.f11613k.f4239i) != null && (this.f11605c || !rectF.isEmpty())) {
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

    public boolean W() {
        return this.f11633r;
    }

    public void X(float f10) {
        R(f10, 0.0f);
    }

    public void Y(float f10, float f11) {
        R(f10, f11);
    }

    @Override // d7.d
    public d b(float f10, float f11) {
        super.b(f10, f11);
        b7.a aVar = this.f11630o;
        if (aVar != null) {
            b7.a aVar2 = this.f11613k;
            aVar.t(aVar2.f4245o, aVar2.f4246p);
        }
        return this;
    }

    @Override // d7.d
    public int s() {
        return 0;
    }

    @Override // d7.d
    public boolean u() {
        return !this.f11633r;
    }

    @Override // d7.d
    protected void w(b7.a aVar) {
        super.w(aVar);
        c7.c cVar = this.f11631p;
        if (cVar != null) {
            cVar.f4465a = aVar;
        }
    }

    @Override // d7.d
    protected void x() {
    }

    @Override // d7.d
    protected void z() {
        super.z();
        this.f11613k.k(this.f11614l.f4469e);
        if (this.f11631p != null) {
            b7.a aVarE = e("SimulateTouch", this.f11630o);
            this.f11630o = aVarE;
            this.f11631p.f4466b = aVarE;
        }
    }
}
