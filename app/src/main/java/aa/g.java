package aa;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class g implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double[] f146a;

    public g(double d10, double d11, double d12, double d13) {
        this.f146a = new double[]{d10, d11, d12, d13};
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public g clone() {
        return new g(this.f146a);
    }

    public void b(double[] dArr) {
        if (dArr != null) {
            double[] dArr2 = this.f146a;
            dArr2[0] = dArr.length > 0 ? dArr[0] : 0.0d;
            dArr2[1] = dArr.length > 1 ? dArr[1] : 0.0d;
            dArr2[2] = dArr.length > 2 ? dArr[2] : 0.0d;
            dArr2[3] = dArr.length > 3 ? dArr[3] : 0.0d;
            return;
        }
        double[] dArr3 = this.f146a;
        dArr3[3] = 0.0d;
        dArr3[2] = 0.0d;
        dArr3[1] = 0.0d;
        dArr3[0] = 0.0d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && Arrays.equals(this.f146a, ((g) obj).f146a);
    }

    public int hashCode() {
        return 31 + Arrays.hashCode(this.f146a);
    }

    public String toString() {
        return "[" + this.f146a[0] + ", " + this.f146a[1] + ", " + this.f146a[2] + ", " + this.f146a[3] + "]";
    }

    public g(double d10, double d11, double d12) {
        this.f146a = new double[]{d10, d11, d12, 0.0d};
    }

    public g(double d10) {
        this.f146a = new double[]{d10, 0.0d, 0.0d, 0.0d};
    }

    public g(double[] dArr) {
        if (dArr != null && dArr.length == 4) {
            this.f146a = (double[]) dArr.clone();
        } else {
            this.f146a = new double[4];
            b(dArr);
        }
    }
}
