package x2;

import x2.k;

/* JADX INFO: loaded from: classes.dex */
final class e extends k {

    /* JADX INFO: renamed from: a */
    private final k.b f16331a;

    /* JADX INFO: renamed from: b */
    private final x2.a f16332b;

    static final class b extends k.a {

        /* JADX INFO: renamed from: a */
        private k.b f16333a;

        /* JADX INFO: renamed from: b */
        private x2.a f16334b;

        b() {
        }

        @Override // x2.k.a
        public k a() {
            return new e(this.f16333a, this.f16334b);
        }

        @Override // x2.k.a
        public k.a b(x2.a aVar) {
            this.f16334b = aVar;
            return this;
        }

        @Override // x2.k.a
        public k.a c(k.b bVar) {
            this.f16333a = bVar;
            return this;
        }
    }

    /* synthetic */ e(k.b bVar, x2.a aVar, a aVar2) {
        this(bVar, aVar);
    }

    @Override // x2.k
    public x2.a b() {
        return this.f16332b;
    }

    @Override // x2.k
    public k.b c() {
        return this.f16331a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        k.b bVar = this.f16331a;
        if (bVar != null ? bVar.equals(kVar.c()) : kVar.c() == null) {
            x2.a aVar = this.f16332b;
            if (aVar == null) {
                if (kVar.b() == null) {
                    return true;
                }
            } else if (aVar.equals(kVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        k.b bVar = this.f16331a;
        int iHashCode = ((bVar == null ? 0 : bVar.hashCode()) ^ 1000003) * 1000003;
        x2.a aVar = this.f16332b;
        return iHashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f16331a + ", androidClientInfo=" + this.f16332b + "}";
    }

    private e(k.b bVar, x2.a aVar) {
        this.f16331a = bVar;
        this.f16332b = aVar;
    }
}
