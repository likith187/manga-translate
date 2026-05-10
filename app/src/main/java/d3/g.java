package d3;

/* JADX INFO: loaded from: classes.dex */
public final class g implements a3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m8.a f11523a;

    public g(m8.a aVar) {
        this.f11523a = aVar;
    }

    public static e3.d a(h3.a aVar) {
        return (e3.d) a3.d.c(f.a(aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static g b(m8.a aVar) {
        return new g(aVar);
    }

    @Override // m8.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public e3.d get() {
        return a((h3.a) this.f11523a.get());
    }
}
