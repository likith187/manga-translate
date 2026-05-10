package h6;

/* JADX INFO: loaded from: classes2.dex */
public class b implements c {

    /* JADX INFO: renamed from: a */
    private final String f12248a;

    /* JADX INFO: renamed from: b */
    private final g6.m f12249b;

    /* JADX INFO: renamed from: c */
    private final g6.f f12250c;

    /* JADX INFO: renamed from: d */
    private final boolean f12251d;

    /* JADX INFO: renamed from: e */
    private final boolean f12252e;

    public b(String str, g6.m mVar, g6.f fVar, boolean z10, boolean z11) {
        this.f12248a = str;
        this.f12249b = mVar;
        this.f12250c = fVar;
        this.f12251d = z10;
        this.f12252e = z11;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new c6.f(oVar, bVar, this);
    }

    public String b() {
        return this.f12248a;
    }

    public g6.m c() {
        return this.f12249b;
    }

    public g6.f d() {
        return this.f12250c;
    }

    public boolean e() {
        return this.f12252e;
    }

    public boolean f() {
        return this.f12251d;
    }
}
