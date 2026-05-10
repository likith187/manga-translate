package y2;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class j implements a3.b {

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final j f16536a = new j();
    }

    public static j a() {
        return a.f16536a;
    }

    public static Executor b() {
        return (Executor) a3.d.c(i.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // m8.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Executor get() {
        return b();
    }
}
