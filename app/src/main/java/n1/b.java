package n1;

import com.airbnb.lottie.i0;

/* JADX INFO: loaded from: classes.dex */
public class b implements c {

    /* JADX INFO: renamed from: a */
    private final String f13950a;

    /* JADX INFO: renamed from: b */
    private final m1.m f13951b;

    /* JADX INFO: renamed from: c */
    private final m1.f f13952c;

    /* JADX INFO: renamed from: d */
    private final boolean f13953d;

    /* JADX INFO: renamed from: e */
    private final boolean f13954e;

    public b(String str, m1.m mVar, m1.f fVar, boolean z10, boolean z11) {
        this.f13950a = str;
        this.f13951b = mVar;
        this.f13952c = fVar;
        this.f13953d = z10;
        this.f13954e = z11;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new i1.f(i0Var, bVar, this);
    }

    public String b() {
        return this.f13950a;
    }

    public m1.m c() {
        return this.f13951b;
    }

    public m1.f d() {
        return this.f13952c;
    }

    public boolean e() {
        return this.f13954e;
    }

    public boolean f() {
        return this.f13953d;
    }
}
