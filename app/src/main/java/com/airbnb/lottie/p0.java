package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes.dex */
public class p0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Executor f4653e = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f4654a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f4655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f4656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile n0 f4657d;

    private class a extends FutureTask {
        a(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            if (isCancelled()) {
                return;
            }
            try {
                p0.this.l((n0) get());
            } catch (InterruptedException | ExecutionException e10) {
                p0.this.l(new n0(e10));
            }
        }
    }

    public p0(Callable callable) {
        this(callable, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        n0 n0Var = this.f4657d;
        if (n0Var == null) {
            return;
        }
        if (n0Var.b() != null) {
            i(n0Var.b());
        } else {
            g(n0Var.a());
        }
    }

    private synchronized void g(Throwable th) {
        ArrayList arrayList = new ArrayList(this.f4655b);
        if (arrayList.isEmpty()) {
            r1.d.d("Lottie encountered an error but no failure listener was added:", th);
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((k0) it.next()).a(th);
        }
    }

    private void h() {
        this.f4656c.post(new Runnable() { // from class: com.airbnb.lottie.o0
            @Override // java.lang.Runnable
            public final void run() {
                this.f4650a.f();
            }
        });
    }

    private synchronized void i(Object obj) {
        Iterator it = new ArrayList(this.f4654a).iterator();
        while (it.hasNext()) {
            ((k0) it.next()).a(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(n0 n0Var) {
        if (this.f4657d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f4657d = n0Var;
        h();
    }

    public synchronized p0 c(k0 k0Var) {
        try {
            n0 n0Var = this.f4657d;
            if (n0Var != null && n0Var.a() != null) {
                k0Var.a(n0Var.a());
            }
            this.f4655b.add(k0Var);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized p0 d(k0 k0Var) {
        try {
            n0 n0Var = this.f4657d;
            if (n0Var != null && n0Var.b() != null) {
                k0Var.a(n0Var.b());
            }
            this.f4654a.add(k0Var);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public n0 e() {
        return this.f4657d;
    }

    public synchronized p0 j(k0 k0Var) {
        this.f4655b.remove(k0Var);
        return this;
    }

    public synchronized p0 k(k0 k0Var) {
        this.f4654a.remove(k0Var);
        return this;
    }

    public p0(Object obj) {
        this.f4654a = new LinkedHashSet(1);
        this.f4655b = new LinkedHashSet(1);
        this.f4656c = new Handler(Looper.getMainLooper());
        this.f4657d = null;
        l(new n0(obj));
    }

    p0(Callable callable, boolean z10) {
        this.f4654a = new LinkedHashSet(1);
        this.f4655b = new LinkedHashSet(1);
        this.f4656c = new Handler(Looper.getMainLooper());
        this.f4657d = null;
        if (z10) {
            try {
                l((n0) callable.call());
                return;
            } catch (Throwable th) {
                l(new n0(th));
                return;
            }
        }
        f4653e.execute(new a(callable));
    }
}
