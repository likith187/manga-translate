package e3;

import g3.b;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class f implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f11702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y2.m f11703b;

    private f(j jVar, y2.m mVar) {
        this.f11702a = jVar;
        this.f11703b = mVar;
    }

    public static b.a a(j jVar, y2.m mVar) {
        return new f(jVar, mVar);
    }

    @Override // g3.b.a
    public Object c() {
        return this.f11702a.f11715c.c0(this.f11703b);
    }
}
