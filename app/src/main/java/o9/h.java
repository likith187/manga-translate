package o9;

import com.oplus.aiunit.core.ConfigPackage;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import o9.d;
import t9.a0;
import t9.b0;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f14585h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Logger f14586i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t9.f f14587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f14588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f14589c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d.a f14590f;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Logger a() {
            return h.f14586i;
        }

        public final int b(int i10, int i11, int i12) throws IOException {
            if ((i11 & 8) != 0) {
                i10--;
            }
            if (i12 <= i10) {
                return i10 - i12;
            }
            throw new IOException("PROTOCOL_ERROR padding " + i12 + " > remaining length " + i10);
        }

        private a() {
        }
    }

    public static final class b implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t9.f f14591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f14592b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f14593c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f14594f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f14595h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f14596i;

        public b(t9.f source) {
            r.e(source, "source");
            this.f14591a = source;
        }

        private final void i() throws IOException {
            int i10 = this.f14594f;
            int iH = i9.d.H(this.f14591a);
            this.f14595h = iH;
            this.f14592b = iH;
            int iD = i9.d.d(this.f14591a.C0(), 255);
            this.f14593c = i9.d.d(this.f14591a.C0(), 255);
            a aVar = h.f14585h;
            if (aVar.a().isLoggable(Level.FINE)) {
                aVar.a().fine(e.INSTANCE.c(true, this.f14594f, this.f14592b, iD, this.f14593c));
            }
            int iK = this.f14591a.K() & Integer.MAX_VALUE;
            this.f14594f = iK;
            if (iD == 9) {
                if (iK != i10) {
                    throw new IOException("TYPE_CONTINUATION streamId changed");
                }
            } else {
                throw new IOException(iD + " != TYPE_CONTINUATION");
            }
        }

        public final void B(int i10) {
            this.f14596i = i10;
        }

        public final void D(int i10) {
            this.f14594f = i10;
        }

        public final int c() {
            return this.f14595h;
        }

        @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // t9.a0
        public b0 f() {
            return this.f14591a.f();
        }

        @Override // t9.a0
        public long i0(t9.d sink, long j10) throws IOException {
            r.e(sink, "sink");
            while (true) {
                int i10 = this.f14595h;
                if (i10 != 0) {
                    long jI0 = this.f14591a.i0(sink, Math.min(j10, i10));
                    if (jI0 == -1) {
                        return -1L;
                    }
                    this.f14595h -= (int) jI0;
                    return jI0;
                }
                this.f14591a.A(this.f14596i);
                this.f14596i = 0;
                if ((this.f14593c & 4) != 0) {
                    return -1L;
                }
                i();
            }
        }

        public final void k(int i10) {
            this.f14593c = i10;
        }

        public final void v(int i10) {
            this.f14595h = i10;
        }

        public final void x(int i10) {
            this.f14592b = i10;
        }
    }

    public interface c {
        void a(int i10, o9.b bVar);

        void b(boolean z10, int i10, t9.f fVar, int i11);

        void c();

        void d(boolean z10, int i10, int i11);

        void e(int i10, o9.b bVar, t9.g gVar);

        void f(int i10, int i11, int i12, boolean z10);

        void g(boolean z10, int i10, int i11, List list);

        void h(int i10, long j10);

        void i(boolean z10, m mVar);

        void j(int i10, int i11, List list);
    }

    static {
        Logger logger = Logger.getLogger(e.class.getName());
        r.d(logger, "getLogger(Http2::class.java.name)");
        f14586i = logger;
    }

    public h(t9.f source, boolean z10) {
        r.e(source, "source");
        this.f14587a = source;
        this.f14588b = z10;
        b bVar = new b(source);
        this.f14589c = bVar;
        this.f14590f = new d.a(bVar, ConfigPackage.FRAME_SIZE_5, 0, 4, null);
    }

    private final List B(int i10, int i11, int i12, int i13) throws IOException {
        this.f14589c.v(i10);
        b bVar = this.f14589c;
        bVar.x(bVar.c());
        this.f14589c.B(i11);
        this.f14589c.k(i12);
        this.f14589c.D(i13);
        this.f14590f.k();
        return this.f14590f.e();
    }

    private final void D(c cVar, int i10, int i11, int i12) throws IOException {
        if (i12 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
        }
        boolean z10 = (i11 & 1) != 0;
        int iD = (i11 & 8) != 0 ? i9.d.d(this.f14587a.C0(), 255) : 0;
        if ((i11 & 32) != 0) {
            I(cVar, i12);
            i10 -= 5;
        }
        cVar.g(z10, i12, -1, B(f14585h.b(i10, i11, iD), iD, i11, i12));
    }

    private final void G(c cVar, int i10, int i11, int i12) throws IOException {
        if (i10 != 8) {
            throw new IOException("TYPE_PING length != 8: " + i10);
        }
        if (i12 != 0) {
            throw new IOException("TYPE_PING streamId != 0");
        }
        cVar.d((i11 & 1) != 0, this.f14587a.K(), this.f14587a.K());
    }

    private final void I(c cVar, int i10) {
        int iK = this.f14587a.K();
        cVar.f(i10, iK & Integer.MAX_VALUE, i9.d.d(this.f14587a.C0(), 255) + 1, (Integer.MIN_VALUE & iK) != 0);
    }

    private final void N(c cVar, int i10, int i11, int i12) throws IOException {
        if (i10 == 5) {
            if (i12 == 0) {
                throw new IOException("TYPE_PRIORITY streamId == 0");
            }
            I(cVar, i12);
        } else {
            throw new IOException("TYPE_PRIORITY length: " + i10 + " != 5");
        }
    }

    private final void X(c cVar, int i10, int i11, int i12) throws IOException {
        if (i12 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
        }
        int iD = (i11 & 8) != 0 ? i9.d.d(this.f14587a.C0(), 255) : 0;
        cVar.j(i12, this.f14587a.K() & Integer.MAX_VALUE, B(f14585h.b(i10 - 4, i11, iD), iD, i11, i12));
    }

    private final void a0(c cVar, int i10, int i11, int i12) throws IOException {
        if (i10 != 4) {
            throw new IOException("TYPE_RST_STREAM length: " + i10 + " != 4");
        }
        if (i12 == 0) {
            throw new IOException("TYPE_RST_STREAM streamId == 0");
        }
        int iK = this.f14587a.K();
        o9.b bVarA = o9.b.Companion.a(iK);
        if (bVarA != null) {
            cVar.a(i12, bVarA);
            return;
        }
        throw new IOException("TYPE_RST_STREAM unexpected error code: " + iK);
    }

    private final void b0(c cVar, int i10, int i11, int i12) throws IOException {
        int iK;
        if (i12 != 0) {
            throw new IOException("TYPE_SETTINGS streamId != 0");
        }
        if ((i11 & 1) != 0) {
            if (i10 != 0) {
                throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
            }
            cVar.c();
            return;
        }
        if (i10 % 6 != 0) {
            throw new IOException("TYPE_SETTINGS length % 6 != 0: " + i10);
        }
        m mVar = new m();
        b9.a aVarK = b9.d.k(b9.d.l(0, i10), 6);
        int iA = aVarK.a();
        int iC = aVarK.c();
        int iD = aVarK.d();
        if ((iD > 0 && iA <= iC) || (iD < 0 && iC <= iA)) {
            while (true) {
                int iE = i9.d.e(this.f14587a.f0(), 65535);
                iK = this.f14587a.K();
                if (iE != 2) {
                    if (iE == 3) {
                        iE = 4;
                    } else if (iE != 4) {
                        if (iE == 5 && (iK < 16384 || iK > 16777215)) {
                            break;
                        }
                    } else {
                        if (iK < 0) {
                            throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                        }
                        iE = 7;
                    }
                } else if (iK != 0 && iK != 1) {
                    throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                }
                mVar.h(iE, iK);
                if (iA == iC) {
                    break;
                } else {
                    iA += iD;
                }
            }
            throw new IOException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: " + iK);
        }
        cVar.i(false, mVar);
    }

    private final void q0(c cVar, int i10, int i11, int i12) throws IOException {
        if (i10 != 4) {
            throw new IOException("TYPE_WINDOW_UPDATE length !=4: " + i10);
        }
        long jF = i9.d.f(this.f14587a.K(), 2147483647L);
        if (jF == 0) {
            throw new IOException("windowSizeIncrement was 0");
        }
        cVar.h(i12, jF);
    }

    private final void v(c cVar, int i10, int i11, int i12) throws IOException {
        if (i12 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
        }
        boolean z10 = (i11 & 1) != 0;
        if ((i11 & 32) != 0) {
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        int iD = (i11 & 8) != 0 ? i9.d.d(this.f14587a.C0(), 255) : 0;
        cVar.b(z10, i12, this.f14587a, f14585h.b(i10, i11, iD));
        this.f14587a.A(iD);
    }

    private final void x(c cVar, int i10, int i11, int i12) throws IOException {
        if (i10 < 8) {
            throw new IOException("TYPE_GOAWAY length < 8: " + i10);
        }
        if (i12 != 0) {
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        int iK = this.f14587a.K();
        int iK2 = this.f14587a.K();
        int i13 = i10 - 8;
        o9.b bVarA = o9.b.Companion.a(iK2);
        if (bVarA == null) {
            throw new IOException("TYPE_GOAWAY unexpected error code: " + iK2);
        }
        t9.g gVarW = t9.g.EMPTY;
        if (i13 > 0) {
            gVarW = this.f14587a.w(i13);
        }
        cVar.e(iK, bVarA, gVarW);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f14587a.close();
    }

    public final boolean i(boolean z10, c handler) throws IOException {
        r.e(handler, "handler");
        try {
            this.f14587a.r0(9L);
            int iH = i9.d.H(this.f14587a);
            if (iH > 16384) {
                throw new IOException("FRAME_SIZE_ERROR: " + iH);
            }
            int iD = i9.d.d(this.f14587a.C0(), 255);
            int iD2 = i9.d.d(this.f14587a.C0(), 255);
            int iK = this.f14587a.K() & Integer.MAX_VALUE;
            Logger logger = f14586i;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(e.INSTANCE.c(true, iK, iH, iD, iD2));
            }
            if (z10 && iD != 4) {
                throw new IOException("Expected a SETTINGS frame but was " + e.INSTANCE.b(iD));
            }
            switch (iD) {
                case 0:
                    v(handler, iH, iD2, iK);
                    return true;
                case 1:
                    D(handler, iH, iD2, iK);
                    return true;
                case 2:
                    N(handler, iH, iD2, iK);
                    return true;
                case 3:
                    a0(handler, iH, iD2, iK);
                    return true;
                case 4:
                    b0(handler, iH, iD2, iK);
                    return true;
                case 5:
                    X(handler, iH, iD2, iK);
                    return true;
                case 6:
                    G(handler, iH, iD2, iK);
                    return true;
                case 7:
                    x(handler, iH, iD2, iK);
                    return true;
                case 8:
                    q0(handler, iH, iD2, iK);
                    return true;
                default:
                    this.f14587a.A(iH);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void k(c handler) throws IOException {
        r.e(handler, "handler");
        if (this.f14588b) {
            if (!i(true, handler)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        t9.f fVar = this.f14587a;
        t9.g gVar = e.f14502a;
        t9.g gVarW = fVar.w(gVar.size());
        Logger logger = f14586i;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(i9.d.s("<< CONNECTION " + gVarW.hex(), new Object[0]));
        }
        if (r.a(gVar, gVarW)) {
            return;
        }
        throw new IOException("Expected a connection header but was " + gVarW.utf8());
    }
}
