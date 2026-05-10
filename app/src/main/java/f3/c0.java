package f3;

/* JADX INFO: loaded from: classes.dex */
public final class c0 implements a3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m8.a f11877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m8.a f11878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m8.a f11879c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m8.a f11880d;

    public c0(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4) {
        this.f11877a = aVar;
        this.f11878b = aVar2;
        this.f11879c = aVar3;
        this.f11880d = aVar4;
    }

    public static c0 a(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4) {
        return new c0(aVar, aVar2, aVar3, aVar4);
    }

    public static b0 c(h3.a aVar, h3.a aVar2, Object obj, Object obj2) {
        return new b0(aVar, aVar2, (d) obj, (h0) obj2);
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public b0 get() {
        return c((h3.a) this.f11877a.get(), (h3.a) this.f11878b.get(), this.f11879c.get(), this.f11880d.get());
    }
}
