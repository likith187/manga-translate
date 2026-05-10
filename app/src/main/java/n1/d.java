package n1;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f13955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f13956b;

    public d(float[] fArr, int[] iArr) {
        this.f13955a = fArr;
        this.f13956b = iArr;
    }

    private void a(d dVar) {
        int i10 = 0;
        while (true) {
            int[] iArr = dVar.f13956b;
            if (i10 >= iArr.length) {
                return;
            }
            this.f13955a[i10] = dVar.f13955a[i10];
            this.f13956b[i10] = iArr[i10];
            i10++;
        }
    }

    private int c(float f10) {
        int iBinarySearch = Arrays.binarySearch(this.f13955a, f10);
        if (iBinarySearch >= 0) {
            return this.f13956b[iBinarySearch];
        }
        int i10 = -(iBinarySearch + 1);
        if (i10 == 0) {
            return this.f13956b[0];
        }
        int[] iArr = this.f13956b;
        if (i10 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.f13955a;
        int i11 = i10 - 1;
        float f11 = fArr[i11];
        return r1.b.c((f10 - f11) / (fArr[i10] - f11), iArr[i11], iArr[i10]);
    }

    public d b(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            iArr[i10] = c(fArr[i10]);
        }
        return new d(fArr, iArr);
    }

    public int[] d() {
        return this.f13956b;
    }

    public float[] e() {
        return this.f13955a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return Arrays.equals(this.f13955a, dVar.f13955a) && Arrays.equals(this.f13956b, dVar.f13956b);
    }

    public int f() {
        return this.f13956b.length;
    }

    public void g(d dVar, d dVar2, float f10) {
        int[] iArr;
        if (dVar.equals(dVar2)) {
            a(dVar);
            return;
        }
        if (f10 <= 0.0f) {
            a(dVar);
            return;
        }
        if (f10 >= 1.0f) {
            a(dVar2);
            return;
        }
        if (dVar.f13956b.length != dVar2.f13956b.length) {
            throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + dVar.f13956b.length + " vs " + dVar2.f13956b.length + ")");
        }
        int i10 = 0;
        while (true) {
            iArr = dVar.f13956b;
            if (i10 >= iArr.length) {
                break;
            }
            this.f13955a[i10] = r1.i.i(dVar.f13955a[i10], dVar2.f13955a[i10], f10);
            this.f13956b[i10] = r1.b.c(f10, dVar.f13956b[i10], dVar2.f13956b[i10]);
            i10++;
        }
        int length = iArr.length;
        while (true) {
            float[] fArr = this.f13955a;
            if (length >= fArr.length) {
                return;
            }
            int[] iArr2 = dVar.f13956b;
            fArr[length] = fArr[iArr2.length - 1];
            int[] iArr3 = this.f13956b;
            iArr3[length] = iArr3[iArr2.length - 1];
            length++;
        }
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f13955a) * 31) + Arrays.hashCode(this.f13956b);
    }
}
