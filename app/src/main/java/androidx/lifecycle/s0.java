package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
public abstract class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m0.g f2821a = new m0.g();

    public final void a(String key, AutoCloseable closeable) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(closeable, "closeable");
        m0.g gVar = this.f2821a;
        if (gVar != null) {
            gVar.d(key, closeable);
        }
    }

    public final void b() {
        m0.g gVar = this.f2821a;
        if (gVar != null) {
            gVar.e();
        }
        d();
    }

    public final AutoCloseable c(String key) {
        kotlin.jvm.internal.r.e(key, "key");
        m0.g gVar = this.f2821a;
        if (gVar != null) {
            return gVar.g(key);
        }
        return null;
    }

    protected void d() {
    }
}
