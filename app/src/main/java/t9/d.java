package t9;

import com.oplus.aisubsystem.core.client.AiSettings;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements f, e, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: a */
    public v f15749a;

    /* JADX INFO: renamed from: b */
    private long f15750b;

    public static final class a implements Closeable {

        /* JADX INFO: renamed from: a */
        public d f15751a;

        /* JADX INFO: renamed from: b */
        private v f15752b;

        /* JADX INFO: renamed from: f */
        public byte[] f15754f;

        /* JADX INFO: renamed from: c */
        public long f15753c = -1;

        /* JADX INFO: renamed from: h */
        public int f15755h = -1;

        /* JADX INFO: renamed from: i */
        public int f15756i = -1;

        public final void c(v vVar) {
            this.f15752b = vVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f15751a == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.f15751a = null;
            c(null);
            this.f15753c = -1L;
            this.f15754f = null;
            this.f15755h = -1;
            this.f15756i = -1;
        }
    }

    @Override // t9.f
    public void A(long j10) throws EOFException {
        while (j10 > 0) {
            v vVar = this.f15749a;
            if (vVar == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j10, vVar.f15794c - vVar.f15793b);
            long j11 = iMin;
            F0(G0() - j11);
            j10 -= j11;
            int i10 = vVar.f15793b + iMin;
            vVar.f15793b = i10;
            if (i10 == vVar.f15794c) {
                this.f15749a = vVar.b();
                w.b(vVar);
            }
        }
    }

    @Override // t9.f
    public int A0(q options) throws EOFException {
        kotlin.jvm.internal.r.e(options, "options");
        int iE = u9.a.e(this, options, false, 2, null);
        if (iE == -1) {
            return -1;
        }
        A(options.d()[iE].size());
        return iE;
    }

    public final d B(d out, long j10, long j11) {
        kotlin.jvm.internal.r.e(out, "out");
        t9.b.b(G0(), j10, j11);
        if (j11 != 0) {
            out.F0(out.G0() + j11);
            v vVar = this.f15749a;
            while (true) {
                kotlin.jvm.internal.r.b(vVar);
                int i10 = vVar.f15794c;
                int i11 = vVar.f15793b;
                if (j10 < i10 - i11) {
                    break;
                }
                j10 -= (long) (i10 - i11);
                vVar = vVar.f15797f;
            }
            while (j11 > 0) {
                kotlin.jvm.internal.r.b(vVar);
                v vVarD = vVar.d();
                int i12 = vVarD.f15793b + ((int) j10);
                vVarD.f15793b = i12;
                vVarD.f15794c = Math.min(i12 + ((int) j11), vVarD.f15794c);
                v vVar2 = out.f15749a;
                if (vVar2 == null) {
                    vVarD.f15798g = vVarD;
                    vVarD.f15797f = vVarD;
                    out.f15749a = vVarD;
                } else {
                    kotlin.jvm.internal.r.b(vVar2);
                    v vVar3 = vVar2.f15798g;
                    kotlin.jvm.internal.r.b(vVar3);
                    vVar3.c(vVarD);
                }
                j11 -= (long) (vVarD.f15794c - vVarD.f15793b);
                vVar = vVar.f15797f;
                j10 = 0;
            }
        }
        return this;
    }

    @Override // t9.f
    public InputStream B0() {
        return new b();
    }

    @Override // t9.f
    public byte C0() throws EOFException {
        if (G0() == 0) {
            throw new EOFException();
        }
        v vVar = this.f15749a;
        kotlin.jvm.internal.r.b(vVar);
        int i10 = vVar.f15793b;
        int i11 = vVar.f15794c;
        int i12 = i10 + 1;
        byte b10 = vVar.f15792a[i10];
        F0(G0() - 1);
        if (i12 == i11) {
            this.f15749a = vVar.b();
            w.b(vVar);
        } else {
            vVar.f15793b = i12;
        }
        return b10;
    }

    public final byte D(long j10) {
        t9.b.b(G0(), j10, 1L);
        v vVar = this.f15749a;
        if (vVar == null) {
            kotlin.jvm.internal.r.b(null);
            throw null;
        }
        if (G0() - j10 < j10) {
            long jG0 = G0();
            while (jG0 > j10) {
                vVar = vVar.f15798g;
                kotlin.jvm.internal.r.b(vVar);
                jG0 -= (long) (vVar.f15794c - vVar.f15793b);
            }
            kotlin.jvm.internal.r.b(vVar);
            return vVar.f15792a[(int) ((((long) vVar.f15793b) + j10) - jG0)];
        }
        long j11 = 0;
        while (true) {
            long j12 = ((long) (vVar.f15794c - vVar.f15793b)) + j11;
            if (j12 > j10) {
                kotlin.jvm.internal.r.b(vVar);
                return vVar.f15792a[(int) ((((long) vVar.f15793b) + j10) - j11)];
            }
            vVar = vVar.f15797f;
            kotlin.jvm.internal.r.b(vVar);
            j11 = j12;
        }
    }

    public String D0() {
        return x0(this.f15750b, kotlin.text.d.f13110a);
    }

    public String E0(long j10) throws EOFException {
        return x0(j10, kotlin.text.d.f13110a);
    }

    @Override // t9.f
    public boolean F(long j10) {
        return this.f15750b >= j10;
    }

    public final void F0(long j10) {
        this.f15750b = j10;
    }

    public long G(byte b10, long j10, long j11) {
        v vVar;
        int i10;
        long jG0 = 0;
        if (0 > j10 || j10 > j11) {
            throw new IllegalArgumentException(("size=" + G0() + " fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        if (j11 > G0()) {
            j11 = G0();
        }
        if (j10 == j11 || (vVar = this.f15749a) == null) {
            return -1L;
        }
        if (G0() - j10 < j10) {
            jG0 = G0();
            while (jG0 > j10) {
                vVar = vVar.f15798g;
                kotlin.jvm.internal.r.b(vVar);
                jG0 -= (long) (vVar.f15794c - vVar.f15793b);
            }
            while (jG0 < j11) {
                byte[] bArr = vVar.f15792a;
                int iMin = (int) Math.min(vVar.f15794c, (((long) vVar.f15793b) + j11) - jG0);
                i10 = (int) ((((long) vVar.f15793b) + j10) - jG0);
                while (i10 < iMin) {
                    if (bArr[i10] != b10) {
                        i10++;
                    }
                }
                jG0 += (long) (vVar.f15794c - vVar.f15793b);
                vVar = vVar.f15797f;
                kotlin.jvm.internal.r.b(vVar);
                j10 = jG0;
            }
            return -1L;
        }
        while (true) {
            long j12 = ((long) (vVar.f15794c - vVar.f15793b)) + jG0;
            if (j12 > j10) {
                break;
            }
            vVar = vVar.f15797f;
            kotlin.jvm.internal.r.b(vVar);
            jG0 = j12;
        }
        while (jG0 < j11) {
            byte[] bArr2 = vVar.f15792a;
            int iMin2 = (int) Math.min(vVar.f15794c, (((long) vVar.f15793b) + j11) - jG0);
            i10 = (int) ((((long) vVar.f15793b) + j10) - jG0);
            while (i10 < iMin2) {
                if (bArr2[i10] != b10) {
                    i10++;
                }
            }
            jG0 += (long) (vVar.f15794c - vVar.f15793b);
            vVar = vVar.f15797f;
            kotlin.jvm.internal.r.b(vVar);
            j10 = jG0;
        }
        return -1L;
        return ((long) (i10 - vVar.f15793b)) + jG0;
    }

    public final long G0() {
        return this.f15750b;
    }

    public final g H0() {
        if (G0() <= 2147483647L) {
            return I0((int) G0());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + G0()).toString());
    }

    public long I(g bytes, long j10) {
        long jG0;
        int i10;
        long j11 = j10;
        kotlin.jvm.internal.r.e(bytes, "bytes");
        if (bytes.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j12 = 0;
        if (j11 < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j11).toString());
        }
        v vVar = this.f15749a;
        if (vVar != null) {
            if (G0() - j11 < j11) {
                jG0 = G0();
                while (jG0 > j11) {
                    vVar = vVar.f15798g;
                    kotlin.jvm.internal.r.b(vVar);
                    jG0 -= (long) (vVar.f15794c - vVar.f15793b);
                }
                byte[] bArrInternalArray$okio = bytes.internalArray$okio();
                byte b10 = bArrInternalArray$okio[0];
                int size = bytes.size();
                long jG02 = (G0() - ((long) size)) + 1;
                while (jG0 < jG02) {
                    byte[] bArr = vVar.f15792a;
                    int iMin = (int) Math.min(vVar.f15794c, (((long) vVar.f15793b) + jG02) - jG0);
                    i10 = (int) ((((long) vVar.f15793b) + j11) - jG0);
                    while (i10 < iMin) {
                        if (bArr[i10] == b10 && u9.a.b(vVar, i10 + 1, bArrInternalArray$okio, 1, size)) {
                            return ((long) (i10 - vVar.f15793b)) + jG0;
                        }
                        i10++;
                    }
                    jG0 += (long) (vVar.f15794c - vVar.f15793b);
                    vVar = vVar.f15797f;
                    kotlin.jvm.internal.r.b(vVar);
                    j11 = jG0;
                }
            } else {
                while (true) {
                    long j13 = ((long) (vVar.f15794c - vVar.f15793b)) + j12;
                    if (j13 > j11) {
                        break;
                    }
                    vVar = vVar.f15797f;
                    kotlin.jvm.internal.r.b(vVar);
                    j12 = j13;
                }
                byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
                byte b11 = bArrInternalArray$okio2[0];
                int size2 = bytes.size();
                long jG03 = (G0() - ((long) size2)) + 1;
                jG0 = j12;
                while (jG0 < jG03) {
                    byte[] bArr2 = vVar.f15792a;
                    long j14 = jG03;
                    int iMin2 = (int) Math.min(vVar.f15794c, (((long) vVar.f15793b) + jG03) - jG0);
                    i10 = (int) ((((long) vVar.f15793b) + j11) - jG0);
                    while (i10 < iMin2) {
                        if (bArr2[i10] == b11 && u9.a.b(vVar, i10 + 1, bArrInternalArray$okio2, 1, size2)) {
                            return ((long) (i10 - vVar.f15793b)) + jG0;
                        }
                        i10++;
                    }
                    jG0 += (long) (vVar.f15794c - vVar.f15793b);
                    vVar = vVar.f15797f;
                    kotlin.jvm.internal.r.b(vVar);
                    jG03 = j14;
                    j11 = jG0;
                }
            }
        }
        return -1L;
    }

    public final g I0(int i10) {
        if (i10 == 0) {
            return g.EMPTY;
        }
        t9.b.b(G0(), 0L, i10);
        v vVar = this.f15749a;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            kotlin.jvm.internal.r.b(vVar);
            int i14 = vVar.f15794c;
            int i15 = vVar.f15793b;
            if (i14 == i15) {
                throw new AssertionError("s.limit == s.pos");
            }
            i12 += i14 - i15;
            i13++;
            vVar = vVar.f15797f;
        }
        byte[][] bArr = new byte[i13][];
        int[] iArr = new int[i13 * 2];
        v vVar2 = this.f15749a;
        int i16 = 0;
        while (i11 < i10) {
            kotlin.jvm.internal.r.b(vVar2);
            bArr[i16] = vVar2.f15792a;
            i11 += vVar2.f15794c - vVar2.f15793b;
            iArr[i16] = Math.min(i11, i10);
            iArr[i16 + i13] = vVar2.f15793b;
            vVar2.f15795d = true;
            i16++;
            vVar2 = vVar2.f15797f;
        }
        return new x(bArr, iArr);
    }

    public final v J0(int i10) {
        if (i10 < 1 || i10 > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        v vVar = this.f15749a;
        if (vVar == null) {
            v vVarC = w.c();
            this.f15749a = vVarC;
            vVarC.f15798g = vVarC;
            vVarC.f15797f = vVarC;
            return vVarC;
        }
        kotlin.jvm.internal.r.b(vVar);
        v vVarC2 = vVar.f15798g;
        kotlin.jvm.internal.r.b(vVarC2);
        if (vVarC2.f15794c + i10 > 8192 || !vVarC2.f15796e) {
            vVarC2 = vVarC2.c(w.c());
        }
        return vVarC2;
    }

    @Override // t9.f
    public int K() throws EOFException {
        if (G0() < 4) {
            throw new EOFException();
        }
        v vVar = this.f15749a;
        kotlin.jvm.internal.r.b(vVar);
        int i10 = vVar.f15793b;
        int i11 = vVar.f15794c;
        if (i11 - i10 < 4) {
            return (C0() & 255) | ((C0() & 255) << 24) | ((C0() & 255) << 16) | ((C0() & 255) << 8);
        }
        byte[] bArr = vVar.f15792a;
        int i12 = i10 + 3;
        int i13 = ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 2] & 255) << 8);
        int i14 = i10 + 4;
        int i15 = (bArr[i12] & 255) | i13;
        F0(G0() - 4);
        if (i14 == i11) {
            this.f15749a = vVar.b();
            w.b(vVar);
        } else {
            vVar.f15793b = i14;
        }
        return i15;
    }

    @Override // t9.e
    /* JADX INFO: renamed from: K0 */
    public d h0(g byteString) {
        kotlin.jvm.internal.r.e(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @Override // t9.e
    /* JADX INFO: renamed from: L0 */
    public d Z(byte[] source) {
        kotlin.jvm.internal.r.e(source, "source");
        return j(source, 0, source.length);
    }

    @Override // t9.e
    /* JADX INFO: renamed from: M0 */
    public d j(byte[] source, int i10, int i11) {
        kotlin.jvm.internal.r.e(source, "source");
        long j10 = i11;
        t9.b.b(source.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            v vVarJ0 = J0(1);
            int iMin = Math.min(i12 - i10, 8192 - vVarJ0.f15794c);
            int i13 = i10 + iMin;
            kotlin.collections.i.g(source, vVarJ0.f15792a, vVarJ0.f15794c, i10, i13);
            vVarJ0.f15794c += iMin;
            i10 = i13;
        }
        F0(G0() + j10);
        return this;
    }

    public long N(g targetBytes, long j10) {
        int i10;
        int i11;
        kotlin.jvm.internal.r.e(targetBytes, "targetBytes");
        long jG0 = 0;
        if (j10 < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j10).toString());
        }
        v vVar = this.f15749a;
        if (vVar == null) {
            return -1L;
        }
        if (G0() - j10 < j10) {
            jG0 = G0();
            while (jG0 > j10) {
                vVar = vVar.f15798g;
                kotlin.jvm.internal.r.b(vVar);
                jG0 -= (long) (vVar.f15794c - vVar.f15793b);
            }
            if (targetBytes.size() == 2) {
                byte b10 = targetBytes.getByte(0);
                byte b11 = targetBytes.getByte(1);
                while (jG0 < G0()) {
                    byte[] bArr = vVar.f15792a;
                    i10 = (int) ((((long) vVar.f15793b) + j10) - jG0);
                    int i12 = vVar.f15794c;
                    while (i10 < i12) {
                        byte b12 = bArr[i10];
                        if (b12 == b10 || b12 == b11) {
                            i11 = vVar.f15793b;
                        } else {
                            i10++;
                        }
                    }
                    jG0 += (long) (vVar.f15794c - vVar.f15793b);
                    vVar = vVar.f15797f;
                    kotlin.jvm.internal.r.b(vVar);
                    j10 = jG0;
                }
                return -1L;
            }
            byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
            while (jG0 < G0()) {
                byte[] bArr2 = vVar.f15792a;
                i10 = (int) ((((long) vVar.f15793b) + j10) - jG0);
                int i13 = vVar.f15794c;
                while (i10 < i13) {
                    byte b13 = bArr2[i10];
                    for (byte b14 : bArrInternalArray$okio) {
                        if (b13 == b14) {
                            i11 = vVar.f15793b;
                        }
                    }
                    i10++;
                }
                jG0 += (long) (vVar.f15794c - vVar.f15793b);
                vVar = vVar.f15797f;
                kotlin.jvm.internal.r.b(vVar);
                j10 = jG0;
            }
            return -1L;
        }
        while (true) {
            long j11 = ((long) (vVar.f15794c - vVar.f15793b)) + jG0;
            if (j11 > j10) {
                break;
            }
            vVar = vVar.f15797f;
            kotlin.jvm.internal.r.b(vVar);
            jG0 = j11;
        }
        if (targetBytes.size() == 2) {
            byte b15 = targetBytes.getByte(0);
            byte b16 = targetBytes.getByte(1);
            while (jG0 < G0()) {
                byte[] bArr3 = vVar.f15792a;
                i10 = (int) ((((long) vVar.f15793b) + j10) - jG0);
                int i14 = vVar.f15794c;
                while (i10 < i14) {
                    byte b17 = bArr3[i10];
                    if (b17 == b15 || b17 == b16) {
                        i11 = vVar.f15793b;
                    } else {
                        i10++;
                    }
                }
                jG0 += (long) (vVar.f15794c - vVar.f15793b);
                vVar = vVar.f15797f;
                kotlin.jvm.internal.r.b(vVar);
                j10 = jG0;
            }
            return -1L;
        }
        byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
        while (jG0 < G0()) {
            byte[] bArr4 = vVar.f15792a;
            i10 = (int) ((((long) vVar.f15793b) + j10) - jG0);
            int i15 = vVar.f15794c;
            while (i10 < i15) {
                byte b18 = bArr4[i10];
                for (byte b19 : bArrInternalArray$okio2) {
                    if (b18 == b19) {
                        i11 = vVar.f15793b;
                    }
                }
                i10++;
            }
            jG0 += (long) (vVar.f15794c - vVar.f15793b);
            vVar = vVar.f15797f;
            kotlin.jvm.internal.r.b(vVar);
            j10 = jG0;
        }
        return -1L;
        return ((long) (i10 - i11)) + jG0;
    }

    public long N0(a0 source) {
        kotlin.jvm.internal.r.e(source, "source");
        long j10 = 0;
        while (true) {
            long jI0 = source.i0(this, 8192L);
            if (jI0 == -1) {
                return j10;
            }
            j10 += jI0;
        }
    }

    @Override // t9.f
    public String O() {
        return d0(Long.MAX_VALUE);
    }

    @Override // t9.e
    /* JADX INFO: renamed from: O0 */
    public d T(int i10) {
        v vVarJ0 = J0(1);
        byte[] bArr = vVarJ0.f15792a;
        int i11 = vVarJ0.f15794c;
        vVarJ0.f15794c = i11 + 1;
        bArr[i11] = (byte) i10;
        F0(G0() + 1);
        return this;
    }

    @Override // t9.e
    /* JADX INFO: renamed from: P0 */
    public d s(long j10) {
        if (j10 == 0) {
            return T(48);
        }
        long j11 = (j10 >>> 1) | j10;
        long j12 = j11 | (j11 >>> 2);
        long j13 = j12 | (j12 >>> 4);
        long j14 = j13 | (j13 >>> 8);
        long j15 = j14 | (j14 >>> 16);
        long j16 = j15 | (j15 >>> 32);
        long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
        long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
        long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
        long j20 = j19 + (j19 >>> 8);
        long j21 = j20 + (j20 >>> 16);
        int i10 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        v vVarJ0 = J0(i10);
        byte[] bArr = vVarJ0.f15792a;
        int i11 = vVarJ0.f15794c;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            bArr[i12] = u9.a.a()[(int) (15 & j10)];
            j10 >>>= 4;
        }
        vVarJ0.f15794c += i10;
        F0(G0() + ((long) i10));
        return this;
    }

    @Override // t9.f
    public byte[] Q() {
        return U(G0());
    }

    @Override // t9.e
    /* JADX INFO: renamed from: Q0 */
    public d L(int i10) {
        v vVarJ0 = J0(4);
        byte[] bArr = vVarJ0.f15792a;
        int i11 = vVarJ0.f15794c;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        vVarJ0.f15794c = i11 + 4;
        F0(G0() + 4);
        return this;
    }

    @Override // t9.f
    public long R(g targetBytes) {
        kotlin.jvm.internal.r.e(targetBytes, "targetBytes");
        return N(targetBytes, 0L);
    }

    @Override // t9.e
    /* JADX INFO: renamed from: R0 */
    public d E(int i10) {
        v vVarJ0 = J0(2);
        byte[] bArr = vVarJ0.f15792a;
        int i11 = vVarJ0.f15794c;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        vVarJ0.f15794c = i11 + 2;
        F0(G0() + 2);
        return this;
    }

    @Override // t9.f
    public boolean S() {
        return this.f15750b == 0;
    }

    public d S0(String string, int i10, int i11, Charset charset) {
        kotlin.jvm.internal.r.e(string, "string");
        kotlin.jvm.internal.r.e(charset, "charset");
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
        }
        if (i11 > string.length()) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
        }
        if (kotlin.jvm.internal.r.a(charset, kotlin.text.d.f13110a)) {
            return r(string, i10, i11);
        }
        String strSubstring = string.substring(i10, i11);
        kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        byte[] bytes = strSubstring.getBytes(charset);
        kotlin.jvm.internal.r.d(bytes, "this as java.lang.String).getBytes(charset)");
        return j(bytes, 0, bytes.length);
    }

    @Override // t9.e
    /* JADX INFO: renamed from: T0 */
    public d u0(String string) {
        kotlin.jvm.internal.r.e(string, "string");
        return r(string, 0, string.length());
    }

    @Override // t9.f
    public byte[] U(long j10) throws EOFException {
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j10).toString());
        }
        if (G0() < j10) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j10];
        b0(bArr);
        return bArr;
    }

    @Override // t9.e
    /* JADX INFO: renamed from: U0 */
    public d r(String string, int i10, int i11) {
        char cCharAt;
        kotlin.jvm.internal.r.e(string, "string");
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
        }
        if (i11 > string.length()) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
        }
        while (i10 < i11) {
            char cCharAt2 = string.charAt(i10);
            if (cCharAt2 < 128) {
                v vVarJ0 = J0(1);
                byte[] bArr = vVarJ0.f15792a;
                int i12 = vVarJ0.f15794c - i10;
                int iMin = Math.min(i11, 8192 - i12);
                int i13 = i10 + 1;
                bArr[i10 + i12] = (byte) cCharAt2;
                while (true) {
                    i10 = i13;
                    if (i10 >= iMin || (cCharAt = string.charAt(i10)) >= 128) {
                        break;
                    }
                    i13 = i10 + 1;
                    bArr[i10 + i12] = (byte) cCharAt;
                }
                int i14 = vVarJ0.f15794c;
                int i15 = (i12 + i10) - i14;
                vVarJ0.f15794c = i14 + i15;
                F0(G0() + ((long) i15));
            } else {
                if (cCharAt2 < 2048) {
                    v vVarJ02 = J0(2);
                    byte[] bArr2 = vVarJ02.f15792a;
                    int i16 = vVarJ02.f15794c;
                    bArr2[i16] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i16 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    vVarJ02.f15794c = i16 + 2;
                    F0(G0() + 2);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    v vVarJ03 = J0(3);
                    byte[] bArr3 = vVarJ03.f15792a;
                    int i17 = vVarJ03.f15794c;
                    bArr3[i17] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i17 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i17 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    vVarJ03.f15794c = i17 + 3;
                    F0(G0() + 3);
                } else {
                    int i18 = i10 + 1;
                    char cCharAt3 = i18 < i11 ? string.charAt(i18) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        T(63);
                        i10 = i18;
                    } else {
                        int i19 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        v vVarJ04 = J0(4);
                        byte[] bArr4 = vVarJ04.f15792a;
                        int i20 = vVarJ04.f15794c;
                        bArr4[i20] = (byte) ((i19 >> 18) | 240);
                        bArr4[i20 + 1] = (byte) (((i19 >> 12) & 63) | 128);
                        bArr4[i20 + 2] = (byte) (((i19 >> 6) & 63) | 128);
                        bArr4[i20 + 3] = (byte) ((i19 & 63) | 128);
                        vVarJ04.f15794c = i20 + 4;
                        F0(G0() + 4);
                        i10 += 2;
                    }
                }
                i10++;
            }
        }
        return this;
    }

    public d V0(int i10) {
        if (i10 < 128) {
            T(i10);
        } else if (i10 < 2048) {
            v vVarJ0 = J0(2);
            byte[] bArr = vVarJ0.f15792a;
            int i11 = vVarJ0.f15794c;
            bArr[i11] = (byte) ((i10 >> 6) | 192);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            vVarJ0.f15794c = i11 + 2;
            F0(G0() + 2);
        } else if (55296 <= i10 && i10 < 57344) {
            T(63);
        } else if (i10 < 65536) {
            v vVarJ02 = J0(3);
            byte[] bArr2 = vVarJ02.f15792a;
            int i12 = vVarJ02.f15794c;
            bArr2[i12] = (byte) ((i10 >> 12) | 224);
            bArr2[i12 + 1] = (byte) (((i10 >> 6) & 63) | 128);
            bArr2[i12 + 2] = (byte) ((i10 & 63) | 128);
            vVarJ02.f15794c = i12 + 3;
            F0(G0() + 3);
        } else {
            if (i10 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: 0x" + t9.b.i(i10));
            }
            v vVarJ03 = J0(4);
            byte[] bArr3 = vVarJ03.f15792a;
            int i13 = vVarJ03.f15794c;
            bArr3[i13] = (byte) ((i10 >> 18) | 240);
            bArr3[i13 + 1] = (byte) (((i10 >> 12) & 63) | 128);
            bArr3[i13 + 2] = (byte) (((i10 >> 6) & 63) | 128);
            bArr3[i13 + 3] = (byte) ((i10 & 63) | 128);
            vVarJ03.f15794c = i13 + 4;
            F0(G0() + 4);
        }
        return this;
    }

    public int X(byte[] sink, int i10, int i11) {
        kotlin.jvm.internal.r.e(sink, "sink");
        t9.b.b(sink.length, i10, i11);
        v vVar = this.f15749a;
        if (vVar == null) {
            return -1;
        }
        int iMin = Math.min(i11, vVar.f15794c - vVar.f15793b);
        byte[] bArr = vVar.f15792a;
        int i12 = vVar.f15793b;
        kotlin.collections.i.g(bArr, sink, i10, i12, i12 + iMin);
        vVar.f15793b += iMin;
        F0(G0() - ((long) iMin));
        if (vVar.f15793b == vVar.f15794c) {
            this.f15749a = vVar.b();
            w.b(vVar);
        }
        return iMin;
    }

    public g a0() {
        return w(G0());
    }

    public void b0(byte[] sink) throws EOFException {
        kotlin.jvm.internal.r.e(sink, "sink");
        int i10 = 0;
        while (i10 < sink.length) {
            int iX = X(sink, i10, sink.length - i10);
            if (iX == -1) {
                throw new EOFException();
            }
            i10 += iX;
        }
    }

    @Override // t9.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // t9.f, t9.e
    public d d() {
        return this;
    }

    @Override // t9.f
    public String d0(long j10) throws EOFException {
        if (j10 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j10).toString());
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long jG = G((byte) 10, 0L, j11);
        if (jG != -1) {
            return u9.a.c(this, jG);
        }
        if (j11 < G0() && D(j11 - 1) == 13 && D(j11) == 10) {
            return u9.a.c(this, j11);
        }
        d dVar = new d();
        B(dVar, 0L, Math.min(32, G0()));
        throw new EOFException("\\n not found: limit=" + Math.min(G0(), j10) + " content=" + dVar.a0().hex() + (char) 8230);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (G0() == dVar.G0()) {
                if (G0() == 0) {
                    return true;
                }
                v vVar = this.f15749a;
                kotlin.jvm.internal.r.b(vVar);
                v vVar2 = dVar.f15749a;
                kotlin.jvm.internal.r.b(vVar2);
                int i10 = vVar.f15793b;
                int i11 = vVar2.f15793b;
                long j10 = 0;
                while (j10 < G0()) {
                    long jMin = Math.min(vVar.f15794c - i10, vVar2.f15794c - i11);
                    long j11 = 0;
                    while (j11 < jMin) {
                        int i12 = i10 + 1;
                        int i13 = i11 + 1;
                        if (vVar.f15792a[i10] == vVar2.f15792a[i11]) {
                            j11++;
                            i10 = i12;
                            i11 = i13;
                        }
                    }
                    if (i10 == vVar.f15794c) {
                        vVar = vVar.f15797f;
                        kotlin.jvm.internal.r.b(vVar);
                        i10 = vVar.f15793b;
                    }
                    if (i11 == vVar2.f15794c) {
                        vVar2 = vVar2.f15797f;
                        kotlin.jvm.internal.r.b(vVar2);
                        i11 = vVar2.f15793b;
                    }
                    j10 += jMin;
                }
                return true;
            }
        }
        return false;
    }

    @Override // t9.a0
    public b0 f() {
        return b0.f15732e;
    }

    @Override // t9.f
    public short f0() throws EOFException {
        if (G0() < 2) {
            throw new EOFException();
        }
        v vVar = this.f15749a;
        kotlin.jvm.internal.r.b(vVar);
        int i10 = vVar.f15793b;
        int i11 = vVar.f15794c;
        if (i11 - i10 < 2) {
            return (short) ((C0() & 255) | ((C0() & 255) << 8));
        }
        byte[] bArr = vVar.f15792a;
        int i12 = i10 + 1;
        int i13 = (bArr[i10] & 255) << 8;
        int i14 = i10 + 2;
        int i15 = (bArr[i12] & 255) | i13;
        F0(G0() - 2);
        if (i14 == i11) {
            this.f15749a = vVar.b();
            w.b(vVar);
        } else {
            vVar.f15793b = i14;
        }
        return (short) i15;
    }

    @Override // t9.e, t9.y, java.io.Flushable
    public void flush() {
    }

    public int hashCode() {
        v vVar = this.f15749a;
        if (vVar == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = vVar.f15794c;
            for (int i12 = vVar.f15793b; i12 < i11; i12++) {
                i10 = (i10 * 31) + vVar.f15792a[i12];
            }
            vVar = vVar.f15797f;
            kotlin.jvm.internal.r.b(vVar);
        } while (vVar != this.f15749a);
        return i10;
    }

    public final void i() throws EOFException {
        A(G0());
    }

    @Override // t9.a0
    public long i0(d sink, long j10) {
        kotlin.jvm.internal.r.e(sink, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        if (G0() == 0) {
            return -1L;
        }
        if (j10 > G0()) {
            j10 = G0();
        }
        sink.p(this, j10);
        return j10;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // t9.f
    public f j0() {
        return n.b(new s(this));
    }

    /* JADX INFO: renamed from: k */
    public d clone() {
        return x();
    }

    @Override // t9.f
    public long n0(g bytes) {
        kotlin.jvm.internal.r.e(bytes, "bytes");
        return I(bytes, 0L);
    }

    @Override // t9.y
    public void p(d source, long j10) {
        v vVar;
        kotlin.jvm.internal.r.e(source, "source");
        if (source == this) {
            throw new IllegalArgumentException("source == this");
        }
        t9.b.b(source.G0(), 0L, j10);
        while (j10 > 0) {
            v vVar2 = source.f15749a;
            kotlin.jvm.internal.r.b(vVar2);
            int i10 = vVar2.f15794c;
            kotlin.jvm.internal.r.b(source.f15749a);
            if (j10 < i10 - r1.f15793b) {
                v vVar3 = this.f15749a;
                if (vVar3 != null) {
                    kotlin.jvm.internal.r.b(vVar3);
                    vVar = vVar3.f15798g;
                } else {
                    vVar = null;
                }
                if (vVar != null && vVar.f15796e) {
                    if ((((long) vVar.f15794c) + j10) - ((long) (vVar.f15795d ? 0 : vVar.f15793b)) <= 8192) {
                        v vVar4 = source.f15749a;
                        kotlin.jvm.internal.r.b(vVar4);
                        vVar4.f(vVar, (int) j10);
                        source.F0(source.G0() - j10);
                        F0(G0() + j10);
                        return;
                    }
                }
                v vVar5 = source.f15749a;
                kotlin.jvm.internal.r.b(vVar5);
                source.f15749a = vVar5.e((int) j10);
            }
            v vVar6 = source.f15749a;
            kotlin.jvm.internal.r.b(vVar6);
            long j11 = vVar6.f15794c - vVar6.f15793b;
            source.f15749a = vVar6.b();
            v vVar7 = this.f15749a;
            if (vVar7 == null) {
                this.f15749a = vVar6;
                vVar6.f15798g = vVar6;
                vVar6.f15797f = vVar6;
            } else {
                kotlin.jvm.internal.r.b(vVar7);
                v vVar8 = vVar7.f15798g;
                kotlin.jvm.internal.r.b(vVar8);
                vVar8.c(vVar6).a();
            }
            source.F0(source.G0() - j11);
            F0(G0() + j11);
            j10 -= j11;
        }
    }

    public int q0() {
        return t9.b.f(K());
    }

    @Override // t9.f
    public void r0(long j10) throws EOFException {
        if (this.f15750b < j10) {
            throw new EOFException();
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) {
        kotlin.jvm.internal.r.e(sink, "sink");
        v vVar = this.f15749a;
        if (vVar == null) {
            return -1;
        }
        int iMin = Math.min(sink.remaining(), vVar.f15794c - vVar.f15793b);
        sink.put(vVar.f15792a, vVar.f15793b, iMin);
        int i10 = vVar.f15793b + iMin;
        vVar.f15793b = i10;
        this.f15750b -= (long) iMin;
        if (i10 == vVar.f15794c) {
            this.f15749a = vVar.b();
            w.b(vVar);
        }
        return iMin;
    }

    public String toString() {
        return H0().toString();
    }

    @Override // t9.f
    public d u() {
        return this;
    }

    public final long v() {
        long jG0 = G0();
        if (jG0 == 0) {
            return 0L;
        }
        v vVar = this.f15749a;
        kotlin.jvm.internal.r.b(vVar);
        v vVar2 = vVar.f15798g;
        kotlin.jvm.internal.r.b(vVar2);
        int i10 = vVar2.f15794c;
        if (i10 < 8192 && vVar2.f15796e) {
            jG0 -= (long) (i10 - vVar2.f15793b);
        }
        return jG0;
    }

    public short v0() {
        return t9.b.g(f0());
    }

    @Override // t9.f
    public g w(long j10) throws EOFException {
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j10).toString());
        }
        if (G0() < j10) {
            throw new EOFException();
        }
        if (j10 < AiSettings.DEFAULT_MAXIMUM_MEMORY) {
            return new g(U(j10));
        }
        g gVarI0 = I0((int) j10);
        A(j10);
        return gVarI0;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) {
        kotlin.jvm.internal.r.e(source, "source");
        int iRemaining = source.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            v vVarJ0 = J0(1);
            int iMin = Math.min(i10, 8192 - vVarJ0.f15794c);
            source.get(vVarJ0.f15792a, vVarJ0.f15794c, iMin);
            i10 -= iMin;
            vVarJ0.f15794c += iMin;
        }
        this.f15750b += (long) iRemaining;
        return iRemaining;
    }

    public final d x() {
        d dVar = new d();
        if (G0() != 0) {
            v vVar = this.f15749a;
            kotlin.jvm.internal.r.b(vVar);
            v vVarD = vVar.d();
            dVar.f15749a = vVarD;
            vVarD.f15798g = vVarD;
            vVarD.f15797f = vVarD;
            for (v vVar2 = vVar.f15797f; vVar2 != vVar; vVar2 = vVar2.f15797f) {
                v vVar3 = vVarD.f15798g;
                kotlin.jvm.internal.r.b(vVar3);
                kotlin.jvm.internal.r.b(vVar2);
                vVar3.c(vVar2.d());
            }
            dVar.F0(G0());
        }
        return dVar;
    }

    public String x0(long j10, Charset charset) throws EOFException {
        kotlin.jvm.internal.r.e(charset, "charset");
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j10).toString());
        }
        if (this.f15750b < j10) {
            throw new EOFException();
        }
        if (j10 == 0) {
            return "";
        }
        v vVar = this.f15749a;
        kotlin.jvm.internal.r.b(vVar);
        int i10 = vVar.f15793b;
        if (((long) i10) + j10 > vVar.f15794c) {
            return new String(U(j10), charset);
        }
        int i11 = (int) j10;
        String str = new String(vVar.f15792a, i10, i11, charset);
        int i12 = vVar.f15793b + i11;
        vVar.f15793b = i12;
        this.f15750b -= j10;
        if (i12 == vVar.f15794c) {
            this.f15749a = vVar.b();
            w.b(vVar);
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00a7 A[EDGE_INSN: B:92:0x00a7->B:86:0x00a7 BREAK  A[LOOP:0: B:54:0x000d->B:94:?], SYNTHETIC] */
    @Override // t9.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long z0() throws java.io.EOFException {
        /*
            r14 = this;
            long r0 = r14.G0()
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Lb1
            r0 = 0
            r1 = r0
            r4 = r2
        Ld:
            t9.v r6 = r14.f15749a
            kotlin.jvm.internal.r.b(r6)
            byte[] r7 = r6.f15792a
            int r8 = r6.f15793b
            int r9 = r6.f15794c
        L18:
            if (r8 >= r9) goto L93
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L27
            r11 = 57
            if (r10 > r11) goto L27
            int r11 = r10 + (-48)
            goto L3c
        L27:
            r11 = 97
            if (r10 < r11) goto L32
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L32
            int r11 = r10 + (-87)
            goto L3c
        L32:
            r11 = 65
            if (r10 < r11) goto L74
            r11 = 70
            if (r10 > r11) goto L74
            int r11 = r10 + (-55)
        L3c:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L4c
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L18
        L4c:
            t9.d r14 = new t9.d
            r14.<init>()
            t9.d r14 = r14.s(r4)
            t9.d r14 = r14.T(r10)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Number too large: "
            r1.append(r2)
            java.lang.String r14 = r14.D0()
            r1.append(r14)
            java.lang.String r14 = r1.toString()
            r0.<init>(r14)
            throw r0
        L74:
            if (r0 == 0) goto L78
            r1 = 1
            goto L93
        L78:
            java.lang.NumberFormatException r14 = new java.lang.NumberFormatException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            r0.append(r1)
            java.lang.String r1 = t9.b.h(r10)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r14.<init>(r0)
            throw r14
        L93:
            if (r8 != r9) goto L9f
            t9.v r7 = r6.b()
            r14.f15749a = r7
            t9.w.b(r6)
            goto La1
        L9f:
            r6.f15793b = r8
        La1:
            if (r1 != 0) goto La7
            t9.v r6 = r14.f15749a
            if (r6 != 0) goto Ld
        La7:
            long r1 = r14.G0()
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.F0(r1)
            return r4
        Lb1:
            java.io.EOFException r14 = new java.io.EOFException
            r14.<init>()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: t9.d.z0():long");
    }

    public static final class b extends InputStream {
        b() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(d.this.G0(), Integer.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            if (d.this.G0() > 0) {
                return d.this.C0() & 255;
            }
            return -1;
        }

        public String toString() {
            return d.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] sink, int i10, int i11) {
            kotlin.jvm.internal.r.e(sink, "sink");
            return d.this.X(sink, i10, i11);
        }
    }
}
