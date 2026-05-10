package w3;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class z extends i {

    /* JADX INFO: renamed from: a */
    private final Object f16013a = new Object();

    /* JADX INFO: renamed from: b */
    private final v f16014b = new v();

    /* JADX INFO: renamed from: c */
    private boolean f16015c;

    /* JADX INFO: renamed from: d */
    private volatile boolean f16016d;

    /* JADX INFO: renamed from: e */
    private Object f16017e;

    /* JADX INFO: renamed from: f */
    private Exception f16018f;

    z() {
    }

    private final void q() {
        com.google.android.gms.common.internal.k.k(this.f16015c, "Task is not yet complete");
    }

    private final void r() {
        if (this.f16016d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    private final void s() {
        if (this.f16015c) {
            throw c.of(this);
        }
    }

    private final void t() {
        synchronized (this.f16013a) {
            try {
                if (this.f16015c) {
                    this.f16014b.b(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // w3.i
    public final i a(Executor executor, d dVar) {
        this.f16014b.a(new p(executor, dVar));
        t();
        return this;
    }

    @Override // w3.i
    public final i b(d dVar) {
        this.f16014b.a(new p(k.f15989a, dVar));
        t();
        return this;
    }

    @Override // w3.i
    public final i c(e eVar) {
        j(k.f15989a, eVar);
        return this;
    }

    @Override // w3.i
    public final i d(f fVar) {
        k(k.f15989a, fVar);
        return this;
    }

    @Override // w3.i
    public final Exception e() {
        Exception exc;
        synchronized (this.f16013a) {
            exc = this.f16018f;
        }
        return exc;
    }

    @Override // w3.i
    public final Object f() {
        Object obj;
        synchronized (this.f16013a) {
            try {
                q();
                r();
                Exception exc = this.f16018f;
                if (exc != null) {
                    throw new h(exc);
                }
                obj = this.f16017e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // w3.i
    public final boolean g() {
        return this.f16016d;
    }

    @Override // w3.i
    public final boolean h() {
        boolean z10;
        synchronized (this.f16013a) {
            z10 = this.f16015c;
        }
        return z10;
    }

    @Override // w3.i
    public final boolean i() {
        boolean z10;
        synchronized (this.f16013a) {
            try {
                z10 = false;
                if (this.f16015c && !this.f16016d && this.f16018f == null) {
                    z10 = true;
                }
            } finally {
            }
        }
        return z10;
    }

    public final i j(Executor executor, e eVar) {
        this.f16014b.a(new r(executor, eVar));
        t();
        return this;
    }

    public final i k(Executor executor, f fVar) {
        this.f16014b.a(new t(executor, fVar));
        t();
        return this;
    }

    public final void l(Exception exc) {
        com.google.android.gms.common.internal.k.h(exc, "Exception must not be null");
        synchronized (this.f16013a) {
            s();
            this.f16015c = true;
            this.f16018f = exc;
        }
        this.f16014b.b(this);
    }

    public final void m(Object obj) {
        synchronized (this.f16013a) {
            s();
            this.f16015c = true;
            this.f16017e = obj;
        }
        this.f16014b.b(this);
    }

    public final boolean n() {
        synchronized (this.f16013a) {
            try {
                if (this.f16015c) {
                    return false;
                }
                this.f16015c = true;
                this.f16016d = true;
                this.f16014b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean o(Exception exc) {
        com.google.android.gms.common.internal.k.h(exc, "Exception must not be null");
        synchronized (this.f16013a) {
            try {
                if (this.f16015c) {
                    return false;
                }
                this.f16015c = true;
                this.f16018f = exc;
                this.f16014b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean p(Object obj) {
        synchronized (this.f16013a) {
            try {
                if (this.f16015c) {
                    return false;
                }
                this.f16015c = true;
                this.f16017e = obj;
                this.f16014b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
