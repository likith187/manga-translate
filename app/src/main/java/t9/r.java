package t9;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
final class r implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OutputStream f15776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f15777b;

    public r(OutputStream out, b0 timeout) {
        kotlin.jvm.internal.r.e(out, "out");
        kotlin.jvm.internal.r.e(timeout, "timeout");
        this.f15776a = out;
        this.f15777b = timeout;
    }

    @Override // t9.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f15776a.close();
    }

    @Override // t9.y
    public b0 f() {
        return this.f15777b;
    }

    @Override // t9.y, java.io.Flushable
    public void flush() throws IOException {
        this.f15776a.flush();
    }

    @Override // t9.y
    public void p(d source, long j10) throws IOException {
        kotlin.jvm.internal.r.e(source, "source");
        b.b(source.G0(), 0L, j10);
        while (j10 > 0) {
            this.f15777b.f();
            v vVar = source.f15749a;
            kotlin.jvm.internal.r.b(vVar);
            int iMin = (int) Math.min(j10, vVar.f15794c - vVar.f15793b);
            this.f15776a.write(vVar.f15792a, vVar.f15793b, iMin);
            vVar.f15793b += iMin;
            long j11 = iMin;
            j10 -= j11;
            source.F0(source.G0() - j11);
            if (vVar.f15793b == vVar.f15794c) {
                source.f15749a = vVar.b();
                w.b(vVar);
            }
        }
    }

    public String toString() {
        return "sink(" + this.f15776a + ')';
    }
}
