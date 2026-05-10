package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f13387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w8.l f13388b;

    public u(Object obj, w8.l lVar) {
        this.f13387a = obj;
        this.f13388b = lVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return kotlin.jvm.internal.r.a(this.f13387a, uVar.f13387a) && kotlin.jvm.internal.r.a(this.f13388b, uVar.f13388b);
    }

    public int hashCode() {
        Object obj = this.f13387a;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.f13388b.hashCode();
    }

    public String toString() {
        return "CompletedWithCancellation(result=" + this.f13387a + ", onCancellation=" + this.f13388b + ')';
    }
}
