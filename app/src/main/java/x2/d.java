package x2;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class d extends j {

    /* JADX INFO: renamed from: a */
    private final List f16330a;

    d(List list) {
        if (list == null) {
            throw new NullPointerException("Null logRequests");
        }
        this.f16330a = list;
    }

    @Override // x2.j
    public List c() {
        return this.f16330a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            return this.f16330a.equals(((j) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.f16330a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f16330a + "}";
    }
}
