package x2;

import x2.o;

/* JADX INFO: loaded from: classes.dex */
final class i extends o {

    /* JADX INFO: renamed from: a */
    private final o.c f16364a;

    /* JADX INFO: renamed from: b */
    private final o.b f16365b;

    static final class b extends o.a {

        /* JADX INFO: renamed from: a */
        private o.c f16366a;

        /* JADX INFO: renamed from: b */
        private o.b f16367b;

        b() {
        }

        @Override // x2.o.a
        public o a() {
            return new i(this.f16366a, this.f16367b);
        }

        @Override // x2.o.a
        public o.a b(o.b bVar) {
            this.f16367b = bVar;
            return this;
        }

        @Override // x2.o.a
        public o.a c(o.c cVar) {
            this.f16366a = cVar;
            return this;
        }
    }

    /* synthetic */ i(o.c cVar, o.b bVar, a aVar) {
        this(cVar, bVar);
    }

    @Override // x2.o
    public o.b b() {
        return this.f16365b;
    }

    @Override // x2.o
    public o.c c() {
        return this.f16364a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        o.c cVar = this.f16364a;
        if (cVar != null ? cVar.equals(oVar.c()) : oVar.c() == null) {
            o.b bVar = this.f16365b;
            if (bVar == null) {
                if (oVar.b() == null) {
                    return true;
                }
            } else if (bVar.equals(oVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        o.c cVar = this.f16364a;
        int iHashCode = ((cVar == null ? 0 : cVar.hashCode()) ^ 1000003) * 1000003;
        o.b bVar = this.f16365b;
        return iHashCode ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f16364a + ", mobileSubtype=" + this.f16365b + "}";
    }

    private i(o.c cVar, o.b bVar) {
        this.f16364a = cVar;
        this.f16365b = bVar;
    }
}
