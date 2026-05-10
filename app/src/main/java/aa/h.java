package aa;

/* JADX INFO: loaded from: classes2.dex */
public class h implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f148b;

    public h(double d10, double d11) {
        this.f147a = d10;
        this.f148b = d11;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public h clone() {
        return new h(this.f147a, this.f148b);
    }

    public void b(double[] dArr) {
        if (dArr != null) {
            this.f147a = dArr.length > 0 ? dArr[0] : 0.0d;
            this.f148b = dArr.length > 1 ? dArr[1] : 0.0d;
        } else {
            this.f147a = 0.0d;
            this.f148b = 0.0d;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f147a == hVar.f147a && this.f148b == hVar.f148b;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f148b);
        int i10 = ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31;
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f147a);
        return (i10 * 31) + ((int) ((jDoubleToLongBits2 >>> 32) ^ jDoubleToLongBits2));
    }

    public String toString() {
        return ((int) this.f147a) + "x" + ((int) this.f148b);
    }

    public h() {
        this(0.0d, 0.0d);
    }

    public h(double[] dArr) {
        b(dArr);
    }
}
