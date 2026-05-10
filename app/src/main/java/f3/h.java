package f3;

/* JADX INFO: loaded from: classes.dex */
public final class h implements a3.b {

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final h f11888a = new h();
    }

    public static h a() {
        return a.f11888a;
    }

    public static d c() {
        return (d) a3.d.c(e.c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public d get() {
        return c();
    }
}
