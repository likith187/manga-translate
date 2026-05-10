package x9;

/* JADX INFO: loaded from: classes2.dex */
final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f16490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final o f16491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile boolean f16492c = true;

    q(Object obj, o oVar) {
        this.f16490a = obj;
        this.f16491b = oVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f16490a == qVar.f16490a && this.f16491b.equals(qVar.f16491b);
    }

    public int hashCode() {
        return this.f16490a.hashCode() + this.f16491b.f16477f.hashCode();
    }
}
