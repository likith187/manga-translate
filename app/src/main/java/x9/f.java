package x9;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class f extends Handler implements l {

    /* JADX INFO: renamed from: a */
    private final k f16456a;

    /* JADX INFO: renamed from: b */
    private final int f16457b;

    /* JADX INFO: renamed from: c */
    private final c f16458c;

    /* JADX INFO: renamed from: f */
    private boolean f16459f;

    public f(c cVar, Looper looper, int i10) {
        super(looper);
        this.f16458c = cVar;
        this.f16457b = i10;
        this.f16456a = new k();
    }

    @Override // x9.l
    public void a(q qVar, Object obj) {
        j jVarA = j.a(qVar, obj);
        synchronized (this) {
            try {
                this.f16456a.a(jVarA);
                if (!this.f16459f) {
                    this.f16459f = true;
                    if (!sendMessage(obtainMessage())) {
                        throw new e("Could not send handler message");
                    }
                }
            } finally {
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                j jVarB = this.f16456a.b();
                if (jVarB == null) {
                    synchronized (this) {
                        jVarB = this.f16456a.b();
                        if (jVarB == null) {
                            this.f16459f = false;
                            return;
                        }
                    }
                }
                this.f16458c.g(jVarB);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f16457b);
            if (!sendMessage(obtainMessage())) {
                throw new e("Could not send handler message");
            }
            this.f16459f = true;
        } catch (Throwable th) {
            this.f16459f = false;
            throw th;
        }
    }
}
