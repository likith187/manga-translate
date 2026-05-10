package i1;

import j1.a;
import java.util.ArrayList;
import java.util.List;
import n1.t;

/* JADX INFO: loaded from: classes.dex */
public class u implements c, a.b {

    /* JADX INFO: renamed from: a */
    private final String f12512a;

    /* JADX INFO: renamed from: b */
    private final boolean f12513b;

    /* JADX INFO: renamed from: c */
    private final List f12514c = new ArrayList();

    /* JADX INFO: renamed from: d */
    private final t.a f12515d;

    /* JADX INFO: renamed from: e */
    private final j1.a f12516e;

    /* JADX INFO: renamed from: f */
    private final j1.a f12517f;

    /* JADX INFO: renamed from: g */
    private final j1.a f12518g;

    public u(o1.b bVar, n1.t tVar) {
        this.f12512a = tVar.c();
        this.f12513b = tVar.g();
        this.f12515d = tVar.f();
        j1.a aVarA = tVar.e().a();
        this.f12516e = aVarA;
        j1.a aVarA2 = tVar.b().a();
        this.f12517f = aVarA2;
        j1.a aVarA3 = tVar.d().a();
        this.f12518g = aVarA3;
        bVar.j(aVarA);
        bVar.j(aVarA2);
        bVar.j(aVarA3);
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
    }

    @Override // j1.a.b
    public void c() {
        for (int i10 = 0; i10 < this.f12514c.size(); i10++) {
            ((a.b) this.f12514c.get(i10)).c();
        }
    }

    @Override // i1.c
    public void d(List list, List list2) {
    }

    void e(a.b bVar) {
        this.f12514c.add(bVar);
    }

    public j1.a g() {
        return this.f12517f;
    }

    public j1.a h() {
        return this.f12518g;
    }

    public j1.a j() {
        return this.f12516e;
    }

    t.a k() {
        return this.f12515d;
    }

    public boolean l() {
        return this.f12513b;
    }
}
