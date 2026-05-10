package w2;

/* JADX INFO: loaded from: classes.dex */
final class a extends c {

    /* JADX INFO: renamed from: a */
    private final Integer f15983a;

    /* JADX INFO: renamed from: b */
    private final Object f15984b;

    /* JADX INFO: renamed from: c */
    private final d f15985c;

    a(Integer num, Object obj, d dVar) {
        this.f15983a = num;
        if (obj == null) {
            throw new NullPointerException("Null payload");
        }
        this.f15984b = obj;
        if (dVar == null) {
            throw new NullPointerException("Null priority");
        }
        this.f15985c = dVar;
    }

    @Override // w2.c
    public Integer a() {
        return this.f15983a;
    }

    @Override // w2.c
    public Object b() {
        return this.f15984b;
    }

    @Override // w2.c
    public d c() {
        return this.f15985c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        Integer num = this.f15983a;
        if (num != null ? num.equals(cVar.a()) : cVar.a() == null) {
            if (this.f15984b.equals(cVar.b()) && this.f15985c.equals(cVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.f15983a;
        return this.f15985c.hashCode() ^ (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f15984b.hashCode()) * 1000003);
    }

    public String toString() {
        return "Event{code=" + this.f15983a + ", payload=" + this.f15984b + ", priority=" + this.f15985c + "}";
    }
}
