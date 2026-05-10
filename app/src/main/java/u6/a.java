package u6;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Stack f15869a = new Stack();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f15870b = new C0231a();

    /* JADX INFO: renamed from: u6.a$a, reason: collision with other inner class name */
    class C0231a implements Application.ActivityLifecycleCallbacks {
        C0231a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            a.this.d(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            a.this.e(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d(Activity activity) {
        if (activity == null) {
            return;
        }
        this.f15869a.push(new WeakReference(activity));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e(Activity activity) {
        Activity activity2;
        if (activity == null) {
            return;
        }
        for (int size = this.f15869a.size() - 1; size >= 0; size--) {
            try {
                WeakReference weakReference = (WeakReference) this.f15869a.get(size);
                if (weakReference != null && (activity2 = (Activity) weakReference.get()) != null && activity2.getClass().getSimpleName().equals(activity.getClass().getSimpleName())) {
                    this.f15869a.remove(size);
                    break;
                }
            } catch (Exception unused) {
            }
        }
    }

    public void c(Application application) {
        if (application != null) {
            application.registerActivityLifecycleCallbacks(this.f15870b);
        }
    }
}
