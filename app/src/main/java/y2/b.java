package y2;

import y2.l;

/* JADX INFO: loaded from: classes.dex */
final class b extends l {

    /* JADX INFO: renamed from: a */
    private final m f16505a;

    /* JADX INFO: renamed from: b */
    private final String f16506b;

    /* JADX INFO: renamed from: c */
    private final w2.c f16507c;

    /* JADX INFO: renamed from: d */
    private final w2.e f16508d;

    /* JADX INFO: renamed from: e */
    private final w2.b f16509e;

    /* JADX INFO: renamed from: y2.b$b */
    static final class C0242b extends l.a {

        /* JADX INFO: renamed from: a */
        private m f16510a;

        /* JADX INFO: renamed from: b */
        private String f16511b;

        /* JADX INFO: renamed from: c */
        private w2.c f16512c;

        /* JADX INFO: renamed from: d */
        private w2.e f16513d;

        /* JADX INFO: renamed from: e */
        private w2.b f16514e;

        C0242b() {
        }

        @Override // y2.l.a
        public l a() {
            String str = "";
            if (this.f16510a == null) {
                str = " transportContext";
            }
            if (this.f16511b == null) {
                str = str + " transportName";
            }
            if (this.f16512c == null) {
                str = str + " event";
            }
            if (this.f16513d == null) {
                str = str + " transformer";
            }
            if (this.f16514e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new b(this.f16510a, this.f16511b, this.f16512c, this.f16513d, this.f16514e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // y2.l.a
        l.a b(w2.b bVar) {
            if (bVar == null) {
                throw new NullPointerException("Null encoding");
            }
            this.f16514e = bVar;
            return this;
        }

        @Override // y2.l.a
        l.a c(w2.c cVar) {
            if (cVar == null) {
                throw new NullPointerException("Null event");
            }
            this.f16512c = cVar;
            return this;
        }

        @Override // y2.l.a
        l.a d(w2.e eVar) {
            if (eVar == null) {
                throw new NullPointerException("Null transformer");
            }
            this.f16513d = eVar;
            return this;
        }

        @Override // y2.l.a
        public l.a e(m mVar) {
            if (mVar == null) {
                throw new NullPointerException("Null transportContext");
            }
            this.f16510a = mVar;
            return this;
        }

        @Override // y2.l.a
        public l.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.f16511b = str;
            return this;
        }
    }

    /* synthetic */ b(m mVar, String str, w2.c cVar, w2.e eVar, w2.b bVar, a aVar) {
        this(mVar, str, cVar, eVar, bVar);
    }

    @Override // y2.l
    public w2.b b() {
        return this.f16509e;
    }

    @Override // y2.l
    w2.c c() {
        return this.f16507c;
    }

    @Override // y2.l
    w2.e e() {
        return this.f16508d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f16505a.equals(lVar.f()) && this.f16506b.equals(lVar.g()) && this.f16507c.equals(lVar.c()) && this.f16508d.equals(lVar.e()) && this.f16509e.equals(lVar.b());
    }

    @Override // y2.l
    public m f() {
        return this.f16505a;
    }

    @Override // y2.l
    public String g() {
        return this.f16506b;
    }

    public int hashCode() {
        return this.f16509e.hashCode() ^ ((((((((this.f16505a.hashCode() ^ 1000003) * 1000003) ^ this.f16506b.hashCode()) * 1000003) ^ this.f16507c.hashCode()) * 1000003) ^ this.f16508d.hashCode()) * 1000003);
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f16505a + ", transportName=" + this.f16506b + ", event=" + this.f16507c + ", transformer=" + this.f16508d + ", encoding=" + this.f16509e + "}";
    }

    private b(m mVar, String str, w2.c cVar, w2.e eVar, w2.b bVar) {
        this.f16505a = mVar;
        this.f16506b = str;
        this.f16507c = cVar;
        this.f16508d = eVar;
        this.f16509e = bVar;
    }
}
