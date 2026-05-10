package t9;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f15766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Inflater f15767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f15768c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f15769f;

    public l(f source, Inflater inflater) {
        kotlin.jvm.internal.r.e(source, "source");
        kotlin.jvm.internal.r.e(inflater, "inflater");
        this.f15766a = source;
        this.f15767b = inflater;
    }

    private final void k() {
        int i10 = this.f15768c;
        if (i10 == 0) {
            return;
        }
        int remaining = i10 - this.f15767b.getRemaining();
        this.f15768c -= remaining;
        this.f15766a.A(remaining);
    }

    public final long c(d sink, long j10) throws IOException {
        kotlin.jvm.internal.r.e(sink, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        if (this.f15769f) {
            throw new IllegalStateException("closed");
        }
        if (j10 == 0) {
            return 0L;
        }
        try {
            v vVarJ0 = sink.J0(1);
            int iMin = (int) Math.min(j10, 8192 - vVarJ0.f15794c);
            i();
            int iInflate = this.f15767b.inflate(vVarJ0.f15792a, vVarJ0.f15794c, iMin);
            k();
            if (iInflate > 0) {
                vVarJ0.f15794c += iInflate;
                long j11 = iInflate;
                sink.F0(sink.G0() + j11);
                return j11;
            }
            if (vVarJ0.f15793b == vVarJ0.f15794c) {
                sink.f15749a = vVarJ0.b();
                w.b(vVarJ0);
            }
            return 0L;
        } catch (DataFormatException e10) {
            throw new IOException(e10);
        }
    }

    @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f15769f) {
            return;
        }
        this.f15767b.end();
        this.f15769f = true;
        this.f15766a.close();
    }

    @Override // t9.a0
    public b0 f() {
        return this.f15766a.f();
    }

    public final boolean i() {
        if (!this.f15767b.needsInput()) {
            return false;
        }
        if (this.f15766a.S()) {
            return true;
        }
        v vVar = this.f15766a.d().f15749a;
        kotlin.jvm.internal.r.b(vVar);
        int i10 = vVar.f15794c;
        int i11 = vVar.f15793b;
        int i12 = i10 - i11;
        this.f15768c = i12;
        this.f15767b.setInput(vVar.f15792a, i11, i12);
        return false;
    }

    @Override // t9.a0
    public long i0(d sink, long j10) throws IOException {
        kotlin.jvm.internal.r.e(sink, "sink");
        do {
            long jC = c(sink, j10);
            if (jC > 0) {
                return jC;
            }
            if (this.f15767b.finished() || this.f15767b.needsDictionary()) {
                return -1L;
            }
        } while (!this.f15766a.S());
        throw new EOFException("source exhausted prematurely");
    }
}
