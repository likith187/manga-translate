package y2;

/* JADX INFO: loaded from: classes.dex */
final class p implements w2.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f16543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f16544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w2.b f16545c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final w2.e f16546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q f16547e;

    p(m mVar, String str, w2.b bVar, w2.e eVar, q qVar) {
        this.f16543a = mVar;
        this.f16544b = str;
        this.f16545c = bVar;
        this.f16546d = eVar;
        this.f16547e = qVar;
    }

    static /* synthetic */ void b(Exception exc) {
    }

    @Override // w2.f
    public void a(w2.c cVar) {
        c(cVar, o.b());
    }

    public void c(w2.c cVar, w2.h hVar) {
        this.f16547e.a(l.a().e(this.f16543a).c(cVar).f(this.f16544b).d(this.f16546d).b(this.f16545c).a(), hVar);
    }
}
