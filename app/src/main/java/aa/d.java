package aa;

/* JADX INFO: loaded from: classes2.dex */
public class d implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f138b;

    public d(double d10, double d11) {
        this.f137a = d10;
        this.f138b = d11;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d clone() {
        return new d(this.f137a, this.f138b);
    }

    public void b(double[] dArr) {
        if (dArr != null) {
            this.f137a = dArr.length > 0 ? dArr[0] : 0.0d;
            this.f138b = dArr.length > 1 ? dArr[1] : 0.0d;
        } else {
            this.f137a = 0.0d;
            this.f138b = 0.0d;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f137a == dVar.f137a && this.f138b == dVar.f138b;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f137a);
        int i10 = ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31;
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f138b);
        return (i10 * 31) + ((int) ((jDoubleToLongBits2 >>> 32) ^ jDoubleToLongBits2));
    }

    public String toString() {
        return "{" + this.f137a + ", " + this.f138b + "}";
    }

    public d() {
        this(0.0d, 0.0d);
    }

    public d(double[] dArr) {
        this();
        b(dArr);
    }
}
