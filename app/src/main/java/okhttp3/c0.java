package okhttp3;

import java.io.Closeable;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c0 implements Closeable {

    /* JADX INFO: renamed from: a */
    public static final a f14692a = new a(null);

    public static final class a {

        /* JADX INFO: renamed from: okhttp3.c0$a$a */
        public static final class C0194a extends c0 {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ w f14693b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ long f14694c;

            /* JADX INFO: renamed from: f */
            final /* synthetic */ t9.f f14695f;

            C0194a(w wVar, long j10, t9.f fVar) {
                this.f14693b = wVar;
                this.f14694c = j10;
                this.f14695f = fVar;
            }

            @Override // okhttp3.c0
            public long i() {
                return this.f14694c;
            }

            @Override // okhttp3.c0
            public t9.f k() {
                return this.f14695f;
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ c0 c(a aVar, byte[] bArr, w wVar, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                wVar = null;
            }
            return aVar.b(bArr, wVar);
        }

        public final c0 a(t9.f fVar, w wVar, long j10) {
            kotlin.jvm.internal.r.e(fVar, "<this>");
            return new C0194a(wVar, j10, fVar);
        }

        public final c0 b(byte[] bArr, w wVar) {
            kotlin.jvm.internal.r.e(bArr, "<this>");
            return a(new t9.d().Z(bArr), wVar, bArr.length);
        }

        private a() {
        }
    }

    public final byte[] c() throws IOException {
        long jI = i();
        if (jI > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + jI);
        }
        t9.f fVarK = k();
        try {
            byte[] bArrQ = fVarK.Q();
            kotlin.io.c.a(fVarK, null);
            int length = bArrQ.length;
            if (jI == -1 || jI == length) {
                return bArrQ;
            }
            throw new IOException("Content-Length (" + jI + ") and stream length (" + length + ") disagree");
        } finally {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        i9.d.l(k());
    }

    public abstract long i();

    public abstract t9.f k();
}
