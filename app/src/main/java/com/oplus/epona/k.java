package com.oplus.epona;

import java.util.ArrayDeque;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import u6.f;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a */
    private final int f11202a = 64;

    /* JADX INFO: renamed from: b */
    private ExecutorService f11203b = e();

    /* JADX INFO: renamed from: c */
    private ArrayDeque f11204c = new ArrayDeque();

    /* JADX INFO: renamed from: d */
    private ArrayDeque f11205d = new ArrayDeque();

    private ThreadFactory c(final String str, final Boolean bool) {
        return new ThreadFactory() { // from class: com.oplus.epona.j
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return k.h(str, bool, runnable);
            }
        };
    }

    private synchronized ExecutorService e() {
        try {
            if (this.f11203b == null) {
                this.f11203b = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), c("Epona Route", Boolean.FALSE));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f11203b;
    }

    public static /* synthetic */ Thread h(String str, Boolean bool, Runnable runnable) {
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(bool.booleanValue());
        return thread;
    }

    private synchronized void j() {
        if (this.f11205d.size() >= 64) {
            return;
        }
        if (this.f11204c.isEmpty()) {
            return;
        }
        for (f.b bVar : this.f11204c) {
            this.f11205d.add(bVar);
            this.f11203b.execute(bVar);
            this.f11204c.remove(bVar);
            if (this.f11205d.size() >= 64) {
                return;
            }
        }
    }

    public synchronized void b(f.b bVar) {
        try {
            if (this.f11205d.size() < 64) {
                this.f11205d.add(bVar);
                this.f11203b.execute(bVar);
            } else {
                this.f11204c.add(bVar);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void d(u6.f fVar) {
    }

    public void f(f.b bVar, boolean z10) {
        synchronized (this) {
            try {
                this.f11205d.remove(bVar);
                if (!z10) {
                    this.f11204c.add(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        j();
    }

    public void g(u6.f fVar) {
    }

    u6.f i(Request request) {
        return u6.f.e(this, request);
    }
}
