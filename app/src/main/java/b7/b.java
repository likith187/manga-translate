package b7;

import a7.e;
import c7.c;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a */
    private a f4256a;

    /* JADX INFO: renamed from: b */
    private c7.b f4257b;

    /* JADX INFO: renamed from: c */
    private int f4258c;

    /* JADX INFO: renamed from: d */
    private int f4259d;

    /* JADX INFO: renamed from: e */
    private final e f4260e;

    public b() {
        this(new e());
    }

    private void e() {
        for (a aVar = this.f4256a; aVar != null; aVar = aVar.f4241k) {
            a7.b.c("world has body ====>>> " + aVar);
        }
    }

    private void g(float f10) {
        for (a aVar = this.f4256a; aVar != null; aVar = aVar.f4241k) {
            aVar.f4254x = false;
        }
        for (c7.b bVar = this.f4257b; bVar != null; bVar = bVar.f4447b) {
            bVar.f4450e = false;
        }
        for (a aVar2 = this.f4256a; aVar2 != null; aVar2 = aVar2.f4241k) {
            if (!aVar2.f4254x && aVar2.f4243m && aVar2.h() != 0) {
                h(aVar2, f10);
                aVar2.f4254x = true;
                aVar2.f4236f.f();
            }
        }
    }

    private void h(a aVar, float f10) {
        aVar.x();
        aVar.f4235e.a(aVar.f4236f.b(aVar.f4249s).b(f10));
        aVar.f4235e.b(1.0f / ((aVar.f4250t * f10) + 1.0f));
        for (c7.a aVar2 = aVar.f4242l; aVar2 != null; aVar2 = aVar2.f4445d) {
            c7.b bVar = aVar2.f4443b;
            if (!bVar.f4450e) {
                bVar.f4450e = true;
                a aVar3 = aVar2.f4442a;
                if (!aVar3.f4254x && aVar3.f4243m) {
                    bVar.e(aVar, f10);
                    for (int i10 = 0; i10 < 4; i10++) {
                        aVar2.f4443b.j(aVar);
                    }
                }
            }
        }
        e eVar = aVar.f4233c;
        float f11 = eVar.f109a;
        e eVar2 = aVar.f4235e;
        eVar.f109a = f11 + (eVar2.f109a * f10);
        eVar.f110b += f10 * eVar2.f110b;
        aVar.w();
    }

    public a a(e eVar, int i10, int i11, float f10, float f11, String str) {
        a aVar = new a(eVar, i10, i11, f10, f11);
        aVar.u(str);
        aVar.f4240j = null;
        a aVar2 = this.f4256a;
        aVar.f4241k = aVar2;
        if (aVar2 != null) {
            aVar2.f4240j = aVar;
        }
        this.f4256a = aVar;
        this.f4258c++;
        if (a7.b.b()) {
            e();
        }
        return aVar;
    }

    public c7.b b(c cVar) {
        c7.b bVarA = c7.b.a(this, cVar);
        if (bVarA == null) {
            return null;
        }
        bVarA.f4446a = null;
        c7.b bVar = this.f4257b;
        bVarA.f4447b = bVar;
        if (bVar != null) {
            bVar.f4446a = bVarA;
        }
        this.f4257b = bVarA;
        this.f4259d++;
        c7.a aVar = bVarA.f4448c;
        aVar.f4443b = bVarA;
        aVar.f4442a = bVarA.c();
        c7.a aVar2 = bVarA.f4448c;
        aVar2.f4444c = null;
        aVar2.f4445d = bVarA.b().f4242l;
        if (bVarA.b().f4242l != null) {
            bVarA.b().f4242l.f4444c = bVarA.f4448c;
        }
        bVarA.b().f4242l = bVarA.f4448c;
        c7.a aVar3 = bVarA.f4449d;
        aVar3.f4443b = bVarA;
        aVar3.f4442a = bVarA.b();
        c7.a aVar4 = bVarA.f4449d;
        aVar4.f4444c = null;
        aVar4.f4445d = bVarA.c().f4242l;
        if (bVarA.c().f4242l != null) {
            bVarA.c().f4242l.f4444c = bVarA.f4449d;
        }
        bVarA.c().f4242l = bVarA.f4449d;
        return bVarA;
    }

    public void c(a aVar) {
        if (this.f4258c <= 0) {
            return;
        }
        c7.a aVar2 = aVar.f4242l;
        while (aVar2 != null) {
            c7.a aVar3 = aVar2.f4445d;
            c7.b bVar = aVar2.f4443b;
            if (bVar != null) {
                d(bVar);
            }
            aVar.f4242l = aVar3;
            aVar2 = aVar3;
        }
        aVar.f4242l = null;
        a aVar4 = aVar.f4240j;
        if (aVar4 != null) {
            aVar4.f4241k = aVar.f4241k;
        }
        a aVar5 = aVar.f4241k;
        if (aVar5 != null) {
            aVar5.f4240j = aVar4;
        }
        if (aVar == this.f4256a) {
            this.f4256a = aVar5;
        }
        this.f4258c--;
    }

    public void d(c7.b bVar) {
        if (this.f4259d <= 0) {
            return;
        }
        c7.b bVar2 = bVar.f4446a;
        if (bVar2 != null) {
            bVar2.f4447b = bVar.f4447b;
        }
        c7.b bVar3 = bVar.f4447b;
        if (bVar3 != null) {
            bVar3.f4446a = bVar2;
        }
        if (bVar == this.f4257b) {
            this.f4257b = bVar3;
        }
        a aVarB = bVar.b();
        a aVarC = bVar.c();
        c7.a aVar = bVar.f4448c;
        c7.a aVar2 = aVar.f4444c;
        if (aVar2 != null) {
            aVar2.f4445d = aVar.f4445d;
        }
        c7.a aVar3 = aVar.f4445d;
        if (aVar3 != null) {
            aVar3.f4444c = aVar2;
        }
        if (aVar == aVarB.f4242l) {
            aVarB.f4242l = aVar3;
        }
        aVar.f4444c = null;
        aVar.f4445d = null;
        c7.a aVar4 = bVar.f4449d;
        c7.a aVar5 = aVar4.f4444c;
        if (aVar5 != null) {
            aVar5.f4445d = aVar4.f4445d;
        }
        c7.a aVar6 = aVar4.f4445d;
        if (aVar6 != null) {
            aVar6.f4444c = aVar5;
        }
        if (aVar4 == aVarC.f4242l) {
            aVarC.f4242l = aVar6;
        }
        aVar4.f4444c = null;
        aVar4.f4445d = null;
        this.f4259d--;
    }

    public e f() {
        return this.f4260e;
    }

    public void i(float f10) {
        g(f10);
    }

    public b(e eVar) {
        this.f4260e = eVar;
        this.f4256a = null;
        this.f4257b = null;
        this.f4258c = 0;
        this.f4259d = 0;
    }
}
