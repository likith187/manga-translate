package androidx.emoji2.text;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
abstract class l {

    private static class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f2410a;

        a(ByteBuffer byteBuffer) {
            this.f2410a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // androidx.emoji2.text.l.c
        public void a(int i10) {
            ByteBuffer byteBuffer = this.f2410a;
            byteBuffer.position(byteBuffer.position() + i10);
        }

        @Override // androidx.emoji2.text.l.c
        public int b() {
            return l.d(this.f2410a.getShort());
        }

        @Override // androidx.emoji2.text.l.c
        public long c() {
            return l.c(this.f2410a.getInt());
        }

        @Override // androidx.emoji2.text.l.c
        public int d() {
            return this.f2410a.getInt();
        }

        @Override // androidx.emoji2.text.l.c
        public long getPosition() {
            return this.f2410a.position();
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f2411a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f2412b;

        b(long j10, long j11) {
            this.f2411a = j10;
            this.f2412b = j11;
        }

        long a() {
            return this.f2411a;
        }
    }

    private interface c {
        void a(int i10);

        int b();

        long c();

        int d();

        long getPosition();
    }

    private static b a(c cVar) throws IOException {
        long jC;
        cVar.a(4);
        int iB = cVar.b();
        if (iB > 100) {
            throw new IOException("Cannot read metadata.");
        }
        cVar.a(6);
        int i10 = 0;
        while (true) {
            if (i10 >= iB) {
                jC = -1;
                break;
            }
            int iD = cVar.d();
            cVar.a(4);
            jC = cVar.c();
            cVar.a(4);
            if (1835365473 == iD) {
                break;
            }
            i10++;
        }
        if (jC != -1) {
            cVar.a((int) (jC - cVar.getPosition()));
            cVar.a(12);
            long jC2 = cVar.c();
            for (int i11 = 0; i11 < jC2; i11++) {
                int iD2 = cVar.d();
                long jC3 = cVar.c();
                long jC4 = cVar.c();
                if (1164798569 == iD2 || 1701669481 == iD2) {
                    return new b(jC3 + jC, jC4);
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    static g0.b b(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position((int) a(new a(byteBufferDuplicate)).a());
        return g0.b.h(byteBufferDuplicate);
    }

    static long c(int i10) {
        return ((long) i10) & 4294967295L;
    }

    static int d(short s10) {
        return s10 & 65535;
    }
}
