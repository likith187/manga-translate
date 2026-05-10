package o4;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class i implements u4.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f14403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f14404b;

    private i(m mVar, c cVar) {
        this.f14403a = mVar;
        this.f14404b = cVar;
    }

    public static u4.b a(m mVar, c cVar) {
        return new i(mVar, cVar);
    }

    @Override // u4.b
    public Object get() {
        m mVar = this.f14403a;
        c cVar = this.f14404b;
        return cVar.d().a(new b0(cVar, mVar));
    }
}
