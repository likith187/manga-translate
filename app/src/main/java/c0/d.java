package c0;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4279b;

    public d(Object obj, Object obj2) {
        this.f4278a = obj;
        this.f4279b = obj2;
    }

    public static d a(Object obj, Object obj2) {
        return new d(obj, obj2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return c.a(dVar.f4278a, this.f4278a) && c.a(dVar.f4279b, this.f4279b);
    }

    public int hashCode() {
        Object obj = this.f4278a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f4279b;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f4278a + " " + this.f4279b + "}";
    }
}
