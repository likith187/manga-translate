package d7;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: f */
    protected HashMap f11608f;

    /* JADX INFO: renamed from: h */
    protected Runnable f11610h;

    /* JADX INFO: renamed from: i */
    protected Runnable f11611i;

    /* JADX INFO: renamed from: j */
    protected n f11612j;

    /* JADX INFO: renamed from: k */
    protected b7.a f11613k;

    /* JADX INFO: renamed from: l */
    protected c7.c f11614l;

    /* JADX INFO: renamed from: n */
    protected Object f11616n;

    /* JADX INFO: renamed from: a */
    protected float f11603a = 1.0f;

    /* JADX INFO: renamed from: b */
    protected boolean f11604b = false;

    /* JADX INFO: renamed from: c */
    protected boolean f11605c = false;

    /* JADX INFO: renamed from: d */
    protected boolean f11606d = false;

    /* JADX INFO: renamed from: e */
    protected j f11607e = null;

    /* JADX INFO: renamed from: g */
    protected l f11609g = null;

    /* JADX INFO: renamed from: m */
    protected c7.b f11615m = null;

    protected d() {
        y();
    }

    private void G(n nVar, j jVar) {
        jVar.e(nVar);
    }

    private void J() {
        l lVar = this.f11609g;
        if (lVar != null && this.f11613k == null) {
            n nVarS = lVar.s(this.f11616n);
            this.f11612j = nVarS;
            l lVar2 = this.f11609g;
            j jVar = this.f11607e;
            this.f11613k = lVar2.r(nVarS, jVar != null ? jVar.f11638a : 1);
            z();
            if (a7.b.b()) {
                a7.b.c("verifyBodyProperty : mActiveUIItem =:" + this.f11612j + ",mPropertyBody =:" + this.f11613k + ",this =:" + this);
            }
        }
    }

    private void a(j jVar) {
        if (this.f11608f == null) {
            this.f11608f = new HashMap(1);
        }
        if (this.f11607e == null) {
            this.f11607e = jVar;
            J();
        }
        this.f11608f.put(jVar.f11639b, jVar);
        this.f11603a = a7.d.c(this.f11603a, jVar.f11640c);
    }

    private b7.a j(a7.e eVar, int i10, int i11, float f10, float f11, String str) {
        return this.f11609g.k(eVar, i10, i11, f10, f11, str);
    }

    void A() {
        if (a7.b.b()) {
            a7.b.c("onRemove mIsStarted =:" + this.f11605c + ",this =:" + this);
        }
        this.f11611i = null;
        D();
    }

    public d B(float f10, float f11) {
        c7.c cVar = this.f11614l;
        if (cVar != null) {
            cVar.f4469e = f10;
            cVar.f4470f = f11;
            c7.b bVar = this.f11615m;
            if (bVar != null) {
                bVar.g(f10);
                this.f11615m.f(f11);
            }
        }
        return this;
    }

    protected void C() {
        if (this.f11605c) {
            return;
        }
        I();
        H();
        x();
        n();
        this.f11609g.J(this);
        this.f11609g.F(this);
        this.f11605c = true;
        Runnable runnable = this.f11610h;
        if (runnable != null) {
            runnable.run();
        }
    }

    protected boolean D() {
        if (!this.f11605c) {
            return false;
        }
        if (s() != 0) {
            this.f11612j.f11665g.f();
        }
        this.f11609g.H(this);
        this.f11605c = false;
        Runnable runnable = this.f11611i;
        if (runnable == null) {
            return true;
        }
        runnable.run();
        return true;
    }

    protected void E(b7.a aVar, a7.e eVar) {
        aVar.r(eVar);
    }

    void F() {
        HashMap map = this.f11608f;
        if (map == null) {
            return;
        }
        for (j jVar : map.values()) {
            if (jVar != null) {
                G(this.f11612j, jVar);
            }
        }
    }

    protected void H() {
        HashMap map = this.f11608f;
        if (map == null) {
            n nVar = this.f11612j;
            nVar.c(nVar.a().f11655a, this.f11612j.a().f11656b);
            return;
        }
        for (j jVar : map.values()) {
            if (jVar != null) {
                jVar.f(this.f11612j);
            }
        }
    }

    protected void I() {
        if (this.f11606d) {
            this.f11606d = false;
            this.f11613k.d().d(a7.a.d(this.f11612j.f11665g.f109a), a7.a.d(this.f11612j.f11665g.f110b));
        }
    }

    public d K(j... jVarArr) {
        for (j jVar : jVarArr) {
            a(jVar);
        }
        return this;
    }

    public d L(Runnable runnable) {
        this.f11610h = runnable;
        return this;
    }

    public d M(Runnable runnable) {
        this.f11611i = runnable;
        return this;
    }

    public d b(float f10, float f11) {
        if (a7.b.b()) {
            a7.b.c("applySizeChanged : width =:" + f10 + ",height =:" + f11);
        }
        n nVar = this.f11612j;
        if (nVar != null) {
            nVar.b(f10, f11);
        }
        b7.a aVar = this.f11613k;
        if (aVar != null) {
            aVar.t(a7.a.d(f10), a7.a.d(f11));
            this.f11613k.y(this);
        }
        return this;
    }

    public d c(Object obj) {
        this.f11616n = obj;
        J();
        return this;
    }

    d d(l lVar) {
        this.f11609g = lVar;
        J();
        w(this.f11609g.q());
        return this;
    }

    protected b7.a e(String str, b7.a aVar) {
        if (aVar == null) {
            b7.a aVar2 = this.f11613k;
            a7.e eVar = aVar2.f4231a;
            int iH = aVar2.h();
            int iG = this.f11613k.g();
            b7.a aVar3 = this.f11613k;
            aVar = j(eVar, iH, iG, aVar3.f4245o, aVar3.f4246p, str);
        } else {
            b7.a aVar4 = this.f11613k;
            aVar.t(aVar4.f4245o, aVar4.f4246p);
        }
        aVar.o(this.f11613k.d());
        aVar.l(false);
        return aVar;
    }

    protected boolean f(c7.c cVar) {
        if (this.f11604b) {
            return false;
        }
        c7.b bVarG = g(cVar, this.f11613k);
        this.f11615m = bVarG;
        if (bVarG == null) {
            return false;
        }
        this.f11604b = true;
        return true;
    }

    protected c7.b g(c7.c cVar, b7.a aVar) {
        if (cVar == null || aVar == null) {
            return null;
        }
        cVar.f4467c.e(aVar.i());
        return this.f11609g.l(cVar);
    }

    protected void h() {
        i(4.0f, 0.2f);
    }

    protected void i(float f10, float f11) {
        c7.c cVar = new c7.c();
        this.f11614l = cVar;
        cVar.f4469e = 4.0f;
        cVar.f4470f = 0.2f;
    }

    protected boolean k(b7.a aVar) {
        return this.f11609g.o(aVar);
    }

    protected boolean l() {
        if (!this.f11604b) {
            return false;
        }
        m(this.f11615m);
        this.f11615m = null;
        this.f11604b = false;
        return true;
    }

    protected void m(c7.b bVar) {
        this.f11609g.p(bVar);
    }

    void n() {
        this.f11612j.f(a7.a.c(this.f11613k.f().f109a - this.f11613k.c().f109a), a7.a.c(this.f11613k.f().f110b - this.f11613k.c().f110b));
    }

    public Object o() {
        j jVar = this.f11607e;
        if (jVar != null) {
            return Float.valueOf(q(this.f11612j, jVar));
        }
        if (r() != null) {
            return Float.valueOf(r().f11655a);
        }
        return null;
    }

    public a7.e p() {
        b7.a aVar = this.f11613k;
        return aVar != null ? aVar.d() : new a7.e();
    }

    protected float q(Object obj, j jVar) {
        return jVar.a(obj);
    }

    public m r() {
        n nVar = this.f11612j;
        if (nVar != null) {
            return nVar.a();
        }
        return null;
    }

    public abstract int s();

    protected boolean t(a7.e eVar) {
        c7.b bVar = this.f11615m;
        if (bVar != null) {
            return a7.a.b(a7.d.a(bVar.d().f109a - eVar.f109a) + a7.d.a(this.f11615m.d().f110b - eVar.f110b));
        }
        return true;
    }

    public String toString() {
        return "Behavior{type=" + s() + ", mValueThreshold=" + this.f11603a + ", mTarget=" + this.f11616n + ", mPropertyBody=" + this.f11613k + "}@" + hashCode();
    }

    public boolean u() {
        return v(this.f11613k.f4235e) && t(this.f11613k.f());
    }

    protected boolean v(a7.e eVar) {
        return a7.a.b(a7.d.a(eVar.f109a)) && a7.a.b(a7.d.a(eVar.f110b));
    }

    protected void w(b7.a aVar) {
        c7.c cVar = this.f11614l;
        if (cVar != null) {
            cVar.f4465a = aVar;
            aVar.l(true);
        }
    }

    protected void x() {
        n nVar = this.f11612j;
        nVar.f11662d.d((a7.a.d(nVar.f11663e.f109a) + this.f11613k.c().f109a) / this.f11603a, (a7.a.d(this.f11612j.f11663e.f110b) + this.f11613k.c().f110b) / this.f11603a);
        E(this.f11613k, this.f11612j.f11662d);
    }

    protected void y() {
    }

    protected void z() {
        c7.c cVar = this.f11614l;
        if (cVar != null) {
            cVar.f4466b = this.f11613k;
        }
    }
}
