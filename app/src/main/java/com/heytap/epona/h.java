package com.heytap.epona;

import java.util.ArrayDeque;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import l5.e;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a */
    private final int f10817a = 64;

    /* JADX INFO: renamed from: b */
    private ExecutorService f10818b = e();

    /* JADX INFO: renamed from: c */
    private ArrayDeque f10819c = new ArrayDeque();

    /* JADX INFO: renamed from: d */
    private ArrayDeque f10820d = new ArrayDeque();

    private ThreadFactory c(final String str, final Boolean bool) {
        return new ThreadFactory() { // from class: com.heytap.epona.g
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return h.h(str, bool, runnable);
            }
        };
    }

    private synchronized ExecutorService e() {
        try {
            if (this.f10818b == null) {
                this.f10818b = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), c("Epona Route", Boolean.FALSE));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f10818b;
    }

    public static /* synthetic */ Thread h(String str, Boolean bool, Runnable runnable) {
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(bool.booleanValue());
        return thread;
    }

    private synchronized void j() {
        if (this.f10820d.size() >= 64) {
            return;
        }
        if (this.f10819c.isEmpty()) {
            return;
        }
        for (e.b bVar : this.f10819c) {
            this.f10820d.add(bVar);
            this.f10818b.execute(bVar);
            this.f10819c.remove(bVar);
            if (this.f10820d.size() >= 64) {
                return;
            }
        }
    }

    public synchronized void b(e.b bVar) {
        try {
            if (this.f10820d.size() < 64) {
                this.f10820d.add(bVar);
                this.f10818b.execute(bVar);
            } else {
                this.f10819c.add(bVar);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void d(l5.e eVar) {
    }

    public void f(e.b bVar, boolean z10) {
        synchronized (this) {
            try {
                this.f10820d.remove(bVar);
                if (!z10) {
                    this.f10819c.add(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        j();
    }

    public void g(l5.e eVar) {
    }

    l5.e i(Request request) {
        return l5.e.e(this, request);
    }
}
