package w9;

import w9.b;

/* JADX INFO: loaded from: classes2.dex */
public class a extends b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final byte[] f16156o = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final byte[] f16157p = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final byte[] f16158q = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final byte[] f16159j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final byte[] f16160k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final byte[] f16161l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f16162m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f16163n;

    public a() {
        this(0);
    }

    public static byte[] n(String str) {
        return new a().e(str);
    }

    private void o(int i10, b.a aVar) {
        if (k() && (aVar.f16173a & i10) != 0) {
            throw new IllegalArgumentException("Strict decoding: Last encoded character (before the paddings if any) is a valid base 64 alphabet but not a possible encoding. Expected the discarded bits from the character to be zero.");
        }
    }

    private void p() {
        if (k()) {
            throw new IllegalArgumentException("Strict decoding: Last encoded character (before the paddings if any) is a valid base 64 alphabet but not a possible encoding. Decoding requires at least two trailing 6-bit characters to create bytes.");
        }
    }

    @Override // w9.b
    void d(byte[] bArr, int i10, int i11, b.a aVar) {
        byte b10;
        if (aVar.f16178f) {
            return;
        }
        if (i11 < 0) {
            aVar.f16178f = true;
        }
        int i12 = 0;
        while (true) {
            if (i12 >= i11) {
                break;
            }
            byte[] bArrG = g(this.f16162m, aVar);
            int i13 = i10 + 1;
            byte b11 = bArr[i10];
            if (b11 == this.f16167b) {
                aVar.f16178f = true;
                break;
            }
            if (b11 >= 0) {
                byte[] bArr2 = f16158q;
                if (b11 < bArr2.length && (b10 = bArr2[b11]) >= 0) {
                    int i14 = (aVar.f16180h + 1) % 4;
                    aVar.f16180h = i14;
                    int i15 = (aVar.f16173a << 6) + b10;
                    aVar.f16173a = i15;
                    if (i14 == 0) {
                        int i16 = aVar.f16176d;
                        int i17 = i16 + 1;
                        aVar.f16176d = i17;
                        bArrG[i16] = (byte) ((i15 >> 16) & 255);
                        int i18 = i16 + 2;
                        aVar.f16176d = i18;
                        bArrG[i17] = (byte) ((i15 >> 8) & 255);
                        aVar.f16176d = i16 + 3;
                        bArrG[i18] = (byte) (i15 & 255);
                    }
                }
            }
            i12++;
            i10 = i13;
        }
        if (!aVar.f16178f || aVar.f16180h == 0) {
            return;
        }
        byte[] bArrG2 = g(this.f16162m, aVar);
        int i19 = aVar.f16180h;
        if (i19 == 1) {
            p();
            return;
        }
        if (i19 == 2) {
            o(15, aVar);
            int i20 = aVar.f16173a >> 4;
            aVar.f16173a = i20;
            int i21 = aVar.f16176d;
            aVar.f16176d = i21 + 1;
            bArrG2[i21] = (byte) (i20 & 255);
            return;
        }
        if (i19 != 3) {
            throw new IllegalStateException("Impossible modulus " + aVar.f16180h);
        }
        o(3, aVar);
        int i22 = aVar.f16173a;
        int i23 = i22 >> 2;
        aVar.f16173a = i23;
        int i24 = aVar.f16176d;
        int i25 = i24 + 1;
        aVar.f16176d = i25;
        bArrG2[i24] = (byte) ((i22 >> 10) & 255);
        aVar.f16176d = i24 + 2;
        bArrG2[i25] = (byte) (i23 & 255);
    }

    @Override // w9.b
    protected boolean j(byte b10) {
        if (b10 >= 0) {
            byte[] bArr = this.f16160k;
            if (b10 < bArr.length && bArr[b10] != -1) {
                return true;
            }
        }
        return false;
    }

    public a(int i10) {
        this(i10, b.f16165i);
    }

    public a(int i10, byte[] bArr) {
        this(i10, bArr, false);
    }

    public a(int i10, byte[] bArr, boolean z10) {
        this(i10, bArr, z10, b.f16164h);
    }

    public a(int i10, byte[] bArr, boolean z10, v9.a aVar) {
        super(3, 4, i10, bArr == null ? 0 : bArr.length, (byte) 61, aVar);
        this.f16160k = f16158q;
        if (bArr != null) {
            if (b(bArr)) {
                throw new IllegalArgumentException("lineSeparator must not contain base64 characters: [" + d.d(bArr) + "]");
            }
            if (i10 > 0) {
                this.f16163n = bArr.length + 4;
                this.f16161l = (byte[]) bArr.clone();
            } else {
                this.f16163n = 4;
                this.f16161l = null;
            }
        } else {
            this.f16163n = 4;
            this.f16161l = null;
        }
        this.f16162m = this.f16163n - 1;
        this.f16159j = z10 ? f16157p : f16156o;
    }
}
