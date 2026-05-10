package n1;

import com.airbnb.lottie.i0;

/* JADX INFO: loaded from: classes.dex */
public class m implements c {

    /* JADX INFO: renamed from: a */
    private final String f14004a;

    /* JADX INFO: renamed from: b */
    private final m1.b f14005b;

    /* JADX INFO: renamed from: c */
    private final m1.b f14006c;

    /* JADX INFO: renamed from: d */
    private final m1.l f14007d;

    /* JADX INFO: renamed from: e */
    private final boolean f14008e;

    public m(String str, m1.b bVar, m1.b bVar2, m1.l lVar, boolean z10) {
        this.f14004a = str;
        this.f14005b = bVar;
        this.f14006c = bVar2;
        this.f14007d = lVar;
        this.f14008e = z10;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new i1.p(i0Var, bVar, this);
    }

    public m1.b b() {
        return this.f14005b;
    }

    public String c() {
        return this.f14004a;
    }

    public m1.b d() {
        return this.f14006c;
    }

    public m1.l e() {
        return this.f14007d;
    }

    public boolean f() {
        return this.f14008e;
    }
}
