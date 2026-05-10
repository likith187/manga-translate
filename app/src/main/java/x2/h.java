package x2;

/* JADX INFO: loaded from: classes.dex */
final class h extends n {

    /* JADX INFO: renamed from: a */
    private final long f16363a;

    h(long j10) {
        this.f16363a = j10;
    }

    @Override // x2.n
    public long c() {
        return this.f16363a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof n) && this.f16363a == ((n) obj).c();
    }

    public int hashCode() {
        long j10 = this.f16363a;
        return ((int) (j10 ^ (j10 >>> 32))) ^ 1000003;
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f16363a + "}";
    }
}
