package c7;

import a7.e;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f4448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f4449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f4451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f4452g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f4454i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f4456k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b7.a f4457l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private b7.a f4458m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final e f4459n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e f4460o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final e f4461p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final e f4462q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final e f4463r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final a7.c f4464s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f4446a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f4447b = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f4453h = 0.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f4455j = 0.0f;

    private b(e eVar, c cVar) {
        e eVar2 = new e();
        this.f4459n = eVar2;
        this.f4460o = new e();
        e eVar3 = new e();
        this.f4461p = eVar3;
        this.f4462q = new e();
        this.f4464s = new a7.c();
        this.f4463r = eVar;
        this.f4457l = cVar.f4465a;
        this.f4458m = cVar.f4466b;
        this.f4450e = false;
        this.f4448c = new a();
        this.f4449d = new a();
        if (cVar.f4469e < 0.0f || cVar.f4468d < 0.0f || cVar.f4470f < 0.0f) {
            return;
        }
        eVar3.e(cVar.f4467c);
        eVar2.e(eVar3).g(this.f4458m.f());
        this.f4454i = cVar.f4468d;
        this.f4451f = cVar.f4469e;
        this.f4452g = cVar.f4470f;
    }

    public static b a(b7.b bVar, c cVar) {
        return new b(bVar.f(), cVar);
    }

    public final b7.a b() {
        return this.f4457l;
    }

    public final b7.a c() {
        return this.f4458m;
    }

    public e d() {
        return this.f4461p;
    }

    public void e(b7.a aVar, float f10) {
        this.f4456k = aVar.f4249s;
        float f11 = this.f4451f * 6.2831855f;
        float fE = aVar.e() * 2.0f * this.f4452g * f11;
        float fE2 = aVar.e() * f11 * f11 * f10;
        float f12 = fE + fE2;
        if (f12 > 1.1920929E-7f) {
            this.f4455j = f10 * f12;
        }
        float f13 = this.f4455j;
        if (f13 != 0.0f) {
            this.f4455j = 1.0f / f13;
        }
        float f14 = this.f4455j;
        this.f4453h = fE2 * f14;
        a7.c cVar = this.f4464s;
        e eVar = cVar.f107a;
        float f15 = this.f4456k;
        eVar.f109a = f15 + f14;
        cVar.f108b.f110b = f15 + f14;
        cVar.a();
        this.f4460o.e(aVar.f4233c).g(this.f4459n).g(this.f4461p).b(this.f4453h);
        e eVar2 = aVar.f4235e;
        float f16 = eVar2.f109a;
        float f17 = this.f4456k;
        e eVar3 = this.f4462q;
        eVar2.f109a = f16 + (eVar3.f109a * f17);
        eVar2.f110b += f17 * eVar3.f110b;
    }

    public void f(float f10) {
        this.f4452g = f10;
    }

    public void g(float f10) {
        this.f4451f = f10;
    }

    public void h(float f10, float f11) {
        e eVar = this.f4461p;
        eVar.f109a = f10;
        eVar.f110b = f11;
    }

    public void i(e eVar) {
        this.f4461p.e(eVar);
    }

    public void j(b7.a aVar) {
        this.f4463r.e(this.f4462q);
        this.f4463r.b(this.f4455j).a(this.f4460o).a(aVar.f4235e).c();
        a7.c cVar = this.f4464s;
        e eVar = this.f4463r;
        a7.c.b(cVar, eVar, eVar);
        this.f4462q.a(this.f4463r);
        aVar.f4235e.a(this.f4463r.b(this.f4456k));
    }
}
