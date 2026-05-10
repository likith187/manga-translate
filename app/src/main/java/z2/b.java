package z2;

import z2.g;

/* JADX INFO: loaded from: classes.dex */
final class b extends g {

    /* JADX INFO: renamed from: a */
    private final g.a f16615a;

    /* JADX INFO: renamed from: b */
    private final long f16616b;

    b(g.a aVar, long j10) {
        if (aVar == null) {
            throw new NullPointerException("Null status");
        }
        this.f16615a = aVar;
        this.f16616b = j10;
    }

    @Override // z2.g
    public long b() {
        return this.f16616b;
    }

    @Override // z2.g
    public g.a c() {
        return this.f16615a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f16615a.equals(gVar.c()) && this.f16616b == gVar.b();
    }

    public int hashCode() {
        int iHashCode = (this.f16615a.hashCode() ^ 1000003) * 1000003;
        long j10 = this.f16616b;
        return ((int) (j10 ^ (j10 >>> 32))) ^ iHashCode;
    }

    public String toString() {
        return "BackendResponse{status=" + this.f16615a + ", nextRequestWaitMillis=" + this.f16616b + "}";
    }
}
