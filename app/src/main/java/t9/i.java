package t9;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i implements a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a0 f15759a;

    public i(a0 delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        this.f15759a = delegate;
    }

    public final a0 c() {
        return this.f15759a;
    }

    @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f15759a.close();
    }

    @Override // t9.a0
    public b0 f() {
        return this.f15759a.f();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.f15759a + ')';
    }
}
