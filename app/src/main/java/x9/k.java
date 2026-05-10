package x9;

/* JADX INFO: loaded from: classes2.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f16466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f16467b;

    k() {
    }

    synchronized void a(j jVar) {
        try {
            if (jVar == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            j jVar2 = this.f16467b;
            if (jVar2 != null) {
                jVar2.f16465c = jVar;
                this.f16467b = jVar;
            } else {
                if (this.f16466a != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.f16467b = jVar;
                this.f16466a = jVar;
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized j b() {
        j jVar;
        jVar = this.f16466a;
        if (jVar != null) {
            j jVar2 = jVar.f16465c;
            this.f16466a = jVar2;
            if (jVar2 == null) {
                this.f16467b = null;
            }
        }
        return jVar;
    }

    synchronized j c(int i10) {
        try {
            if (this.f16466a == null) {
                wait(i10);
            }
        } catch (Throwable th) {
            throw th;
        }
        return b();
    }
}
