package e3;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class a extends d {

    /* JADX INFO: renamed from: a */
    private final h3.a f11685a;

    /* JADX INFO: renamed from: b */
    private final Map f11686b;

    a(h3.a aVar, Map map) {
        if (aVar == null) {
            throw new NullPointerException("Null clock");
        }
        this.f11685a = aVar;
        if (map == null) {
            throw new NullPointerException("Null values");
        }
        this.f11686b = map;
    }

    @Override // e3.d
    h3.a e() {
        return this.f11685a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f11685a.equals(dVar.e()) && this.f11686b.equals(dVar.h());
    }

    @Override // e3.d
    Map h() {
        return this.f11686b;
    }

    public int hashCode() {
        return this.f11686b.hashCode() ^ ((this.f11685a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f11685a + ", values=" + this.f11686b + "}";
    }
}
