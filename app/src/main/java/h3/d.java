package h3;

/* JADX INFO: loaded from: classes.dex */
public final class d implements a3.b {

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d f12241a = new d();
    }

    public static d a() {
        return a.f12241a;
    }

    public static h3.a c() {
        return (h3.a) a3.d.c(b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public h3.a get() {
        return c();
    }
}
