package t9;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y f15758a;

    public h(y delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        this.f15758a = delegate;
    }

    @Override // t9.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f15758a.close();
    }

    @Override // t9.y
    public b0 f() {
        return this.f15758a.f();
    }

    @Override // t9.y, java.io.Flushable
    public void flush() {
        this.f15758a.flush();
    }

    @Override // t9.y
    public void p(d source, long j10) {
        kotlin.jvm.internal.r.e(source, "source");
        this.f15758a.p(source, j10);
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.f15758a + ')';
    }
}
