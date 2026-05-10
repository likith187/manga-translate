package l1;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f13572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f13573b;

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public void b(Object obj, Object obj2) {
        this.f13572a = obj;
        this.f13573b = obj2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c0.d)) {
            return false;
        }
        c0.d dVar = (c0.d) obj;
        return a(dVar.f4278a, this.f13572a) && a(dVar.f4279b, this.f13573b);
    }

    public int hashCode() {
        Object obj = this.f13572a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f13573b;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f13572a + " " + this.f13573b + "}";
    }
}
