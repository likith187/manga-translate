package e3;

import g3.b;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class g implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f11704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z2.g f11705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Iterable f11706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final y2.m f11707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f11708e;

    private g(j jVar, z2.g gVar, Iterable iterable, y2.m mVar, int i10) {
        this.f11704a = jVar;
        this.f11705b = gVar;
        this.f11706c = iterable;
        this.f11707d = mVar;
        this.f11708e = i10;
    }

    public static b.a a(j jVar, z2.g gVar, Iterable iterable, y2.m mVar, int i10) {
        return new g(jVar, gVar, iterable, mVar, i10);
    }

    @Override // g3.b.a
    public Object c() {
        return j.c(this.f11704a, this.f11705b, this.f11706c, this.f11707d, this.f11708e);
    }
}
