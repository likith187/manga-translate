package t9;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a0 f15787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f15788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15789c;

    public u(a0 source) {
        kotlin.jvm.internal.r.e(source, "source");
        this.f15787a = source;
        this.f15788b = new d();
    }

    @Override // t9.f
    public void A(long j10) throws EOFException {
        if (this.f15789c) {
            throw new IllegalStateException("closed");
        }
        while (j10 > 0) {
            if (this.f15788b.G0() == 0 && this.f15787a.i0(this.f15788b, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, this.f15788b.G0());
            this.f15788b.A(jMin);
            j10 -= jMin;
        }
    }

    @Override // t9.f
    public int A0(q options) throws EOFException {
        kotlin.jvm.internal.r.e(options, "options");
        if (this.f15789c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            int iD = u9.a.d(this.f15788b, options, true);
            if (iD != -2) {
                if (iD != -1) {
                    this.f15788b.A(options.d()[iD].size());
                    return iD;
                }
            } else if (this.f15787a.i0(this.f15788b, 8192L) == -1) {
                break;
            }
        }
        return -1;
    }

    public short B() throws EOFException {
        r0(2L);
        return this.f15788b.v0();
    }

    @Override // t9.f
    public InputStream B0() {
        return new a();
    }

    @Override // t9.f
    public byte C0() throws EOFException {
        r0(1L);
        return this.f15788b.C0();
    }

    @Override // t9.f
    public boolean F(long j10) {
        if (j10 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        if (this.f15789c) {
            throw new IllegalStateException("closed");
        }
        while (this.f15788b.G0() < j10) {
            if (this.f15787a.i0(this.f15788b, 8192L) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // t9.f
    public int K() throws EOFException {
        r0(4L);
        return this.f15788b.K();
    }

    @Override // t9.f
    public String O() {
        return d0(Long.MAX_VALUE);
    }

    @Override // t9.f
    public byte[] Q() {
        this.f15788b.N0(this.f15787a);
        return this.f15788b.Q();
    }

    @Override // t9.f
    public long R(g targetBytes) {
        kotlin.jvm.internal.r.e(targetBytes, "targetBytes");
        return v(targetBytes, 0L);
    }

    @Override // t9.f
    public boolean S() {
        if (this.f15789c) {
            throw new IllegalStateException("closed");
        }
        return this.f15788b.S() && this.f15787a.i0(this.f15788b, 8192L) == -1;
    }

    @Override // t9.f
    public byte[] U(long j10) throws EOFException {
        r0(j10);
        return this.f15788b.U(j10);
    }

    public long c(byte b10) {
        return i(b10, 0L, Long.MAX_VALUE);
    }

    @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws EOFException {
        if (this.f15789c) {
            return;
        }
        this.f15789c = true;
        this.f15787a.close();
        this.f15788b.i();
    }

    @Override // t9.f, t9.e
    public d d() {
        return this.f15788b;
    }

    @Override // t9.f
    public String d0(long j10) throws EOFException {
        if (j10 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j10).toString());
        }
        long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
        long jI = i((byte) 10, 0L, j11);
        if (jI != -1) {
            return u9.a.c(this.f15788b, jI);
        }
        if (j11 < Long.MAX_VALUE && F(j11) && this.f15788b.D(j11 - 1) == 13 && F(1 + j11) && this.f15788b.D(j11) == 10) {
            return u9.a.c(this.f15788b, j11);
        }
        d dVar = new d();
        d dVar2 = this.f15788b;
        dVar2.B(dVar, 0L, Math.min(32, dVar2.G0()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f15788b.G0(), j10) + " content=" + dVar.a0().hex() + (char) 8230);
    }

    @Override // t9.a0
    public b0 f() {
        return this.f15787a.f();
    }

    @Override // t9.f
    public short f0() throws EOFException {
        r0(2L);
        return this.f15788b.f0();
    }

    public long i(byte b10, long j10, long j11) {
        if (this.f15789c) {
            throw new IllegalStateException("closed");
        }
        if (0 > j10 || j10 > j11) {
            throw new IllegalArgumentException(("fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        while (j10 < j11) {
            long jG = this.f15788b.G(b10, j10, j11);
            if (jG != -1) {
                return jG;
            }
            long jG0 = this.f15788b.G0();
            if (jG0 >= j11 || this.f15787a.i0(this.f15788b, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, jG0);
        }
        return -1L;
    }

    @Override // t9.a0
    public long i0(d sink, long j10) {
        kotlin.jvm.internal.r.e(sink, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        if (this.f15789c) {
            throw new IllegalStateException("closed");
        }
        if (this.f15788b.G0() == 0 && this.f15787a.i0(this.f15788b, 8192L) == -1) {
            return -1L;
        }
        return this.f15788b.i0(sink, Math.min(j10, this.f15788b.G0()));
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f15789c;
    }

    @Override // t9.f
    public f j0() {
        return n.b(new s(this));
    }

    public long k(g bytes, long j10) {
        kotlin.jvm.internal.r.e(bytes, "bytes");
        if (this.f15789c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jI = this.f15788b.I(bytes, j10);
            if (jI != -1) {
                return jI;
            }
            long jG0 = this.f15788b.G0();
            if (this.f15787a.i0(this.f15788b, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, (jG0 - ((long) bytes.size())) + 1);
        }
    }

    @Override // t9.f
    public long n0(g bytes) {
        kotlin.jvm.internal.r.e(bytes, "bytes");
        return k(bytes, 0L);
    }

    @Override // t9.f
    public void r0(long j10) throws EOFException {
        if (!F(j10)) {
            throw new EOFException();
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) {
        kotlin.jvm.internal.r.e(sink, "sink");
        if (this.f15788b.G0() == 0 && this.f15787a.i0(this.f15788b, 8192L) == -1) {
            return -1;
        }
        return this.f15788b.read(sink);
    }

    public String toString() {
        return "buffer(" + this.f15787a + ')';
    }

    @Override // t9.f
    public d u() {
        return this.f15788b;
    }

    public long v(g targetBytes, long j10) {
        kotlin.jvm.internal.r.e(targetBytes, "targetBytes");
        if (this.f15789c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jN = this.f15788b.N(targetBytes, j10);
            if (jN != -1) {
                return jN;
            }
            long jG0 = this.f15788b.G0();
            if (this.f15787a.i0(this.f15788b, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, jG0);
        }
    }

    @Override // t9.f
    public g w(long j10) throws EOFException {
        r0(j10);
        return this.f15788b.w(j10);
    }

    public int x() throws EOFException {
        r0(4L);
        return this.f15788b.q0();
    }

    @Override // t9.f
    public long z0() throws EOFException {
        byte bD;
        r0(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!F(i11)) {
                break;
            }
            bD = this.f15788b.D(i10);
            if ((bD < 48 || bD > 57) && ((bD < 97 || bD > 102) && (bD < 65 || bD > 70))) {
                break;
            }
            i10 = i11;
        }
        if (i10 == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9a-fA-F] character but was 0x");
            String string = Integer.toString(bD, kotlin.text.a.a(kotlin.text.a.a(16)));
            kotlin.jvm.internal.r.d(string, "toString(this, checkRadix(radix))");
            sb.append(string);
            throw new NumberFormatException(sb.toString());
        }
        return this.f15788b.z0();
    }

    public static final class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            u uVar = u.this;
            if (uVar.f15789c) {
                throw new IOException("closed");
            }
            return (int) Math.min(uVar.f15788b.G0(), Integer.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws EOFException {
            u.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            u uVar = u.this;
            if (uVar.f15789c) {
                throw new IOException("closed");
            }
            if (uVar.f15788b.G0() == 0) {
                u uVar2 = u.this;
                if (uVar2.f15787a.i0(uVar2.f15788b, 8192L) == -1) {
                    return -1;
                }
            }
            return u.this.f15788b.C0() & 255;
        }

        public String toString() {
            return u.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] data, int i10, int i11) throws IOException {
            kotlin.jvm.internal.r.e(data, "data");
            if (!u.this.f15789c) {
                b.b(data.length, i10, i11);
                if (u.this.f15788b.G0() == 0) {
                    u uVar = u.this;
                    if (uVar.f15787a.i0(uVar.f15788b, 8192L) == -1) {
                        return -1;
                    }
                }
                return u.this.f15788b.X(data, i10, i11);
            }
            throw new IOException("closed");
        }
    }
}
