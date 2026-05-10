package x2;

import java.util.Arrays;
import x2.l;

/* JADX INFO: loaded from: classes.dex */
final class f extends l {

    /* JADX INFO: renamed from: a */
    private final long f16335a;

    /* JADX INFO: renamed from: b */
    private final Integer f16336b;

    /* JADX INFO: renamed from: c */
    private final long f16337c;

    /* JADX INFO: renamed from: d */
    private final byte[] f16338d;

    /* JADX INFO: renamed from: e */
    private final String f16339e;

    /* JADX INFO: renamed from: f */
    private final long f16340f;

    /* JADX INFO: renamed from: g */
    private final o f16341g;

    static final class b extends l.a {

        /* JADX INFO: renamed from: a */
        private Long f16342a;

        /* JADX INFO: renamed from: b */
        private Integer f16343b;

        /* JADX INFO: renamed from: c */
        private Long f16344c;

        /* JADX INFO: renamed from: d */
        private byte[] f16345d;

        /* JADX INFO: renamed from: e */
        private String f16346e;

        /* JADX INFO: renamed from: f */
        private Long f16347f;

        /* JADX INFO: renamed from: g */
        private o f16348g;

        b() {
        }

        @Override // x2.l.a
        public l a() {
            String str = "";
            if (this.f16342a == null) {
                str = " eventTimeMs";
            }
            if (this.f16344c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f16347f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new f(this.f16342a.longValue(), this.f16343b, this.f16344c.longValue(), this.f16345d, this.f16346e, this.f16347f.longValue(), this.f16348g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // x2.l.a
        public l.a b(Integer num) {
            this.f16343b = num;
            return this;
        }

        @Override // x2.l.a
        public l.a c(long j10) {
            this.f16342a = Long.valueOf(j10);
            return this;
        }

        @Override // x2.l.a
        public l.a d(long j10) {
            this.f16344c = Long.valueOf(j10);
            return this;
        }

        @Override // x2.l.a
        public l.a e(o oVar) {
            this.f16348g = oVar;
            return this;
        }

        @Override // x2.l.a
        l.a f(byte[] bArr) {
            this.f16345d = bArr;
            return this;
        }

        @Override // x2.l.a
        l.a g(String str) {
            this.f16346e = str;
            return this;
        }

        @Override // x2.l.a
        public l.a h(long j10) {
            this.f16347f = Long.valueOf(j10);
            return this;
        }
    }

    /* synthetic */ f(long j10, Integer num, long j11, byte[] bArr, String str, long j12, o oVar, a aVar) {
        this(j10, num, j11, bArr, str, j12, oVar);
    }

    @Override // x2.l
    public Integer b() {
        return this.f16336b;
    }

    @Override // x2.l
    public long c() {
        return this.f16335a;
    }

    @Override // x2.l
    public long d() {
        return this.f16337c;
    }

    @Override // x2.l
    public o e() {
        return this.f16341g;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f16335a == lVar.c() && ((num = this.f16336b) != null ? num.equals(lVar.b()) : lVar.b() == null) && this.f16337c == lVar.d()) {
            if (Arrays.equals(this.f16338d, lVar instanceof f ? ((f) lVar).f16338d : lVar.f()) && ((str = this.f16339e) != null ? str.equals(lVar.g()) : lVar.g() == null) && this.f16340f == lVar.h()) {
                o oVar = this.f16341g;
                if (oVar == null) {
                    if (lVar.e() == null) {
                        return true;
                    }
                } else if (oVar.equals(lVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // x2.l
    public byte[] f() {
        return this.f16338d;
    }

    @Override // x2.l
    public String g() {
        return this.f16339e;
    }

    @Override // x2.l
    public long h() {
        return this.f16340f;
    }

    public int hashCode() {
        long j10 = this.f16335a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f16336b;
        int iHashCode = num == null ? 0 : num.hashCode();
        long j11 = this.f16337c;
        int iHashCode2 = (((((i10 ^ iHashCode) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f16338d)) * 1000003;
        String str = this.f16339e;
        int iHashCode3 = str == null ? 0 : str.hashCode();
        long j12 = this.f16340f;
        int i11 = (((iHashCode2 ^ iHashCode3) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003;
        o oVar = this.f16341g;
        return i11 ^ (oVar != null ? oVar.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f16335a + ", eventCode=" + this.f16336b + ", eventUptimeMs=" + this.f16337c + ", sourceExtension=" + Arrays.toString(this.f16338d) + ", sourceExtensionJsonProto3=" + this.f16339e + ", timezoneOffsetSeconds=" + this.f16340f + ", networkConnectionInfo=" + this.f16341g + "}";
    }

    private f(long j10, Integer num, long j11, byte[] bArr, String str, long j12, o oVar) {
        this.f16335a = j10;
        this.f16336b = num;
        this.f16337c = j11;
        this.f16338d = bArr;
        this.f16339e = str;
        this.f16340f = j12;
        this.f16341g = oVar;
    }
}
