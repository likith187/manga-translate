package p7;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f15201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f15202b;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a f15203a = new a();
    }

    public static a a() {
        return b.f15203a;
    }

    private boolean c() {
        return this.f15201a == 1;
    }

    private boolean d() {
        return this.f15201a == 0;
    }

    public synchronized void b(Application application) {
        if (!this.f15202b) {
            application.registerActivityLifecycleCallbacks(this);
            this.f15202b = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (c()) {
            r.e().i(activity.getApplicationContext());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f15201a++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        this.f15201a--;
        if (d()) {
            r.e().g(activity.getApplicationContext());
        }
    }

    private a() {
        this.f15201a = 0;
    }
}
