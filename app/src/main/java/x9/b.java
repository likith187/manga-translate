package x9;

import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
final class b implements Runnable, l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f16411a = new k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f16412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f16413c;

    b(c cVar) {
        this.f16412b = cVar;
    }

    @Override // x9.l
    public void a(q qVar, Object obj) {
        j jVarA = j.a(qVar, obj);
        synchronized (this) {
            try {
                this.f16411a.a(jVarA);
                if (!this.f16413c) {
                    this.f16413c = true;
                    this.f16412b.d().execute(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        j jVarC;
        while (true) {
            try {
                try {
                    jVarC = this.f16411a.c(1000);
                } catch (InterruptedException e10) {
                    this.f16412b.e().b(Level.WARNING, Thread.currentThread().getName() + " was interruppted", e10);
                    this.f16413c = false;
                    return;
                }
            } catch (Throwable th) {
                this.f16413c = false;
                throw th;
            }
            if (jVarC == null) {
                synchronized (this) {
                    jVarC = this.f16411a.b();
                    if (jVarC == null) {
                        this.f16413c = false;
                        this.f16413c = false;
                        return;
                    }
                    this.f16413c = false;
                    throw th;
                }
            }
            this.f16412b.g(jVarC);
        }
    }
}
