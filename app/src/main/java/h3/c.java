package h3;

/* JADX INFO: loaded from: classes.dex */
public final class c implements a3.b {

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c f12240a = new c();
    }

    public static c a() {
        return a.f12240a;
    }

    public static h3.a b() {
        return (h3.a) a3.d.c(b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // m8.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public h3.a get() {
        return b();
    }
}
