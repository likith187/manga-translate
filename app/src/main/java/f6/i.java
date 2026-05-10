package f6;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f12006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f12007b;

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public void b(Object obj, Object obj2) {
        this.f12006a = obj;
        this.f12007b = obj2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c0.d)) {
            return false;
        }
        c0.d dVar = (c0.d) obj;
        return a(dVar.f4278a, this.f12006a) && a(dVar.f4279b, this.f12007b);
    }

    public int hashCode() {
        Object obj = this.f12006a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f12007b;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f12006a + " " + this.f12007b + "}";
    }
}
