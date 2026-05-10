package y2;

import java.util.Map;
import y2.h;

/* JADX INFO: loaded from: classes.dex */
final class a extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Integer f16494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f16495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f16496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f16497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map f16498f;

    static final class b extends h.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f16499a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f16500b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private g f16501c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f16502d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f16503e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Map f16504f;

        b() {
        }

        @Override // y2.h.a
        public h d() {
            String str = "";
            if (this.f16499a == null) {
                str = " transportName";
            }
            if (this.f16501c == null) {
                str = str + " encodedPayload";
            }
            if (this.f16502d == null) {
                str = str + " eventMillis";
            }
            if (this.f16503e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f16504f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new a(this.f16499a, this.f16500b, this.f16501c, this.f16502d.longValue(), this.f16503e.longValue(), this.f16504f);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // y2.h.a
        protected Map e() {
            Map map = this.f16504f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // y2.h.a
        protected h.a f(Map map) {
            if (map == null) {
                throw new NullPointerException("Null autoMetadata");
            }
            this.f16504f = map;
            return this;
        }

        @Override // y2.h.a
        public h.a g(Integer num) {
            this.f16500b = num;
            return this;
        }

        @Override // y2.h.a
        public h.a h(g gVar) {
            if (gVar == null) {
                throw new NullPointerException("Null encodedPayload");
            }
            this.f16501c = gVar;
            return this;
        }

        @Override // y2.h.a
        public h.a i(long j10) {
            this.f16502d = Long.valueOf(j10);
            return this;
        }

        @Override // y2.h.a
        public h.a j(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.f16499a = str;
            return this;
        }

        @Override // y2.h.a
        public h.a k(long j10) {
            this.f16503e = Long.valueOf(j10);
            return this;
        }
    }

    @Override // y2.h
    protected Map c() {
        return this.f16498f;
    }

    @Override // y2.h
    public Integer d() {
        return this.f16494b;
    }

    @Override // y2.h
    public g e() {
        return this.f16495c;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f16493a.equals(hVar.j()) && ((num = this.f16494b) != null ? num.equals(hVar.d()) : hVar.d() == null) && this.f16495c.equals(hVar.e()) && this.f16496d == hVar.f() && this.f16497e == hVar.k() && this.f16498f.equals(hVar.c());
    }

    @Override // y2.h
    public long f() {
        return this.f16496d;
    }

    public int hashCode() {
        int iHashCode = (this.f16493a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f16494b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f16495c.hashCode()) * 1000003;
        long j10 = this.f16496d;
        int i10 = (iHashCode2 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f16497e;
        return this.f16498f.hashCode() ^ ((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003);
    }

    @Override // y2.h
    public String j() {
        return this.f16493a;
    }

    @Override // y2.h
    public long k() {
        return this.f16497e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f16493a + ", code=" + this.f16494b + ", encodedPayload=" + this.f16495c + ", eventMillis=" + this.f16496d + ", uptimeMillis=" + this.f16497e + ", autoMetadata=" + this.f16498f + "}";
    }

    private a(String str, Integer num, g gVar, long j10, long j11, Map map) {
        this.f16493a = str;
        this.f16494b = num;
        this.f16495c = gVar;
        this.f16496d = j10;
        this.f16497e = j11;
        this.f16498f = map;
    }
}
