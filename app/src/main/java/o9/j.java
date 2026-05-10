package o9;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.ReaderJsonLexerKt;
import o9.d;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements Closeable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f14625j = new a(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Logger f14626k = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t9.e f14627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f14628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t9.d f14629c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f14630f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f14631h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final d.b f14632i;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public j(t9.e sink, boolean z10) {
        r.e(sink, "sink");
        this.f14627a = sink;
        this.f14628b = z10;
        t9.d dVar = new t9.d();
        this.f14629c = dVar;
        this.f14630f = ReaderJsonLexerKt.BATCH_SIZE;
        this.f14632i = new d.b(0, false, dVar, 3, null);
    }

    private final void q0(int i10, long j10) {
        while (j10 > 0) {
            long jMin = Math.min(this.f14630f, j10);
            j10 -= jMin;
            x(i10, (int) jMin, 9, j10 == 0 ? 4 : 0);
            this.f14627a.p(this.f14629c, jMin);
        }
    }

    public final synchronized void B(int i10, b errorCode, byte[] debugData) {
        try {
            r.e(errorCode, "errorCode");
            r.e(debugData, "debugData");
            if (this.f14631h) {
                throw new IOException("closed");
            }
            if (errorCode.getHttpCode() == -1) {
                throw new IllegalArgumentException("errorCode.httpCode == -1");
            }
            x(0, debugData.length + 8, 7, 0);
            this.f14627a.L(i10);
            this.f14627a.L(errorCode.getHttpCode());
            if (!(debugData.length == 0)) {
                this.f14627a.Z(debugData);
            }
            this.f14627a.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void D(boolean z10, int i10, List headerBlock) {
        r.e(headerBlock, "headerBlock");
        if (this.f14631h) {
            throw new IOException("closed");
        }
        this.f14632i.g(headerBlock);
        long jG0 = this.f14629c.G0();
        long jMin = Math.min(this.f14630f, jG0);
        int i11 = jG0 == jMin ? 4 : 0;
        if (z10) {
            i11 |= 1;
        }
        x(i10, (int) jMin, 1, i11);
        this.f14627a.p(this.f14629c, jMin);
        if (jG0 > jMin) {
            q0(i10, jG0 - jMin);
        }
    }

    public final int G() {
        return this.f14630f;
    }

    public final synchronized void I(boolean z10, int i10, int i11) {
        if (this.f14631h) {
            throw new IOException("closed");
        }
        x(0, 8, 6, z10 ? 1 : 0);
        this.f14627a.L(i10);
        this.f14627a.L(i11);
        this.f14627a.flush();
    }

    public final synchronized void N(int i10, int i11, List requestHeaders) {
        r.e(requestHeaders, "requestHeaders");
        if (this.f14631h) {
            throw new IOException("closed");
        }
        this.f14632i.g(requestHeaders);
        long jG0 = this.f14629c.G0();
        int iMin = (int) Math.min(((long) this.f14630f) - 4, jG0);
        long j10 = iMin;
        x(i10, iMin + 4, 5, jG0 == j10 ? 4 : 0);
        this.f14627a.L(i11 & Integer.MAX_VALUE);
        this.f14627a.p(this.f14629c, j10);
        if (jG0 > j10) {
            q0(i10, jG0 - j10);
        }
    }

    public final synchronized void X(int i10, b errorCode) {
        r.e(errorCode, "errorCode");
        if (this.f14631h) {
            throw new IOException("closed");
        }
        if (errorCode.getHttpCode() == -1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        x(i10, 4, 3, 0);
        this.f14627a.L(errorCode.getHttpCode());
        this.f14627a.flush();
    }

    public final synchronized void a0(m settings) {
        try {
            r.e(settings, "settings");
            if (this.f14631h) {
                throw new IOException("closed");
            }
            int i10 = 0;
            x(0, settings.i() * 6, 4, 0);
            while (i10 < 10) {
                if (settings.f(i10)) {
                    this.f14627a.E(i10 != 4 ? i10 != 7 ? i10 : 4 : 3);
                    this.f14627a.L(settings.a(i10));
                }
                i10++;
            }
            this.f14627a.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b0(int i10, long j10) {
        if (this.f14631h) {
            throw new IOException("closed");
        }
        if (j10 == 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j10).toString());
        }
        x(i10, 4, 8, 0);
        this.f14627a.L((int) j10);
        this.f14627a.flush();
    }

    public final synchronized void c(m peerSettings) {
        try {
            r.e(peerSettings, "peerSettings");
            if (this.f14631h) {
                throw new IOException("closed");
            }
            this.f14630f = peerSettings.e(this.f14630f);
            if (peerSettings.b() != -1) {
                this.f14632i.e(peerSettings.b());
            }
            x(0, 0, 4, 1);
            this.f14627a.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f14631h = true;
        this.f14627a.close();
    }

    public final synchronized void flush() {
        if (this.f14631h) {
            throw new IOException("closed");
        }
        this.f14627a.flush();
    }

    public final synchronized void i() {
        try {
            if (this.f14631h) {
                throw new IOException("closed");
            }
            if (this.f14628b) {
                Logger logger = f14626k;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(i9.d.s(">> CONNECTION " + e.f14502a.hex(), new Object[0]));
                }
                this.f14627a.h0(e.f14502a);
                this.f14627a.flush();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void k(boolean z10, int i10, t9.d dVar, int i11) {
        if (this.f14631h) {
            throw new IOException("closed");
        }
        v(i10, z10 ? 1 : 0, dVar, i11);
    }

    public final void v(int i10, int i11, t9.d dVar, int i12) {
        x(i10, i12, 0, i11);
        if (i12 > 0) {
            t9.e eVar = this.f14627a;
            r.b(dVar);
            eVar.p(dVar, i12);
        }
    }

    public final void x(int i10, int i11, int i12, int i13) {
        Logger logger = f14626k;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(e.INSTANCE.c(false, i10, i11, i12, i13));
        }
        if (i11 > this.f14630f) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f14630f + ": " + i11).toString());
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            throw new IllegalArgumentException(("reserved bit set: " + i10).toString());
        }
        i9.d.X(this.f14627a, i11);
        this.f14627a.T(i12 & 255);
        this.f14627a.T(i13 & 255);
        this.f14627a.L(i10 & Integer.MAX_VALUE);
    }
}
