package kotlin.text;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f13156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b9.c f13157b;

    public j(String value, b9.c range) {
        kotlin.jvm.internal.r.e(value, "value");
        kotlin.jvm.internal.r.e(range, "range");
        this.f13156a = value;
        this.f13157b = range;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return kotlin.jvm.internal.r.a(this.f13156a, jVar.f13156a) && kotlin.jvm.internal.r.a(this.f13157b, jVar.f13157b);
    }

    public int hashCode() {
        return (this.f13156a.hashCode() * 31) + this.f13157b.hashCode();
    }

    public String toString() {
        return "MatchGroup(value=" + this.f13156a + ", range=" + this.f13157b + ')';
    }
}
