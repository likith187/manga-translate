package f3;

/* JADX INFO: loaded from: classes.dex */
public final class f implements a3.b {

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final f f11884a = new f();
    }

    public static f a() {
        return a.f11884a;
    }

    public static String b() {
        return (String) a3.d.c(e.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // m8.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public String get() {
        return b();
    }
}
