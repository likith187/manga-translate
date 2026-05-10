package h6;

/* JADX INFO: loaded from: classes2.dex */
public class l implements c {

    /* JADX INFO: renamed from: a */
    private final String f12301a;

    /* JADX INFO: renamed from: b */
    private final g6.b f12302b;

    /* JADX INFO: renamed from: c */
    private final g6.b f12303c;

    /* JADX INFO: renamed from: d */
    private final g6.l f12304d;

    /* JADX INFO: renamed from: e */
    private final boolean f12305e;

    public l(String str, g6.b bVar, g6.b bVar2, g6.l lVar, boolean z10) {
        this.f12301a = str;
        this.f12302b = bVar;
        this.f12303c = bVar2;
        this.f12304d = lVar;
        this.f12305e = z10;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new c6.p(oVar, bVar, this);
    }

    public g6.b b() {
        return this.f12302b;
    }

    public String c() {
        return this.f12301a;
    }

    public g6.b d() {
        return this.f12303c;
    }

    public g6.l e() {
        return this.f12304d;
    }

    public boolean f() {
        return this.f12305e;
    }
}
