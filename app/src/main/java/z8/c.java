package z8;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {
    public static final a Default = new a(null);
    private static final c defaultRandom = s8.b.f15579a.b();

    public static final class a extends c implements Serializable {

        /* JADX INFO: renamed from: z8.c$a$a */
        private static final class C0250a implements Serializable {
            public static final C0250a INSTANCE = new C0250a();
            private static final long serialVersionUID = 0;

            private C0250a() {
            }

            private final Object readResolve() {
                return c.Default;
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Object writeReplace() {
            return C0250a.INSTANCE;
        }

        @Override // z8.c
        public int nextBits(int i10) {
            return c.defaultRandom.nextBits(i10);
        }

        @Override // z8.c
        public boolean nextBoolean() {
            return c.defaultRandom.nextBoolean();
        }

        @Override // z8.c
        public byte[] nextBytes(byte[] array) {
            r.e(array, "array");
            return c.defaultRandom.nextBytes(array);
        }

        @Override // z8.c
        public double nextDouble() {
            return c.defaultRandom.nextDouble();
        }

        @Override // z8.c
        public float nextFloat() {
            return c.defaultRandom.nextFloat();
        }

        @Override // z8.c
        public int nextInt() {
            return c.defaultRandom.nextInt();
        }

        @Override // z8.c
        public long nextLong() {
            return c.defaultRandom.nextLong();
        }

        private a() {
        }

        @Override // z8.c
        public byte[] nextBytes(int i10) {
            return c.defaultRandom.nextBytes(i10);
        }

        @Override // z8.c
        public double nextDouble(double d10) {
            return c.defaultRandom.nextDouble(d10);
        }

        @Override // z8.c
        public int nextInt(int i10) {
            return c.defaultRandom.nextInt(i10);
        }

        @Override // z8.c
        public long nextLong(long j10) {
            return c.defaultRandom.nextLong(j10);
        }

        @Override // z8.c
        public byte[] nextBytes(byte[] array, int i10, int i11) {
            r.e(array, "array");
            return c.defaultRandom.nextBytes(array, i10, i11);
        }

        @Override // z8.c
        public double nextDouble(double d10, double d11) {
            return c.defaultRandom.nextDouble(d10, d11);
        }

        @Override // z8.c
        public int nextInt(int i10, int i11) {
            return c.defaultRandom.nextInt(i10, i11);
        }

        @Override // z8.c
        public long nextLong(long j10, long j11) {
            return c.defaultRandom.nextLong(j10, j11);
        }
    }

    public static /* synthetic */ byte[] nextBytes$default(c cVar, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: nextBytes");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return cVar.nextBytes(bArr, i10, i11);
    }

    public abstract int nextBits(int i10);

    public abstract boolean nextBoolean();

    public abstract byte[] nextBytes(byte[] bArr);

    public byte[] nextBytes(byte[] array, int i10, int i11) {
        r.e(array, "array");
        if (i10 < 0 || i10 > array.length || i11 < 0 || i11 > array.length) {
            throw new IllegalArgumentException(("fromIndex (" + i10 + ") or toIndex (" + i11 + ") are out of range: 0.." + array.length + '.').toString());
        }
        if (i10 > i11) {
            throw new IllegalArgumentException(("fromIndex (" + i10 + ") must be not greater than toIndex (" + i11 + ").").toString());
        }
        int i12 = (i11 - i10) / 4;
        for (int i13 = 0; i13 < i12; i13++) {
            int iNextInt = nextInt();
            array[i10] = (byte) iNextInt;
            array[i10 + 1] = (byte) (iNextInt >>> 8);
            array[i10 + 2] = (byte) (iNextInt >>> 16);
            array[i10 + 3] = (byte) (iNextInt >>> 24);
            i10 += 4;
        }
        int i14 = i11 - i10;
        int iNextBits = nextBits(i14 * 8);
        for (int i15 = 0; i15 < i14; i15++) {
            array[i10 + i15] = (byte) (iNextBits >>> (i15 * 8));
        }
        return array;
    }

    public abstract double nextDouble();

    public double nextDouble(double d10) {
        return nextDouble(0.0d, d10);
    }

    public abstract float nextFloat();

    public abstract int nextInt();

    public abstract int nextInt(int i10);

    public int nextInt(int i10, int i11) {
        int iNextInt;
        int i12;
        int iNextBits;
        d.c(i10, i11);
        int i13 = i11 - i10;
        if (i13 > 0 || i13 == Integer.MIN_VALUE) {
            if (((-i13) & i13) == i13) {
                iNextBits = nextBits(d.e(i13));
            } else {
                do {
                    iNextInt = nextInt() >>> 1;
                    i12 = iNextInt % i13;
                } while ((iNextInt - i12) + (i13 - 1) < 0);
                iNextBits = i12;
            }
            return i10 + iNextBits;
        }
        while (true) {
            int iNextInt2 = nextInt();
            if (i10 <= iNextInt2 && iNextInt2 < i11) {
                return iNextInt2;
            }
        }
    }

    public abstract long nextLong();

    public long nextLong(long j10) {
        return nextLong(0L, j10);
    }

    public double nextDouble(double d10, double d11) {
        double dNextDouble;
        d.b(d10, d11);
        double d12 = d11 - d10;
        if (!Double.isInfinite(d12) || Double.isInfinite(d10) || Double.isNaN(d10) || Double.isInfinite(d11) || Double.isNaN(d11)) {
            dNextDouble = d10 + (nextDouble() * d12);
        } else {
            double d13 = 2;
            double dNextDouble2 = nextDouble() * ((d11 / d13) - (d10 / d13));
            dNextDouble = d10 + dNextDouble2 + dNextDouble2;
        }
        return dNextDouble >= d11 ? Math.nextAfter(d11, Double.NEGATIVE_INFINITY) : dNextDouble;
    }

    public long nextLong(long j10, long j11) {
        long jNextLong;
        long j12;
        long jNextBits;
        int iNextInt;
        d.d(j10, j11);
        long j13 = j11 - j10;
        if (j13 > 0) {
            if (((-j13) & j13) == j13) {
                int i10 = (int) j13;
                int i11 = (int) (j13 >>> 32);
                if (i10 != 0) {
                    iNextInt = nextBits(d.e(i10));
                } else if (i11 == 1) {
                    iNextInt = nextInt();
                } else {
                    jNextBits = (((long) nextBits(d.e(i11))) << 32) + (((long) nextInt()) & 4294967295L);
                }
                jNextBits = ((long) iNextInt) & 4294967295L;
            } else {
                do {
                    jNextLong = nextLong() >>> 1;
                    j12 = jNextLong % j13;
                } while ((jNextLong - j12) + (j13 - 1) < 0);
                jNextBits = j12;
            }
            return j10 + jNextBits;
        }
        while (true) {
            long jNextLong2 = nextLong();
            if (j10 <= jNextLong2 && jNextLong2 < j11) {
                return jNextLong2;
            }
        }
    }

    public byte[] nextBytes(int i10) {
        return nextBytes(new byte[i10]);
    }
}
