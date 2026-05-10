package w3;

/* JADX INFO: loaded from: classes.dex */
final class s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f16003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ t f16004b;

    s(t tVar, i iVar) {
        this.f16004b = tVar;
        this.f16003a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16004b.f16006b) {
            try {
                t tVar = this.f16004b;
                if (tVar.f16007c != null) {
                    tVar.f16007c.a(this.f16003a.f());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
