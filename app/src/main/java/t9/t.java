package t9;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class t implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f15784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f15785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15786c;

    public t(y sink) {
        kotlin.jvm.internal.r.e(sink, "sink");
        this.f15784a = sink;
        this.f15785b = new d();
    }

    @Override // t9.e
    public e E(int i10) {
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        this.f15785b.E(i10);
        return c();
    }

    @Override // t9.e
    public e L(int i10) {
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        this.f15785b.L(i10);
        return c();
    }

    @Override // t9.e
    public e T(int i10) {
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        this.f15785b.T(i10);
        return c();
    }

    @Override // t9.e
    public e Z(byte[] source) {
        kotlin.jvm.internal.r.e(source, "source");
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        this.f15785b.Z(source);
        return c();
    }

    public e c() {
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        long jV = this.f15785b.v();
        if (jV > 0) {
            this.f15784a.p(this.f15785b, jV);
        }
        return this;
    }

    @Override // t9.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f15786c) {
            return;
        }
        try {
            if (this.f15785b.G0() > 0) {
                y yVar = this.f15784a;
                d dVar = this.f15785b;
                yVar.p(dVar, dVar.G0());
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f15784a.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f15786c = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // t9.e
    public d d() {
        return this.f15785b;
    }

    @Override // t9.y
    public b0 f() {
        return this.f15784a.f();
    }

    @Override // t9.e, t9.y, java.io.Flushable
    public void flush() {
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        if (this.f15785b.G0() > 0) {
            y yVar = this.f15784a;
            d dVar = this.f15785b;
            yVar.p(dVar, dVar.G0());
        }
        this.f15784a.flush();
    }

    @Override // t9.e
    public e h0(g byteString) {
        kotlin.jvm.internal.r.e(byteString, "byteString");
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        this.f15785b.h0(byteString);
        return c();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f15786c;
    }

    @Override // t9.e
    public e j(byte[] source, int i10, int i11) {
        kotlin.jvm.internal.r.e(source, "source");
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        this.f15785b.j(source, i10, i11);
        return c();
    }

    @Override // t9.y
    public void p(d source, long j10) {
        kotlin.jvm.internal.r.e(source, "source");
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        this.f15785b.p(source, j10);
        c();
    }

    @Override // t9.e
    public e r(String string, int i10, int i11) {
        kotlin.jvm.internal.r.e(string, "string");
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        this.f15785b.r(string, i10, i11);
        return c();
    }

    @Override // t9.e
    public e s(long j10) {
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        this.f15785b.s(j10);
        return c();
    }

    public String toString() {
        return "buffer(" + this.f15784a + ')';
    }

    @Override // t9.e
    public e u0(String string) {
        kotlin.jvm.internal.r.e(string, "string");
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        this.f15785b.u0(string);
        return c();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) {
        kotlin.jvm.internal.r.e(source, "source");
        if (this.f15786c) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.f15785b.write(source);
        c();
        return iWrite;
    }
}
