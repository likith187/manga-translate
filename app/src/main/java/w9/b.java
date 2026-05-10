package w9;

import com.oplus.aiunit.core.ConfigPackage;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected static final v9.a f16164h = v9.a.LENIENT;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final byte[] f16165i = {13, 10};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final byte f16166a = 61;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final byte f16167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f16168c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f16169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final int f16170e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f16171f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final v9.a f16172g;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f16173a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f16174b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        byte[] f16175c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f16176d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f16177e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f16178f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f16179g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f16180h;

        a() {
        }

        public String toString() {
            return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", getClass().getSimpleName(), Arrays.toString(this.f16175c), Integer.valueOf(this.f16179g), Boolean.valueOf(this.f16178f), Integer.valueOf(this.f16173a), Long.valueOf(this.f16174b), Integer.valueOf(this.f16180h), Integer.valueOf(this.f16176d), Integer.valueOf(this.f16177e));
        }
    }

    protected b(int i10, int i11, int i12, int i13, byte b10, v9.a aVar) {
        this.f16168c = i10;
        this.f16169d = i11;
        this.f16170e = (i12 <= 0 || i13 <= 0) ? 0 : (i12 / i11) * i11;
        this.f16171f = i13;
        this.f16167b = b10;
        Objects.requireNonNull(aVar, "codecPolicy");
        this.f16172g = aVar;
    }

    private static int c(int i10) {
        if (i10 >= 0) {
            return Math.max(i10, 2147483639);
        }
        throw new OutOfMemoryError("Unable to allocate array size: " + (((long) i10) & 4294967295L));
    }

    private static byte[] m(a aVar, int i10) {
        int length = aVar.f16175c.length * 2;
        if (Integer.compareUnsigned(length, i10) < 0) {
            length = i10;
        }
        if (Integer.compareUnsigned(length, 2147483639) > 0) {
            length = c(i10);
        }
        byte[] bArrCopyOf = Arrays.copyOf(aVar.f16175c, length);
        aVar.f16175c = bArrCopyOf;
        return bArrCopyOf;
    }

    int a(a aVar) {
        if (i(aVar)) {
            return aVar.f16176d - aVar.f16177e;
        }
        return 0;
    }

    protected boolean b(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (byte b10 : bArr) {
            if (this.f16167b == b10 || j(b10)) {
                return true;
            }
        }
        return false;
    }

    abstract void d(byte[] bArr, int i10, int i11, a aVar);

    public byte[] e(String str) {
        return f(d.b(str));
    }

    public byte[] f(byte[] bArr) {
        if (c.a(bArr)) {
            return bArr;
        }
        a aVar = new a();
        d(bArr, 0, bArr.length, aVar);
        d(bArr, 0, -1, aVar);
        int i10 = aVar.f16176d;
        byte[] bArr2 = new byte[i10];
        l(bArr2, 0, i10, aVar);
        return bArr2;
    }

    protected byte[] g(int i10, a aVar) {
        byte[] bArr = aVar.f16175c;
        if (bArr == null) {
            aVar.f16175c = new byte[Math.max(i10, h())];
            aVar.f16176d = 0;
            aVar.f16177e = 0;
        } else {
            int i11 = aVar.f16176d;
            if ((i11 + i10) - bArr.length > 0) {
                return m(aVar, i11 + i10);
            }
        }
        return aVar.f16175c;
    }

    protected int h() {
        return ConfigPackage.FRAME_SIZE_6;
    }

    boolean i(a aVar) {
        return aVar.f16176d > aVar.f16177e;
    }

    protected abstract boolean j(byte b10);

    public boolean k() {
        return this.f16172g == v9.a.STRICT;
    }

    int l(byte[] bArr, int i10, int i11, a aVar) {
        if (!i(aVar)) {
            return aVar.f16178f ? -1 : 0;
        }
        int iMin = Math.min(a(aVar), i11);
        System.arraycopy(aVar.f16175c, aVar.f16177e, bArr, i10, iMin);
        aVar.f16177e += iMin;
        if (!i(aVar)) {
            aVar.f16177e = 0;
            aVar.f16176d = 0;
        }
        return iMin;
    }
}
