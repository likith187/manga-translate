package f3;

/* JADX INFO: loaded from: classes.dex */
final class b extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f11867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y2.m f11868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y2.h f11869c;

    b(long j10, y2.m mVar, y2.h hVar) {
        this.f11867a = j10;
        if (mVar == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.f11868b = mVar;
        if (hVar == null) {
            throw new NullPointerException("Null event");
        }
        this.f11869c = hVar;
    }

    @Override // f3.i
    public y2.h b() {
        return this.f11869c;
    }

    @Override // f3.i
    public long c() {
        return this.f11867a;
    }

    @Override // f3.i
    public y2.m d() {
        return this.f11868b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f11867a == iVar.c() && this.f11868b.equals(iVar.d()) && this.f11869c.equals(iVar.b());
    }

    public int hashCode() {
        long j10 = this.f11867a;
        return this.f11869c.hashCode() ^ ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f11868b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f11867a + ", transportContext=" + this.f11868b + ", event=" + this.f11869c + "}";
    }
}
