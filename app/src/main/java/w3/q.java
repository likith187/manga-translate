package w3;

/* JADX INFO: loaded from: classes.dex */
final class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f15998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ r f15999b;

    q(r rVar, i iVar) {
        this.f15999b = rVar;
        this.f15998a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f15999b.f16001b) {
            try {
                r rVar = this.f15999b;
                if (rVar.f16002c != null) {
                    rVar.f16002c.a((Exception) com.google.android.gms.common.internal.k.g(this.f15998a.e()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
