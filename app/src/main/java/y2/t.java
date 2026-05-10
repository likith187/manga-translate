package y2;

/* JADX INFO: loaded from: classes.dex */
public final class t implements a3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m8.a f16553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m8.a f16554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m8.a f16555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m8.a f16556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m8.a f16557e;

    public t(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4, m8.a aVar5) {
        this.f16553a = aVar;
        this.f16554b = aVar2;
        this.f16555c = aVar3;
        this.f16556d = aVar4;
        this.f16557e = aVar5;
    }

    public static t a(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4, m8.a aVar5) {
        return new t(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static r c(h3.a aVar, h3.a aVar2, d3.e eVar, e3.j jVar, e3.n nVar) {
        return new r(aVar, aVar2, eVar, jVar, nVar);
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public r get() {
        return c((h3.a) this.f16553a.get(), (h3.a) this.f16554b.get(), (d3.e) this.f16555c.get(), (e3.j) this.f16556d.get(), (e3.n) this.f16557e.get());
    }
}
