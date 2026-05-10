package r7;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h extends HandlerThread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f15464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f15465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f15466c;

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Runnable f15467a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f15468b;

        public b(Runnable runnable, long j10) {
            this.f15467a = runnable;
            this.f15468b = j10;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final h f15469a = new h();
    }

    public static void b(Runnable runnable) {
        c().f(runnable);
    }

    public static h c() {
        return c.f15469a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String e() {
        return "onLooperPrepared, but looper is null";
    }

    public synchronized boolean d(int i10) {
        Handler handler = this.f15466c;
        if (handler != null) {
            return handler.hasMessages(i10);
        }
        return this.f15465b.get(i10) != null;
    }

    public synchronized void f(Runnable runnable) {
        try {
            Handler handler = this.f15466c;
            if (handler != null) {
                handler.post(runnable);
            } else {
                this.f15464a.add(runnable);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void g(int i10, Runnable runnable, long j10) {
        Handler handler = this.f15466c;
        if (handler != null) {
            handler.postDelayed(runnable, j10);
        } else {
            this.f15465b.put(i10, new b(runnable, j10));
        }
    }

    public synchronized void h(int i10) {
        try {
            Handler handler = this.f15466c;
            if (handler != null) {
                handler.removeMessages(i10);
            } else {
                this.f15465b.remove(i10);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        super.onLooperPrepared();
        Looper looper = getLooper();
        if (looper == null) {
            s7.f.b("WorkThread", new s7.g() { // from class: r7.g
                @Override // s7.g
                public final Object get() {
                    return h.e();
                }
            });
            return;
        }
        synchronized (this) {
            try {
                this.f15466c = new Handler(looper);
                Iterator it = this.f15464a.iterator();
                while (it.hasNext()) {
                    this.f15466c.post((Runnable) it.next());
                }
                this.f15464a.clear();
                for (int i10 = 0; i10 < this.f15465b.size(); i10++) {
                    b bVar = (b) this.f15465b.valueAt(i10);
                    this.f15466c.postDelayed(bVar.f15467a, bVar.f15468b);
                }
                this.f15465b.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private h() {
        super("OplusTrack-thread");
        this.f15464a = new ArrayList();
        this.f15465b = new SparseArray();
        start();
    }
}
