package x2;

import java.util.List;
import x2.m;

/* JADX INFO: loaded from: classes.dex */
final class g extends m {

    /* JADX INFO: renamed from: a */
    private final long f16349a;

    /* JADX INFO: renamed from: b */
    private final long f16350b;

    /* JADX INFO: renamed from: c */
    private final k f16351c;

    /* JADX INFO: renamed from: d */
    private final Integer f16352d;

    /* JADX INFO: renamed from: e */
    private final String f16353e;

    /* JADX INFO: renamed from: f */
    private final List f16354f;

    /* JADX INFO: renamed from: g */
    private final p f16355g;

    static final class b extends m.a {

        /* JADX INFO: renamed from: a */
        private Long f16356a;

        /* JADX INFO: renamed from: b */
        private Long f16357b;

        /* JADX INFO: renamed from: c */
        private k f16358c;

        /* JADX INFO: renamed from: d */
        private Integer f16359d;

        /* JADX INFO: renamed from: e */
        private String f16360e;

        /* JADX INFO: renamed from: f */
        private List f16361f;

        /* JADX INFO: renamed from: g */
        private p f16362g;

        b() {
        }

        @Override // x2.m.a
        public m a() {
            String str = "";
            if (this.f16356a == null) {
                str = " requestTimeMs";
            }
            if (this.f16357b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new g(this.f16356a.longValue(), this.f16357b.longValue(), this.f16358c, this.f16359d, this.f16360e, this.f16361f, this.f16362g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // x2.m.a
        public m.a b(k kVar) {
            this.f16358c = kVar;
            return this;
        }

        @Override // x2.m.a
        public m.a c(List list) {
            this.f16361f = list;
            return this;
        }

        @Override // x2.m.a
        m.a d(Integer num) {
            this.f16359d = num;
            return this;
        }

        @Override // x2.m.a
        m.a e(String str) {
            this.f16360e = str;
            return this;
        }

        @Override // x2.m.a
        public m.a f(p pVar) {
            this.f16362g = pVar;
            return this;
        }

        @Override // x2.m.a
        public m.a g(long j10) {
            this.f16356a = Long.valueOf(j10);
            return this;
        }

        @Override // x2.m.a
        public m.a h(long j10) {
            this.f16357b = Long.valueOf(j10);
            return this;
        }
    }

    /* synthetic */ g(long j10, long j11, k kVar, Integer num, String str, List list, p pVar, a aVar) {
        this(j10, j11, kVar, num, str, list, pVar);
    }

    @Override // x2.m
    public k b() {
        return this.f16351c;
    }

    @Override // x2.m
    public List c() {
        return this.f16354f;
    }

    @Override // x2.m
    public Integer d() {
        return this.f16352d;
    }

    @Override // x2.m
    public String e() {
        return this.f16353e;
    }

    public boolean equals(Object obj) {
        k kVar;
        Integer num;
        String str;
        List list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f16349a == mVar.g() && this.f16350b == mVar.h() && ((kVar = this.f16351c) != null ? kVar.equals(mVar.b()) : mVar.b() == null) && ((num = this.f16352d) != null ? num.equals(mVar.d()) : mVar.d() == null) && ((str = this.f16353e) != null ? str.equals(mVar.e()) : mVar.e() == null) && ((list = this.f16354f) != null ? list.equals(mVar.c()) : mVar.c() == null)) {
            p pVar = this.f16355g;
            if (pVar == null) {
                if (mVar.f() == null) {
                    return true;
                }
            } else if (pVar.equals(mVar.f())) {
                return true;
            }
        }
        return false;
    }

    @Override // x2.m
    public p f() {
        return this.f16355g;
    }

    @Override // x2.m
    public long g() {
        return this.f16349a;
    }

    @Override // x2.m
    public long h() {
        return this.f16350b;
    }

    public int hashCode() {
        long j10 = this.f16349a;
        long j11 = this.f16350b;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003;
        k kVar = this.f16351c;
        int iHashCode = (i10 ^ (kVar == null ? 0 : kVar.hashCode())) * 1000003;
        Integer num = this.f16352d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f16353e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f16354f;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        p pVar = this.f16355g;
        return iHashCode4 ^ (pVar != null ? pVar.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f16349a + ", requestUptimeMs=" + this.f16350b + ", clientInfo=" + this.f16351c + ", logSource=" + this.f16352d + ", logSourceName=" + this.f16353e + ", logEvents=" + this.f16354f + ", qosTier=" + this.f16355g + "}";
    }

    private g(long j10, long j11, k kVar, Integer num, String str, List list, p pVar) {
        this.f16349a = j10;
        this.f16350b = j11;
        this.f16351c = kVar;
        this.f16352d = num;
        this.f16353e = str;
        this.f16354f = list;
        this.f16355g = pVar;
    }
}
