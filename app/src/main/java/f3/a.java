package f3;

import f3.d;

/* JADX INFO: loaded from: classes.dex */
final class a extends d {

    /* JADX INFO: renamed from: b */
    private final long f11855b;

    /* JADX INFO: renamed from: c */
    private final int f11856c;

    /* JADX INFO: renamed from: d */
    private final int f11857d;

    /* JADX INFO: renamed from: e */
    private final long f11858e;

    /* JADX INFO: renamed from: f */
    private final int f11859f;

    static final class b extends d.a {

        /* JADX INFO: renamed from: a */
        private Long f11860a;

        /* JADX INFO: renamed from: b */
        private Integer f11861b;

        /* JADX INFO: renamed from: c */
        private Integer f11862c;

        /* JADX INFO: renamed from: d */
        private Long f11863d;

        /* JADX INFO: renamed from: e */
        private Integer f11864e;

        b() {
        }

        @Override // f3.d.a
        d a() {
            String str = "";
            if (this.f11860a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f11861b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f11862c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f11863d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f11864e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.f11860a.longValue(), this.f11861b.intValue(), this.f11862c.intValue(), this.f11863d.longValue(), this.f11864e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // f3.d.a
        d.a b(int i10) {
            this.f11862c = Integer.valueOf(i10);
            return this;
        }

        @Override // f3.d.a
        d.a c(long j10) {
            this.f11863d = Long.valueOf(j10);
            return this;
        }

        @Override // f3.d.a
        d.a d(int i10) {
            this.f11861b = Integer.valueOf(i10);
            return this;
        }

        @Override // f3.d.a
        d.a e(int i10) {
            this.f11864e = Integer.valueOf(i10);
            return this;
        }

        @Override // f3.d.a
        d.a f(long j10) {
            this.f11860a = Long.valueOf(j10);
            return this;
        }
    }

    /* synthetic */ a(long j10, int i10, int i11, long j11, int i12, C0141a c0141a) {
        this(j10, i10, i11, j11, i12);
    }

    @Override // f3.d
    int b() {
        return this.f11857d;
    }

    @Override // f3.d
    long c() {
        return this.f11858e;
    }

    @Override // f3.d
    int d() {
        return this.f11856c;
    }

    @Override // f3.d
    int e() {
        return this.f11859f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f11855b == dVar.f() && this.f11856c == dVar.d() && this.f11857d == dVar.b() && this.f11858e == dVar.c() && this.f11859f == dVar.e();
    }

    @Override // f3.d
    long f() {
        return this.f11855b;
    }

    public int hashCode() {
        long j10 = this.f11855b;
        int i10 = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f11856c) * 1000003) ^ this.f11857d) * 1000003;
        long j11 = this.f11858e;
        return this.f11859f ^ ((i10 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f11855b + ", loadBatchSize=" + this.f11856c + ", criticalSectionEnterTimeoutMs=" + this.f11857d + ", eventCleanUpAge=" + this.f11858e + ", maxBlobByteSizePerRow=" + this.f11859f + "}";
    }

    private a(long j10, int i10, int i11, long j11, int i12) {
        this.f11855b = j10;
        this.f11856c = i10;
        this.f11857d = i11;
        this.f11858e = j11;
        this.f11859f = i12;
    }
}
