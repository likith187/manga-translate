package w3;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class r implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f16000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f16001b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f16002c;

    public r(Executor executor, e eVar) {
        this.f16000a = executor;
        this.f16002c = eVar;
    }

    @Override // w3.u
    public final void a(i iVar) {
        if (iVar.i() || iVar.g()) {
            return;
        }
        synchronized (this.f16001b) {
            try {
                if (this.f16002c == null) {
                    return;
                }
                this.f16000a.execute(new q(this, iVar));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
