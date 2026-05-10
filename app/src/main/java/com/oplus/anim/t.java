package com.oplus.anim;

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

/* JADX INFO: loaded from: classes2.dex */
public class t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Executor f11135e = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f11136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f11137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f11138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile r f11139d;

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
                t.this.k((r) get());
            } catch (InterruptedException | ExecutionException e10) {
                t.this.k(new r(e10));
            }
        }
    }

    public t(Callable callable) {
        this(callable, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        r rVar = this.f11139d;
        if (rVar == null) {
            return;
        }
        if (rVar.b() != null) {
            h(rVar.b());
        } else {
            f(rVar.a());
        }
    }

    private synchronized void f(Throwable th) {
        ArrayList arrayList = new ArrayList(this.f11137b);
        if (arrayList.isEmpty()) {
            l6.e.d("EffectiveAnimation encountered an error but no failure listener was added:", th);
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((p) it.next()).a(th);
        }
    }

    private void g() {
        this.f11138c.post(new Runnable() { // from class: com.oplus.anim.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f11134a.e();
            }
        });
    }

    private synchronized void h(Object obj) {
        Iterator it = new ArrayList(this.f11136a).iterator();
        while (it.hasNext()) {
            ((p) it.next()).a(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(r rVar) {
        if (this.f11139d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f11139d = rVar;
        g();
    }

    public synchronized t c(p pVar) {
        try {
            r rVar = this.f11139d;
            if (rVar != null && rVar.a() != null) {
                pVar.a(rVar.a());
            }
            this.f11137b.add(pVar);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized t d(p pVar) {
        try {
            r rVar = this.f11139d;
            if (rVar != null && rVar.b() != null) {
                pVar.a(rVar.b());
            }
            this.f11136a.add(pVar);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized t i(p pVar) {
        this.f11137b.remove(pVar);
        return this;
    }

    public synchronized t j(p pVar) {
        this.f11136a.remove(pVar);
        return this;
    }

    t(Callable callable, boolean z10) {
        this.f11136a = new LinkedHashSet(1);
        this.f11137b = new LinkedHashSet(1);
        this.f11138c = new Handler(Looper.getMainLooper());
        this.f11139d = null;
        if (!z10) {
            f11135e.execute(new a(callable));
            return;
        }
        try {
            k((r) callable.call());
        } catch (Throwable th) {
            k(new r(th));
        }
    }
}
