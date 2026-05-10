package w3;

/* JADX INFO: loaded from: classes.dex */
final class o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f15993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ p f15994b;

    o(p pVar, i iVar) {
        this.f15994b = pVar;
        this.f15993a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f15994b.f15996b) {
            try {
                p pVar = this.f15994b;
                if (pVar.f15997c != null) {
                    pVar.f15997c.a(this.f15993a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
