package okhttp3.internal.connection;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.jvm.internal.r;
import okhttp3.b0;
import okhttp3.c0;
import okhttp3.q;
import okhttp3.z;
import t9.a0;
import t9.n;
import t9.y;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a */
    private final e f14805a;

    /* JADX INFO: renamed from: b */
    private final q f14806b;

    /* JADX INFO: renamed from: c */
    private final d f14807c;

    /* JADX INFO: renamed from: d */
    private final m9.d f14808d;

    /* JADX INFO: renamed from: e */
    private boolean f14809e;

    /* JADX INFO: renamed from: f */
    private boolean f14810f;

    /* JADX INFO: renamed from: g */
    private final f f14811g;

    private final class a extends t9.h {

        /* JADX INFO: renamed from: b */
        private final long f14812b;

        /* JADX INFO: renamed from: c */
        private boolean f14813c;

        /* JADX INFO: renamed from: f */
        private long f14814f;

        /* JADX INFO: renamed from: h */
        private boolean f14815h;

        /* JADX INFO: renamed from: i */
        final /* synthetic */ c f14816i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, y delegate, long j10) {
            super(delegate);
            r.e(delegate, "delegate");
            this.f14816i = cVar;
            this.f14812b = j10;
        }

        private final IOException c(IOException iOException) {
            if (this.f14813c) {
                return iOException;
            }
            this.f14813c = true;
            return this.f14816i.a(this.f14814f, false, true, iOException);
        }

        @Override // t9.h, t9.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f14815h) {
                return;
            }
            this.f14815h = true;
            long j10 = this.f14812b;
            if (j10 != -1 && this.f14814f != j10) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                c(null);
            } catch (IOException e10) {
                throw c(e10);
            }
        }

        @Override // t9.h, t9.y, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e10) {
                throw c(e10);
            }
        }

        @Override // t9.h, t9.y
        public void p(t9.d source, long j10) throws IOException {
            r.e(source, "source");
            if (this.f14815h) {
                throw new IllegalStateException("closed");
            }
            long j11 = this.f14812b;
            if (j11 == -1 || this.f14814f + j10 <= j11) {
                try {
                    super.p(source, j10);
                    this.f14814f += j10;
                    return;
                } catch (IOException e10) {
                    throw c(e10);
                }
            }
            throw new ProtocolException("expected " + this.f14812b + " bytes but received " + (this.f14814f + j10));
        }
    }

    public final class b extends t9.i {

        /* JADX INFO: renamed from: b */
        private final long f14817b;

        /* JADX INFO: renamed from: c */
        private long f14818c;

        /* JADX INFO: renamed from: f */
        private boolean f14819f;

        /* JADX INFO: renamed from: h */
        private boolean f14820h;

        /* JADX INFO: renamed from: i */
        private boolean f14821i;

        /* JADX INFO: renamed from: j */
        final /* synthetic */ c f14822j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c cVar, a0 delegate, long j10) {
            super(delegate);
            r.e(delegate, "delegate");
            this.f14822j = cVar;
            this.f14817b = j10;
            this.f14819f = true;
            if (j10 == 0) {
                i(null);
            }
        }

        @Override // t9.i, t9.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f14821i) {
                return;
            }
            this.f14821i = true;
            try {
                super.close();
                i(null);
            } catch (IOException e10) {
                throw i(e10);
            }
        }

        public final IOException i(IOException iOException) {
            if (this.f14820h) {
                return iOException;
            }
            this.f14820h = true;
            if (iOException == null && this.f14819f) {
                this.f14819f = false;
                this.f14822j.i().v(this.f14822j.g());
            }
            return this.f14822j.a(this.f14818c, true, false, iOException);
        }

        @Override // t9.a0
        public long i0(t9.d sink, long j10) throws IOException {
            r.e(sink, "sink");
            if (this.f14821i) {
                throw new IllegalStateException("closed");
            }
            try {
                long jI0 = c().i0(sink, j10);
                if (this.f14819f) {
                    this.f14819f = false;
                    this.f14822j.i().v(this.f14822j.g());
                }
                if (jI0 == -1) {
                    i(null);
                    return -1L;
                }
                long j11 = this.f14818c + jI0;
                long j12 = this.f14817b;
                if (j12 != -1 && j11 > j12) {
                    throw new ProtocolException("expected " + this.f14817b + " bytes but received " + j11);
                }
                this.f14818c = j11;
                if (j11 == j12) {
                    i(null);
                }
                return jI0;
            } catch (IOException e10) {
                throw i(e10);
            }
        }
    }

    public c(e call, q eventListener, d finder, m9.d codec) {
        r.e(call, "call");
        r.e(eventListener, "eventListener");
        r.e(finder, "finder");
        r.e(codec, "codec");
        this.f14805a = call;
        this.f14806b = eventListener;
        this.f14807c = finder;
        this.f14808d = codec;
        this.f14811g = codec.h();
    }

    private final void t(IOException iOException) {
        this.f14810f = true;
        this.f14807c.h(iOException);
        this.f14808d.h().G(this.f14805a, iOException);
    }

    public final IOException a(long j10, boolean z10, boolean z11, IOException iOException) {
        if (iOException != null) {
            t(iOException);
        }
        if (z11) {
            if (iOException != null) {
                this.f14806b.r(this.f14805a, iOException);
            } else {
                this.f14806b.p(this.f14805a, j10);
            }
        }
        if (z10) {
            if (iOException != null) {
                this.f14806b.w(this.f14805a, iOException);
            } else {
                this.f14806b.u(this.f14805a, j10);
            }
        }
        return this.f14805a.q(this, z11, z10, iOException);
    }

    public final void b() {
        this.f14808d.cancel();
    }

    public final y c(z request, boolean z10) {
        r.e(request, "request");
        this.f14809e = z10;
        okhttp3.a0 a0VarA = request.a();
        r.b(a0VarA);
        long jA = a0VarA.a();
        this.f14806b.q(this.f14805a);
        return new a(this, this.f14808d.f(request, jA), jA);
    }

    public final void d() {
        this.f14808d.cancel();
        this.f14805a.q(this, true, true, null);
    }

    public final void e() throws IOException {
        try {
            this.f14808d.a();
        } catch (IOException e10) {
            this.f14806b.r(this.f14805a, e10);
            t(e10);
            throw e10;
        }
    }

    public final void f() throws IOException {
        try {
            this.f14808d.c();
        } catch (IOException e10) {
            this.f14806b.r(this.f14805a, e10);
            t(e10);
            throw e10;
        }
    }

    public final e g() {
        return this.f14805a;
    }

    public final f h() {
        return this.f14811g;
    }

    public final q i() {
        return this.f14806b;
    }

    public final d j() {
        return this.f14807c;
    }

    public final boolean k() {
        return this.f14810f;
    }

    public final boolean l() {
        return !r.a(this.f14807c.d().l().h(), this.f14811g.z().a().l().h());
    }

    public final boolean m() {
        return this.f14809e;
    }

    public final void n() {
        this.f14808d.h().y();
    }

    public final void o() {
        this.f14805a.q(this, true, false, null);
    }

    public final c0 p(b0 response) throws IOException {
        r.e(response, "response");
        try {
            String strI = b0.I(response, "Content-Type", null, 2, null);
            long jD = this.f14808d.d(response);
            return new m9.h(strI, jD, n.b(new b(this, this.f14808d.e(response), jD)));
        } catch (IOException e10) {
            this.f14806b.w(this.f14805a, e10);
            t(e10);
            throw e10;
        }
    }

    public final b0.a q(boolean z10) throws IOException {
        try {
            b0.a aVarG = this.f14808d.g(z10);
            if (aVarG != null) {
                aVarG.l(this);
            }
            return aVarG;
        } catch (IOException e10) {
            this.f14806b.w(this.f14805a, e10);
            t(e10);
            throw e10;
        }
    }

    public final void r(b0 response) {
        r.e(response, "response");
        this.f14806b.x(this.f14805a, response);
    }

    public final void s() {
        this.f14806b.y(this.f14805a);
    }

    public final void u(z request) throws IOException {
        r.e(request, "request");
        try {
            this.f14806b.t(this.f14805a);
            this.f14808d.b(request);
            this.f14806b.s(this.f14805a, request);
        } catch (IOException e10) {
            this.f14806b.r(this.f14805a, e10);
            t(e10);
            throw e10;
        }
    }
}
