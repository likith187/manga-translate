package c6;

import d6.a;
import h6.s;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class u implements c, a.b {

    /* JADX INFO: renamed from: a */
    private final String f4435a;

    /* JADX INFO: renamed from: b */
    private final boolean f4436b;

    /* JADX INFO: renamed from: c */
    private final List f4437c = new ArrayList();

    /* JADX INFO: renamed from: d */
    private final s.a f4438d;

    /* JADX INFO: renamed from: e */
    private final d6.a f4439e;

    /* JADX INFO: renamed from: f */
    private final d6.a f4440f;

    /* JADX INFO: renamed from: g */
    private final d6.a f4441g;

    public u(i6.b bVar, h6.s sVar) {
        this.f4435a = sVar.c();
        this.f4436b = sVar.g();
        this.f4438d = sVar.f();
        d6.a aVarA = sVar.e().a();
        this.f4439e = aVarA;
        d6.a aVarA2 = sVar.b().a();
        this.f4440f = aVarA2;
        d6.a aVarA3 = sVar.d().a();
        this.f4441g = aVarA3;
        bVar.j(aVarA);
        bVar.j(aVarA2);
        bVar.j(aVarA3);
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
    }

    @Override // d6.a.b
    public void c() {
        for (int i10 = 0; i10 < this.f4437c.size(); i10++) {
            ((a.b) this.f4437c.get(i10)).c();
        }
    }

    @Override // c6.c
    public void d(List list, List list2) {
    }

    void e(a.b bVar) {
        this.f4437c.add(bVar);
    }

    public d6.a h() {
        return this.f4440f;
    }

    public d6.a i() {
        return this.f4441g;
    }

    public d6.a j() {
        return this.f4439e;
    }

    s.a k() {
        return this.f4438d;
    }

    public boolean l() {
        return this.f4436b;
    }
}
