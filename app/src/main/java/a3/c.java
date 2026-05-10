package a3;

/* JADX INFO: loaded from: classes.dex */
public final class c implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c f69b = new c(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f70a;

    private c(Object obj) {
        this.f70a = obj;
    }

    public static b a(Object obj) {
        return new c(d.c(obj, "instance cannot be null"));
    }

    @Override // m8.a
    public Object get() {
        return this.f70a;
    }
}
