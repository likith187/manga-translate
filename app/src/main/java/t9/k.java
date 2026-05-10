package t9;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte f15761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u f15762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Inflater f15763c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final l f15764f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CRC32 f15765h;

    public k(a0 source) {
        kotlin.jvm.internal.r.e(source, "source");
        u uVar = new u(source);
        this.f15762b = uVar;
        Inflater inflater = new Inflater(true);
        this.f15763c = inflater;
        this.f15764f = new l(uVar, inflater);
        this.f15765h = new CRC32();
    }

    private final void c(String str, int i10, int i11) throws IOException {
        if (i11 == i10) {
            return;
        }
        String str2 = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i11), Integer.valueOf(i10)}, 3));
        kotlin.jvm.internal.r.d(str2, "format(this, *args)");
        throw new IOException(str2);
    }

    private final void i() throws IOException {
        this.f15762b.r0(10L);
        byte bD = this.f15762b.f15788b.D(3L);
        boolean z10 = ((bD >> 1) & 1) == 1;
        if (z10) {
            v(this.f15762b.f15788b, 0L, 10L);
        }
        c("ID1ID2", 8075, this.f15762b.f0());
        this.f15762b.A(8L);
        if (((bD >> 2) & 1) == 1) {
            this.f15762b.r0(2L);
            if (z10) {
                v(this.f15762b.f15788b, 0L, 2L);
            }
            long jV0 = this.f15762b.f15788b.v0() & 65535;
            this.f15762b.r0(jV0);
            if (z10) {
                v(this.f15762b.f15788b, 0L, jV0);
            }
            this.f15762b.A(jV0);
        }
        if (((bD >> 3) & 1) == 1) {
            long jC = this.f15762b.c((byte) 0);
            if (jC == -1) {
                throw new EOFException();
            }
            if (z10) {
                v(this.f15762b.f15788b, 0L, jC + 1);
            }
            this.f15762b.A(jC + 1);
        }
        if (((bD >> 4) & 1) == 1) {
            long jC2 = this.f15762b.c((byte) 0);
            if (jC2 == -1) {
                throw new EOFException();
            }
            if (z10) {
                v(this.f15762b.f15788b, 0L, jC2 + 1);
            }
            this.f15762b.A(jC2 + 1);
        }
        if (z10) {
            c("FHCRC", this.f15762b.B(), (short) this.f15765h.getValue());
            this.f15765h.reset();
        }
    }

    private final void k() throws IOException {
        c("CRC", this.f15762b.x(), (int) this.f15765h.getValue());
        c("ISIZE", this.f15762b.x(), (int) this.f15763c.getBytesWritten());
    }

    private final void v(d dVar, long j10, long j11) {
        v vVar = dVar.f15749a;
        kotlin.jvm.internal.r.b(vVar);
        while (true) {
            int i10 = vVar.f15794c;
            int i11 = vVar.f15793b;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= (long) (i10 - i11);
            vVar = vVar.f15797f;
            kotlin.jvm.internal.r.b(vVar);
        }
        while (j11 > 0) {
            int i12 = (int) (((long) vVar.f15793b) + j10);
            int iMin = (int) Math.min(vVar.f15794c - i12, j11);
            this.f15765h.update(vVar.f15792a, i12, iMin);
            j11 -= (long) iMin;
            vVar = vVar.f15797f;
            kotlin.jvm.internal.r.b(vVar);
            j10 = 0;
        }
    }

    @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f15764f.close();
    }

    @Override // t9.a0
    public b0 f() {
        return this.f15762b.f();
    }

    @Override // t9.a0
    public long i0(d sink, long j10) throws IOException {
        kotlin.jvm.internal.r.e(sink, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        if (j10 == 0) {
            return 0L;
        }
        if (this.f15761a == 0) {
            i();
            this.f15761a = (byte) 1;
        }
        if (this.f15761a == 1) {
            long jG0 = sink.G0();
            long jI0 = this.f15764f.i0(sink, j10);
            if (jI0 != -1) {
                v(sink, jG0, jI0);
                return jI0;
            }
            this.f15761a = (byte) 2;
        }
        if (this.f15761a == 2) {
            k();
            this.f15761a = (byte) 3;
            if (!this.f15762b.S()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }
}
