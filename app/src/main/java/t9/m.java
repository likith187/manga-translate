package t9;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
class m implements a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f15770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f15771b;

    public m(InputStream input, b0 timeout) {
        kotlin.jvm.internal.r.e(input, "input");
        kotlin.jvm.internal.r.e(timeout, "timeout");
        this.f15770a = input;
        this.f15771b = timeout;
    }

    @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f15770a.close();
    }

    @Override // t9.a0
    public b0 f() {
        return this.f15771b;
    }

    @Override // t9.a0
    public long i0(d sink, long j10) throws IOException {
        kotlin.jvm.internal.r.e(sink, "sink");
        if (j10 == 0) {
            return 0L;
        }
        if (j10 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        try {
            this.f15771b.f();
            v vVarJ0 = sink.J0(1);
            int i10 = this.f15770a.read(vVarJ0.f15792a, vVarJ0.f15794c, (int) Math.min(j10, 8192 - vVarJ0.f15794c));
            if (i10 != -1) {
                vVarJ0.f15794c += i10;
                long j11 = i10;
                sink.F0(sink.G0() + j11);
                return j11;
            }
            if (vVarJ0.f15793b != vVarJ0.f15794c) {
                return -1L;
            }
            sink.f15749a = vVarJ0.b();
            w.b(vVarJ0);
            return -1L;
        } catch (AssertionError e10) {
            if (n.c(e10)) {
                throw new IOException(e10);
            }
            throw e10;
        }
    }

    public String toString() {
        return "source(" + this.f15770a + ')';
    }
}
