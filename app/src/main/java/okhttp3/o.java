package okhttp3;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Runnable f14934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExecutorService f14935d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f14932a = 64;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f14933b = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayDeque f14936e = new ArrayDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayDeque f14937f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayDeque f14938g = new ArrayDeque();

    private final void c(Deque deque, Object obj) {
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(obj)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            runnable = this.f14934c;
            h0 h0Var = h0.INSTANCE;
        }
        if (e() || runnable == null) {
            return;
        }
        runnable.run();
    }

    private final boolean e() {
        boolean z10;
        if (i9.d.f12674h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator it = this.f14936e.iterator();
                kotlin.jvm.internal.r.d(it, "readyAsyncCalls.iterator()");
                if (it.hasNext()) {
                    androidx.appcompat.app.t.a(it.next());
                    if (this.f14937f.size() < this.f14932a) {
                        throw null;
                    }
                }
                z10 = f() > 0;
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayList.size() <= 0) {
            return z10;
        }
        androidx.appcompat.app.t.a(arrayList.get(0));
        b();
        throw null;
    }

    public final synchronized void a(okhttp3.internal.connection.e call) {
        kotlin.jvm.internal.r.e(call, "call");
        this.f14938g.add(call);
    }

    public final synchronized ExecutorService b() {
        ExecutorService executorService;
        try {
            if (this.f14935d == null) {
                this.f14935d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), i9.d.K(i9.d.f12675i + " Dispatcher", false));
            }
            executorService = this.f14935d;
            kotlin.jvm.internal.r.b(executorService);
        } catch (Throwable th) {
            throw th;
        }
        return executorService;
    }

    public final void d(okhttp3.internal.connection.e call) {
        kotlin.jvm.internal.r.e(call, "call");
        c(this.f14938g, call);
    }

    public final synchronized int f() {
        return this.f14937f.size() + this.f14938g.size();
    }
}
