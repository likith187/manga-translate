package w3;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class p implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f15995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f15996b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f15997c;

    public p(Executor executor, d dVar) {
        this.f15995a = executor;
        this.f15997c = dVar;
    }

    @Override // w3.u
    public final void a(i iVar) {
        synchronized (this.f15996b) {
            try {
                if (this.f15997c == null) {
                    return;
                }
                this.f15995a.execute(new o(this, iVar));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
