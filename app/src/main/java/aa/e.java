package aa;

/* JADX INFO: loaded from: classes2.dex */
public class e implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f141c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f142f;

    public e(int i10, int i11, int i12, int i13) {
        this.f139a = i10;
        this.f140b = i11;
        this.f141c = i12;
        this.f142f = i13;
    }

    public d a() {
        return new d(this.f139a + this.f141c, this.f140b + this.f142f);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e clone() {
        return new e(this.f139a, this.f140b, this.f141c, this.f142f);
    }

    public h d() {
        return new h(this.f141c, this.f142f);
    }

    public d e() {
        return new d(this.f139a, this.f140b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f139a == eVar.f139a && this.f140b == eVar.f140b && this.f141c == eVar.f141c && this.f142f == eVar.f142f;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f142f);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f141c);
        int i10 = ((((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.f139a);
        int i11 = (i10 * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.f140b);
        return (i11 * 31) + ((int) ((jDoubleToLongBits4 >>> 32) ^ jDoubleToLongBits4));
    }

    public String toString() {
        return "{" + this.f139a + ", " + this.f140b + ", " + this.f141c + "x" + this.f142f + "}";
    }

    public e(d dVar, h hVar) {
        this((int) dVar.f137a, (int) dVar.f138b, (int) hVar.f147a, (int) hVar.f148b);
    }
}
