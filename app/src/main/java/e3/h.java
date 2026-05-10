package e3;

import g3.b;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class h implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f3.c f11709a;

    private h(f3.c cVar) {
        this.f11709a = cVar;
    }

    public static b.a a(f3.c cVar) {
        return new h(cVar);
    }

    @Override // g3.b.a
    public Object c() {
        return Integer.valueOf(this.f11709a.n());
    }
}
