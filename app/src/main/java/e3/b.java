package e3;

import e3.d;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class b extends d.b {

    /* JADX INFO: renamed from: a */
    private final long f11687a;

    /* JADX INFO: renamed from: b */
    private final long f11688b;

    /* JADX INFO: renamed from: c */
    private final Set f11689c;

    /* JADX INFO: renamed from: e3.b$b */
    static final class C0137b extends d.b.a {

        /* JADX INFO: renamed from: a */
        private Long f11690a;

        /* JADX INFO: renamed from: b */
        private Long f11691b;

        /* JADX INFO: renamed from: c */
        private Set f11692c;

        C0137b() {
        }

        @Override // e3.d.b.a
        public d.b a() {
            String str = "";
            if (this.f11690a == null) {
                str = " delta";
            }
            if (this.f11691b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f11692c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new b(this.f11690a.longValue(), this.f11691b.longValue(), this.f11692c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // e3.d.b.a
        public d.b.a b(long j10) {
            this.f11690a = Long.valueOf(j10);
            return this;
        }

        @Override // e3.d.b.a
        public d.b.a c(Set set) {
            if (set == null) {
                throw new NullPointerException("Null flags");
            }
            this.f11692c = set;
            return this;
        }

        @Override // e3.d.b.a
        public d.b.a d(long j10) {
            this.f11691b = Long.valueOf(j10);
            return this;
        }
    }

    /* synthetic */ b(long j10, long j11, Set set, a aVar) {
        this(j10, j11, set);
    }

    @Override // e3.d.b
    long b() {
        return this.f11687a;
    }

    @Override // e3.d.b
    Set c() {
        return this.f11689c;
    }

    @Override // e3.d.b
    long d() {
        return this.f11688b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d.b)) {
            return false;
        }
        d.b bVar = (d.b) obj;
        return this.f11687a == bVar.b() && this.f11688b == bVar.d() && this.f11689c.equals(bVar.c());
    }

    public int hashCode() {
        long j10 = this.f11687a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        long j11 = this.f11688b;
        return this.f11689c.hashCode() ^ ((i10 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f11687a + ", maxAllowedDelay=" + this.f11688b + ", flags=" + this.f11689c + "}";
    }

    private b(long j10, long j11, Set set) {
        this.f11687a = j10;
        this.f11688b = j11;
        this.f11689c = set;
    }
}
