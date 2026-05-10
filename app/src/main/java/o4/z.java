package o4;

/* JADX INFO: loaded from: classes.dex */
class z implements u4.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final u4.a f14439c = x.b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final u4.b f14440d = y.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private u4.a f14441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile u4.b f14442b;

    private z(u4.a aVar, u4.b bVar) {
        this.f14441a = aVar;
        this.f14442b = bVar;
    }

    static z a() {
        return new z(f14439c, f14440d);
    }

    static /* synthetic */ void b(u4.b bVar) {
    }

    static /* synthetic */ Object c() {
        return null;
    }

    void d(u4.b bVar) {
        u4.a aVar;
        if (this.f14442b != f14440d) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            aVar = this.f14441a;
            this.f14441a = null;
            this.f14442b = bVar;
        }
        aVar.a(bVar);
    }

    @Override // u4.b
    public Object get() {
        return this.f14442b.get();
    }
}
