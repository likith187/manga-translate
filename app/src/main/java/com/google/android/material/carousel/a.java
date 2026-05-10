package com.google.android.material.carousel;

/* JADX INFO: loaded from: classes.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f9204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f9205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f9206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f9207d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f9208e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f9209f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f9210g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final float f9211h;

    a(int i10, float f10, float f11, float f12, int i11, float f13, int i12, float f14, int i13, float f15) {
        this.f9204a = i10;
        this.f9205b = x.a.a(f10, f11, f12);
        this.f9206c = i11;
        this.f9208e = f13;
        this.f9207d = i12;
        this.f9209f = f14;
        this.f9210g = i13;
        d(f15, f11, f12, f14);
        this.f9211h = b(f14);
    }

    private float a(float f10, int i10, float f11, int i11, int i12) {
        if (i10 <= 0) {
            f11 = 0.0f;
        }
        float f12 = i10;
        float f13 = i11 / 2.0f;
        return (f10 - ((f12 + f13) * f11)) / (i12 + f13);
    }

    private float b(float f10) {
        if (g()) {
            return Math.abs(f10 - this.f9209f) * this.f9204a;
        }
        return Float.MAX_VALUE;
    }

    static a c(float f10, float f11, float f12, float f13, int[] iArr, float f14, int[] iArr2, float f15, int[] iArr3) {
        a aVar = null;
        int i10 = 1;
        for (int i11 : iArr3) {
            int length = iArr2.length;
            int i12 = 0;
            while (i12 < length) {
                int i13 = iArr2[i12];
                int length2 = iArr.length;
                int i14 = 0;
                while (i14 < length2) {
                    int i15 = i14;
                    int i16 = length2;
                    int i17 = i12;
                    int i18 = length;
                    a aVar2 = new a(i10, f11, f12, f13, iArr[i14], f14, i13, f15, i11, f10);
                    if (aVar == null || aVar2.f9211h < aVar.f9211h) {
                        if (aVar2.f9211h == 0.0f) {
                            return aVar2;
                        }
                        aVar = aVar2;
                    }
                    i10++;
                    i14 = i15 + 1;
                    length2 = i16;
                    i12 = i17;
                    length = i18;
                }
                i12++;
            }
        }
        return aVar;
    }

    private void d(float f10, float f11, float f12, float f13) {
        float f14 = f10 - f();
        int i10 = this.f9206c;
        if (i10 > 0 && f14 > 0.0f) {
            float f15 = this.f9205b;
            this.f9205b = f15 + Math.min(f14 / i10, f12 - f15);
        } else if (i10 > 0 && f14 < 0.0f) {
            float f16 = this.f9205b;
            this.f9205b = f16 + Math.max(f14 / i10, f11 - f16);
        }
        int i11 = this.f9206c;
        float f17 = i11 > 0 ? this.f9205b : 0.0f;
        this.f9205b = f17;
        float fA = a(f10, i11, f17, this.f9207d, this.f9210g);
        this.f9209f = fA;
        float f18 = (this.f9205b + fA) / 2.0f;
        this.f9208e = f18;
        int i12 = this.f9207d;
        if (i12 <= 0 || fA == f13) {
            return;
        }
        float f19 = (f13 - fA) * this.f9210g;
        float fMin = Math.min(Math.abs(f19), f18 * 0.1f * i12);
        if (f19 > 0.0f) {
            this.f9208e -= fMin / this.f9207d;
            this.f9209f += fMin / this.f9210g;
        } else {
            this.f9208e += fMin / this.f9207d;
            this.f9209f -= fMin / this.f9210g;
        }
    }

    private float f() {
        return (this.f9209f * this.f9210g) + (this.f9208e * this.f9207d) + (this.f9205b * this.f9206c);
    }

    private boolean g() {
        int i10 = this.f9210g;
        if (i10 <= 0 || this.f9206c <= 0 || this.f9207d <= 0) {
            return i10 <= 0 || this.f9206c <= 0 || this.f9209f > this.f9205b;
        }
        float f10 = this.f9209f;
        float f11 = this.f9208e;
        return f10 > f11 && f11 > this.f9205b;
    }

    int e() {
        return this.f9206c + this.f9207d + this.f9210g;
    }

    public String toString() {
        return "Arrangement [priority=" + this.f9204a + ", smallCount=" + this.f9206c + ", smallSize=" + this.f9205b + ", mediumCount=" + this.f9207d + ", mediumSize=" + this.f9208e + ", largeCount=" + this.f9210g + ", largeSize=" + this.f9209f + ", cost=" + this.f9211h + "]";
    }
}
