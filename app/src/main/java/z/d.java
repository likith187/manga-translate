package z;

import android.os.CancellationSignal;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a */
    private boolean f16578a;

    /* JADX INFO: renamed from: b */
    private a f16579b;

    /* JADX INFO: renamed from: c */
    private Object f16580c;

    /* JADX INFO: renamed from: d */
    private boolean f16581d;

    public interface a {
        void onCancel();
    }

    private void c() {
        while (this.f16581d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public void a() {
        synchronized (this) {
            try {
                if (this.f16578a) {
                    return;
                }
                this.f16578a = true;
                this.f16581d = true;
                a aVar = this.f16579b;
                Object obj = this.f16580c;
                if (aVar != null) {
                    try {
                        aVar.onCancel();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.f16581d = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                if (obj != null) {
                    ((CancellationSignal) obj).cancel();
                }
                synchronized (this) {
                    this.f16581d = false;
                    notifyAll();
                }
            } finally {
            }
        }
    }

    public void b(a aVar) {
        synchronized (this) {
            try {
                c();
                if (this.f16579b == aVar) {
                    return;
                }
                this.f16579b = aVar;
                if (this.f16578a && aVar != null) {
                    aVar.onCancel();
                }
            } finally {
            }
        }
    }
}
