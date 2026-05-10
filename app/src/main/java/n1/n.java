package n1;

import com.airbnb.lottie.i0;

/* JADX INFO: loaded from: classes.dex */
public class n implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m1.m f14010b;

    public n(String str, m1.m mVar) {
        this.f14009a = str;
        this.f14010b = mVar;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new i1.q(i0Var, bVar, this);
    }

    public m1.m b() {
        return this.f14010b;
    }

    public String c() {
        return this.f14009a;
    }
}
