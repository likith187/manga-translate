package h6;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f12253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f12254b;

    public d(float[] fArr, int[] iArr) {
        this.f12253a = fArr;
        this.f12254b = iArr;
    }

    private int b(float f10) {
        int iBinarySearch = Arrays.binarySearch(this.f12253a, f10);
        if (iBinarySearch >= 0) {
            return this.f12254b[iBinarySearch];
        }
        int i10 = -(iBinarySearch + 1);
        if (i10 == 0) {
            return this.f12254b[0];
        }
        int[] iArr = this.f12254b;
        if (i10 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.f12253a;
        int i11 = i10 - 1;
        float f11 = fArr[i11];
        return l6.c.c((f10 - f11) / (fArr[i10] - f11), iArr[i11], iArr[i10]);
    }

    public d a(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            iArr[i10] = b(fArr[i10]);
        }
        return new d(fArr, iArr);
    }

    public int[] c() {
        return this.f12254b;
    }

    public float[] d() {
        return this.f12253a;
    }

    public int e() {
        return this.f12254b.length;
    }

    public void f(d dVar, d dVar2, float f10) {
        if (dVar.f12254b.length == dVar2.f12254b.length) {
            for (int i10 = 0; i10 < dVar.f12254b.length; i10++) {
                this.f12253a[i10] = l6.g.i(dVar.f12253a[i10], dVar2.f12253a[i10], f10);
                this.f12254b[i10] = l6.c.c(f10, dVar.f12254b[i10], dVar2.f12254b[i10]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + dVar.f12254b.length + " vs " + dVar2.f12254b.length + ")");
    }
}
