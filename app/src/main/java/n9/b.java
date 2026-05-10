package n9;

import com.oplus.backup.sdk.common.utils.Constants;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import m9.i;
import m9.k;
import okhttp3.b0;
import okhttp3.m;
import okhttp3.t;
import okhttp3.u;
import okhttp3.x;
import okhttp3.z;
import t9.a0;
import t9.b0;
import t9.j;
import t9.y;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements m9.d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d f14112h = new d(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f14113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final okhttp3.internal.connection.f f14114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t9.f f14115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final t9.e f14116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f14117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n9.a f14118f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t f14119g;

    private abstract class a implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final j f14120a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f14121b;

        public a() {
            this.f14120a = new j(b.this.f14115c.f());
        }

        protected final boolean c() {
            return this.f14121b;
        }

        @Override // t9.a0
        public b0 f() {
            return this.f14120a;
        }

        public final void i() {
            if (b.this.f14117e == 6) {
                return;
            }
            if (b.this.f14117e == 5) {
                b.this.r(this.f14120a);
                b.this.f14117e = 6;
            } else {
                throw new IllegalStateException("state: " + b.this.f14117e);
            }
        }

        @Override // t9.a0
        public long i0(t9.d sink, long j10) throws IOException {
            r.e(sink, "sink");
            try {
                return b.this.f14115c.i0(sink, j10);
            } catch (IOException e10) {
                b.this.h().y();
                this.i();
                throw e10;
            }
        }

        protected final void k(boolean z10) {
            this.f14121b = z10;
        }
    }

    /* JADX INFO: renamed from: n9.b$b, reason: collision with other inner class name */
    private final class C0185b implements y {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final j f14123a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f14124b;

        public C0185b() {
            this.f14123a = new j(b.this.f14116d.f());
        }

        @Override // t9.y, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.f14124b) {
                return;
            }
            this.f14124b = true;
            b.this.f14116d.u0("0\r\n\r\n");
            b.this.r(this.f14123a);
            b.this.f14117e = 3;
        }

        @Override // t9.y
        public b0 f() {
            return this.f14123a;
        }

        @Override // t9.y, java.io.Flushable
        public synchronized void flush() {
            if (this.f14124b) {
                return;
            }
            b.this.f14116d.flush();
        }

        @Override // t9.y
        public void p(t9.d source, long j10) {
            r.e(source, "source");
            if (this.f14124b) {
                throw new IllegalStateException("closed");
            }
            if (j10 == 0) {
                return;
            }
            b.this.f14116d.s(j10);
            b.this.f14116d.u0("\r\n");
            b.this.f14116d.p(source, j10);
            b.this.f14116d.u0("\r\n");
        }
    }

    private final class c extends a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final u f14126f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f14127h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f14128i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ b f14129j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(b bVar, u url) {
            super();
            r.e(url, "url");
            this.f14129j = bVar;
            this.f14126f = url;
            this.f14127h = -1L;
            this.f14128i = true;
        }

        private final void v() throws ProtocolException {
            if (this.f14127h != -1) {
                this.f14129j.f14115c.O();
            }
            try {
                this.f14127h = this.f14129j.f14115c.z0();
                String string = kotlin.text.r.N0(this.f14129j.f14115c.O()).toString();
                if (this.f14127h < 0 || (string.length() > 0 && !kotlin.text.r.F(string, Constants.DataMigration.SPLIT_TAG, false, 2, null))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f14127h + string + AbstractJsonLexerKt.STRING);
                }
                if (this.f14127h == 0) {
                    this.f14128i = false;
                    b bVar = this.f14129j;
                    bVar.f14119g = bVar.f14118f.a();
                    x xVar = this.f14129j.f14113a;
                    r.b(xVar);
                    m mVarK = xVar.k();
                    u uVar = this.f14126f;
                    t tVar = this.f14129j.f14119g;
                    r.b(tVar);
                    m9.e.f(mVarK, uVar, tVar);
                    i();
                }
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (c()) {
                return;
            }
            if (this.f14128i && !i9.d.r(this, 100, TimeUnit.MILLISECONDS)) {
                this.f14129j.h().y();
                i();
            }
            k(true);
        }

        @Override // n9.b.a, t9.a0
        public long i0(t9.d sink, long j10) throws IOException {
            r.e(sink, "sink");
            if (j10 < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
            }
            if (c()) {
                throw new IllegalStateException("closed");
            }
            if (!this.f14128i) {
                return -1L;
            }
            long j11 = this.f14127h;
            if (j11 == 0 || j11 == -1) {
                v();
                if (!this.f14128i) {
                    return -1L;
                }
            }
            long jI0 = super.i0(sink, Math.min(j10, this.f14127h));
            if (jI0 != -1) {
                this.f14127h -= jI0;
                return jI0;
            }
            this.f14129j.h().y();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            i();
            throw protocolException;
        }
    }

    public static final class d {
        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private d() {
        }
    }

    private final class e extends a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f14130f;

        public e(long j10) {
            super();
            this.f14130f = j10;
            if (j10 == 0) {
                i();
            }
        }

        @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (c()) {
                return;
            }
            if (this.f14130f != 0 && !i9.d.r(this, 100, TimeUnit.MILLISECONDS)) {
                b.this.h().y();
                i();
            }
            k(true);
        }

        @Override // n9.b.a, t9.a0
        public long i0(t9.d sink, long j10) throws IOException {
            r.e(sink, "sink");
            if (j10 < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
            }
            if (c()) {
                throw new IllegalStateException("closed");
            }
            long j11 = this.f14130f;
            if (j11 == 0) {
                return -1L;
            }
            long jI0 = super.i0(sink, Math.min(j11, j10));
            if (jI0 == -1) {
                b.this.h().y();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                i();
                throw protocolException;
            }
            long j12 = this.f14130f - jI0;
            this.f14130f = j12;
            if (j12 == 0) {
                i();
            }
            return jI0;
        }
    }

    private final class f implements y {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final j f14132a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f14133b;

        public f() {
            this.f14132a = new j(b.this.f14116d.f());
        }

        @Override // t9.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f14133b) {
                return;
            }
            this.f14133b = true;
            b.this.r(this.f14132a);
            b.this.f14117e = 3;
        }

        @Override // t9.y
        public b0 f() {
            return this.f14132a;
        }

        @Override // t9.y, java.io.Flushable
        public void flush() {
            if (this.f14133b) {
                return;
            }
            b.this.f14116d.flush();
        }

        @Override // t9.y
        public void p(t9.d source, long j10) {
            r.e(source, "source");
            if (this.f14133b) {
                throw new IllegalStateException("closed");
            }
            i9.d.k(source.G0(), 0L, j10);
            b.this.f14116d.p(source, j10);
        }
    }

    private final class g extends a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f14135f;

        public g() {
            super();
        }

        @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (c()) {
                return;
            }
            if (!this.f14135f) {
                i();
            }
            k(true);
        }

        @Override // n9.b.a, t9.a0
        public long i0(t9.d sink, long j10) throws IOException {
            r.e(sink, "sink");
            if (j10 < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
            }
            if (c()) {
                throw new IllegalStateException("closed");
            }
            if (this.f14135f) {
                return -1L;
            }
            long jI0 = super.i0(sink, j10);
            if (jI0 != -1) {
                return jI0;
            }
            this.f14135f = true;
            i();
            return -1L;
        }
    }

    public b(x xVar, okhttp3.internal.connection.f connection, t9.f source, t9.e sink) {
        r.e(connection, "connection");
        r.e(source, "source");
        r.e(sink, "sink");
        this.f14113a = xVar;
        this.f14114b = connection;
        this.f14115c = source;
        this.f14116d = sink;
        this.f14118f = new n9.a(source);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(j jVar) {
        b0 b0VarI = jVar.i();
        jVar.j(b0.f15732e);
        b0VarI.a();
        b0VarI.b();
    }

    private final boolean s(z zVar) {
        return kotlin.text.r.v("chunked", zVar.d("Transfer-Encoding"), true);
    }

    private final boolean t(okhttp3.b0 b0Var) {
        return kotlin.text.r.v("chunked", okhttp3.b0.I(b0Var, "Transfer-Encoding", null, 2, null), true);
    }

    private final y u() {
        if (this.f14117e == 1) {
            this.f14117e = 2;
            return new C0185b();
        }
        throw new IllegalStateException(("state: " + this.f14117e).toString());
    }

    private final a0 v(u uVar) {
        if (this.f14117e == 4) {
            this.f14117e = 5;
            return new c(this, uVar);
        }
        throw new IllegalStateException(("state: " + this.f14117e).toString());
    }

    private final a0 w(long j10) {
        if (this.f14117e == 4) {
            this.f14117e = 5;
            return new e(j10);
        }
        throw new IllegalStateException(("state: " + this.f14117e).toString());
    }

    private final y x() {
        if (this.f14117e == 1) {
            this.f14117e = 2;
            return new f();
        }
        throw new IllegalStateException(("state: " + this.f14117e).toString());
    }

    private final a0 y() {
        if (this.f14117e == 4) {
            this.f14117e = 5;
            h().y();
            return new g();
        }
        throw new IllegalStateException(("state: " + this.f14117e).toString());
    }

    public final void A(t headers, String requestLine) {
        r.e(headers, "headers");
        r.e(requestLine, "requestLine");
        if (this.f14117e != 0) {
            throw new IllegalStateException(("state: " + this.f14117e).toString());
        }
        this.f14116d.u0(requestLine).u0("\r\n");
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f14116d.u0(headers.c(i10)).u0(": ").u0(headers.e(i10)).u0("\r\n");
        }
        this.f14116d.u0("\r\n");
        this.f14117e = 1;
    }

    @Override // m9.d
    public void a() {
        this.f14116d.flush();
    }

    @Override // m9.d
    public void b(z request) {
        r.e(request, "request");
        i iVar = i.INSTANCE;
        Proxy.Type type = h().z().b().type();
        r.d(type, "connection.route().proxy.type()");
        A(request.e(), iVar.a(request, type));
    }

    @Override // m9.d
    public void c() {
        this.f14116d.flush();
    }

    @Override // m9.d
    public void cancel() {
        h().d();
    }

    @Override // m9.d
    public long d(okhttp3.b0 response) {
        r.e(response, "response");
        if (!m9.e.b(response)) {
            return 0L;
        }
        if (t(response)) {
            return -1L;
        }
        return i9.d.u(response);
    }

    @Override // m9.d
    public a0 e(okhttp3.b0 response) {
        r.e(response, "response");
        if (!m9.e.b(response)) {
            return w(0L);
        }
        if (t(response)) {
            return v(response.D0().i());
        }
        long jU = i9.d.u(response);
        return jU != -1 ? w(jU) : y();
    }

    @Override // m9.d
    public y f(z request, long j10) throws ProtocolException {
        r.e(request, "request");
        if (request.a() != null && request.a().c()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (s(request)) {
            return u();
        }
        if (j10 != -1) {
            return x();
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // m9.d
    public b0.a g(boolean z10) {
        int i10 = this.f14117e;
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            throw new IllegalStateException(("state: " + this.f14117e).toString());
        }
        try {
            k kVarA = k.f13911d.a(this.f14118f.b());
            b0.a aVarK = new b0.a().p(kVarA.f13912a).g(kVarA.f13913b).m(kVarA.f13914c).k(this.f14118f.a());
            if (z10 && kVarA.f13913b == 100) {
                return null;
            }
            int i11 = kVarA.f13913b;
            if (i11 == 100) {
                this.f14117e = 3;
                return aVarK;
            }
            if (102 > i11 || i11 >= 200) {
                this.f14117e = 4;
                return aVarK;
            }
            this.f14117e = 3;
            return aVarK;
        } catch (EOFException e10) {
            throw new IOException("unexpected end of stream on " + h().z().a().l().o(), e10);
        }
    }

    @Override // m9.d
    public okhttp3.internal.connection.f h() {
        return this.f14114b;
    }

    public final void z(okhttp3.b0 response) {
        r.e(response, "response");
        long jU = i9.d.u(response);
        if (jU == -1) {
            return;
        }
        a0 a0VarW = w(jU);
        i9.d.J(a0VarW, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        a0VarW.close();
    }
}
