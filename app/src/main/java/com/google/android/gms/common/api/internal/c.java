package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final c f7614h = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f7615a = new AtomicBoolean();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f7616b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList f7617c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7618f = false;

    public interface a {
        void a(boolean z10);
    }

    private c() {
    }

    public static c b() {
        return f7614h;
    }

    public static void c(Application application) {
        c cVar = f7614h;
        synchronized (cVar) {
            try {
                if (!cVar.f7618f) {
                    application.registerActivityLifecycleCallbacks(cVar);
                    application.registerComponentCallbacks(cVar);
                    cVar.f7618f = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void f(boolean z10) {
        synchronized (f7614h) {
            try {
                Iterator it = this.f7617c.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).a(z10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(a aVar) {
        synchronized (f7614h) {
            this.f7617c.add(aVar);
        }
    }

    public boolean d() {
        return this.f7615a.get();
    }

    public boolean e(boolean z10) {
        if (!this.f7616b.get()) {
            if (!r3.j.a()) {
                return z10;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f7616b.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f7615a.set(true);
            }
        }
        return d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        AtomicBoolean atomicBoolean = this.f7616b;
        boolean zCompareAndSet = this.f7615a.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (zCompareAndSet) {
            f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        AtomicBoolean atomicBoolean = this.f7616b;
        boolean zCompareAndSet = this.f7615a.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (zCompareAndSet) {
            f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
        if (i10 == 20 && this.f7615a.compareAndSet(false, true)) {
            this.f7616b.set(true);
            f(true);
        }
    }
}
