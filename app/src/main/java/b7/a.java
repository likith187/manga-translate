package b7;

import a7.e;
import android.graphics.RectF;
import d7.d;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f4231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f4232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f4233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f4234d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f4235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final e f4236f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public d f4237g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RectF f4238h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public RectF f4239i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a f4240j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a f4241k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public c7.a f4242l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4243m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f4244n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f4245o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f4246p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f4247q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f4248r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float f4249s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f4250t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f4251u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4252v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f4253w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f4254x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f4255y;

    public a(e eVar, int i10, int i11, float f10, float f11) {
        e eVar2 = new e();
        this.f4231a = eVar2;
        this.f4232b = new e();
        this.f4233c = new e();
        this.f4234d = new e(0.0f, 0.0f);
        this.f4235e = new e();
        this.f4236f = new e();
        this.f4237g = null;
        this.f4243m = false;
        this.f4244n = 50.0f;
        this.f4253w = false;
        this.f4254x = false;
        this.f4255y = "";
        v(i10);
        s(i11);
        eVar2.e(eVar);
        this.f4247q = 1.0f;
        t(f10, f11);
        this.f4253w = true;
        this.f4242l = null;
        this.f4240j = null;
        this.f4241k = null;
    }

    private final void j() {
        if (this.f4251u == 0) {
            p(1.0f);
            n(0.0f);
            return;
        }
        p(this.f4245o * this.f4246p * this.f4247q);
        n(a7.a.a(this.f4248r));
        if (!this.f4253w || this.f4252v == 1) {
            this.f4232b.d(this.f4245o * 0.5f, this.f4246p * 0.5f);
            this.f4233c.e(this.f4231a).a(this.f4232b);
        }
    }

    private final void p(float f10) {
        if (f10 < 1.0f) {
            f10 = 1.0f;
        }
        this.f4248r = f10;
        this.f4249s = 1.0f / f10;
    }

    private void s(int i10) {
        this.f4252v = i10;
    }

    private void v(int i10) {
        this.f4251u = i10;
    }

    public void a(d dVar) {
        RectF rectF = this.f4238h;
        if (rectF == null || rectF.isEmpty() || this.f4237g != dVar) {
            return;
        }
        this.f4238h = null;
        this.f4239i = null;
        k(50.0f);
    }

    public void b(d dVar) {
        d dVar2;
        RectF rectF = this.f4239i;
        if (rectF == null || (dVar2 = this.f4237g) == null || dVar2 != dVar) {
            return;
        }
        rectF.setEmpty();
    }

    public final e c() {
        return this.f4234d;
    }

    public final e d() {
        return this.f4235e;
    }

    public final float e() {
        return this.f4248r;
    }

    public final e f() {
        return this.f4231a;
    }

    public int g() {
        return this.f4252v;
    }

    public int h() {
        return this.f4251u;
    }

    public final e i() {
        return this.f4233c;
    }

    public void k(float f10) {
        this.f4244n = f10;
    }

    public void l(boolean z10) {
        this.f4243m = z10;
    }

    public final void m(float f10, float f11) {
        this.f4234d.d(a7.a.d(f10), a7.a.d(f11));
    }

    public final void n(float f10) {
        this.f4250t = f10;
    }

    public final void o(e eVar) {
        if (this.f4251u == 0) {
            return;
        }
        this.f4235e.e(eVar);
    }

    public void q(RectF rectF) {
        if (rectF == null || rectF.isEmpty()) {
            return;
        }
        if (this.f4238h == null) {
            this.f4238h = new RectF();
        }
        this.f4238h.set(a7.a.d(rectF.left), a7.a.d(rectF.top), a7.a.d(rectF.right), a7.a.d(rectF.bottom));
    }

    public final void r(e eVar) {
        this.f4231a.e(eVar);
        this.f4233c.e(eVar).a(this.f4232b);
    }

    public void t(float f10, float f11) {
        this.f4245o = f10;
        this.f4246p = f11;
        j();
    }

    public String toString() {
        return "Body{mType=" + this.f4251u + ", mProperty=" + this.f4252v + ", mLinearVelocity=" + this.f4235e + ", mLinearDamping=" + this.f4250t + ", mPosition=" + this.f4231a + ", mHookPosition=" + this.f4234d + ", mOriginActiveRect=" + this.f4238h + ", mActiveRect=" + this.f4239i + ", mTag='" + this.f4255y + "'}@" + hashCode();
    }

    void u(String str) {
        this.f4255y = str;
    }

    void w() {
        e eVar = this.f4231a;
        e eVar2 = this.f4233c;
        float f10 = eVar2.f109a;
        e eVar3 = this.f4232b;
        eVar.d(f10 - eVar3.f109a, eVar2.f110b - eVar3.f110b);
    }

    void x() {
        d dVar;
        RectF rectF = this.f4239i;
        if (rectF == null || rectF.isEmpty() || (dVar = this.f4237g) == null || dVar.s() != 0) {
            return;
        }
        RectF rectF2 = this.f4239i;
        float f10 = rectF2.left;
        float f11 = rectF2.right;
        float f12 = rectF2.top;
        float f13 = rectF2.bottom;
        e eVar = this.f4231a;
        float f14 = eVar.f109a;
        if (f14 < f10) {
            this.f4236f.f109a = f10 - f14;
        } else if (f14 > f11) {
            this.f4236f.f109a = f11 - f14;
        }
        float f15 = eVar.f110b;
        if (f15 < f12) {
            this.f4236f.f110b = f12 - f15;
        } else if (f15 > f13) {
            this.f4236f.f110b = f13 - f15;
        }
        float f16 = this.f4244n * 6.2831855f;
        this.f4236f.b(this.f4248r * f16 * f16 * 1.0f);
    }

    public boolean y(d dVar) {
        RectF rectF = this.f4238h;
        if (rectF == null || rectF.isEmpty()) {
            return false;
        }
        this.f4237g = dVar;
        if (this.f4239i == null) {
            this.f4239i = new RectF();
        }
        RectF rectF2 = this.f4239i;
        RectF rectF3 = this.f4238h;
        float f10 = rectF3.left;
        e eVar = this.f4234d;
        float f11 = eVar.f109a;
        float f12 = rectF3.top;
        float f13 = eVar.f110b;
        rectF2.set(f10 + f11, f12 + f13, rectF3.right - (this.f4245o - f11), rectF3.bottom - (this.f4246p - f13));
        return true;
    }
}
