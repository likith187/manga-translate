package w3;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class t implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f16005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f16006b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f16007c;

    public t(Executor executor, f fVar) {
        this.f16005a = executor;
        this.f16007c = fVar;
    }

    @Override // w3.u
    public final void a(i iVar) {
        if (iVar.i()) {
            synchronized (this.f16006b) {
                try {
                    if (this.f16007c == null) {
                        return;
                    }
                    this.f16005a.execute(new s(this, iVar));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
