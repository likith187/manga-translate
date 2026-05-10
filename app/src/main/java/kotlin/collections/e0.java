package kotlin.collections;

/* JADX INFO: loaded from: classes2.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f13017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f13018b;

    public e0(int i10, Object obj) {
        this.f13017a = i10;
        this.f13018b = obj;
    }

    public final int a() {
        return this.f13017a;
    }

    public final Object b() {
        return this.f13018b;
    }

    public final int c() {
        return this.f13017a;
    }

    public final Object d() {
        return this.f13018b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        return this.f13017a == e0Var.f13017a && kotlin.jvm.internal.r.a(this.f13018b, e0Var.f13018b);
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.f13017a) * 31;
        Object obj = this.f13018b;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        return "IndexedValue(index=" + this.f13017a + ", value=" + this.f13018b + ')';
    }
}
