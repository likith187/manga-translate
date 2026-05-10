package e3;

import g3.b;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class i implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f11710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y2.m f11711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f11712c;

    private i(j jVar, y2.m mVar, int i10) {
        this.f11710a = jVar;
        this.f11711b = mVar;
        this.f11712c = i10;
    }

    public static b.a a(j jVar, y2.m mVar, int i10) {
        return new i(jVar, mVar, i10);
    }

    @Override // g3.b.a
    public Object c() {
        return j.d(this.f11710a, this.f11711b, this.f11712c);
    }
}
