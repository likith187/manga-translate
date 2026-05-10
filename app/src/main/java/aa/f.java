package aa;

/* JADX INFO: loaded from: classes2.dex */
public class f implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h f144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public double f145c;

    public f() {
        this.f143a = new d();
        this.f144b = new h();
        this.f145c = 0.0d;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f clone() {
        return new f(this.f143a, this.f144b, this.f145c);
    }

    public void b(d[] dVarArr) {
        double d10 = (this.f145c * 3.141592653589793d) / 180.0d;
        double dCos = Math.cos(d10) * 0.5d;
        double dSin = Math.sin(d10) * 0.5d;
        d dVar = this.f143a;
        double d11 = dVar.f137a;
        h hVar = this.f144b;
        double d12 = hVar.f148b;
        double d13 = hVar.f147a;
        dVarArr[0] = new d((d11 - (dSin * d12)) - (dCos * d13), (dVar.f138b + (d12 * dCos)) - (d13 * dSin));
        d dVar2 = this.f143a;
        double d14 = dVar2.f137a;
        h hVar2 = this.f144b;
        double d15 = hVar2.f148b;
        double d16 = hVar2.f147a;
        dVarArr[1] = new d((d14 + (dSin * d15)) - (dCos * d16), (dVar2.f138b - (dCos * d15)) - (dSin * d16));
        d dVar3 = this.f143a;
        double d17 = dVar3.f137a * 2.0d;
        d dVar4 = dVarArr[0];
        dVarArr[2] = new d(d17 - dVar4.f137a, (dVar3.f138b * 2.0d) - dVar4.f138b);
        d dVar5 = this.f143a;
        double d18 = dVar5.f137a * 2.0d;
        d dVar6 = dVarArr[1];
        dVarArr[3] = new d(d18 - dVar6.f137a, (dVar5.f138b * 2.0d) - dVar6.f138b);
    }

    public void d(double[] dArr) {
        if (dArr != null) {
            d dVar = this.f143a;
            dVar.f137a = dArr.length > 0 ? dArr[0] : 0.0d;
            dVar.f138b = dArr.length > 1 ? dArr[1] : 0.0d;
            h hVar = this.f144b;
            hVar.f147a = dArr.length > 2 ? dArr[2] : 0.0d;
            hVar.f148b = dArr.length > 3 ? dArr[3] : 0.0d;
            this.f145c = dArr.length > 4 ? dArr[4] : 0.0d;
            return;
        }
        d dVar2 = this.f143a;
        dVar2.f137a = 0.0d;
        dVar2.f138b = 0.0d;
        h hVar2 = this.f144b;
        hVar2.f147a = 0.0d;
        hVar2.f148b = 0.0d;
        this.f145c = 0.0d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f143a.equals(fVar.f143a) && this.f144b.equals(fVar.f144b) && this.f145c == fVar.f145c;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f143a.f137a);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f143a.f138b);
        int i10 = ((((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.f144b.f147a);
        int i11 = (i10 * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.f144b.f148b);
        int i12 = (i11 * 31) + ((int) (jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32)));
        long jDoubleToLongBits5 = Double.doubleToLongBits(this.f145c);
        return (i12 * 31) + ((int) ((jDoubleToLongBits5 >>> 32) ^ jDoubleToLongBits5));
    }

    public String toString() {
        return "{ " + this.f143a + " " + this.f144b + " * " + this.f145c + " }";
    }

    public f(d dVar, h hVar, double d10) {
        this.f143a = dVar.clone();
        this.f144b = hVar.clone();
        this.f145c = d10;
    }

    public f(double[] dArr) {
        this();
        d(dArr);
    }
}
