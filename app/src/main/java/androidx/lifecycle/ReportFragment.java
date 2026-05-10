package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import androidx.lifecycle.l;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public class ReportFragment extends Fragment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f2748b = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f2749a;

    public interface a {
        void a();

        void b();

        void onStart();
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(Activity activity, l.a event) {
            kotlin.jvm.internal.r.e(activity, "activity");
            kotlin.jvm.internal.r.e(event, "event");
            if (activity instanceof s) {
                l lifecycle = ((s) activity).getLifecycle();
                if (lifecycle instanceof u) {
                    ((u) lifecycle).i(event);
                }
            }
        }

        public final void b(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            c.Companion.a(activity);
            FragmentManager fragmentManager = activity.getFragmentManager();
            if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
                fragmentManager.beginTransaction().add(new ReportFragment(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
                fragmentManager.executePendingTransactions();
            }
        }

        private b() {
        }
    }

    public static final class c implements Application.ActivityLifecycleCallbacks {
        public static final a Companion = new a(null);

        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final void a(Activity activity) {
                kotlin.jvm.internal.r.e(activity, "activity");
                activity.registerActivityLifecycleCallbacks(new c());
            }

            private a() {
            }
        }

        public static final void registerIn(Activity activity) {
            Companion.a(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.r.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.r.e(activity, "activity");
            ReportFragment.f2748b.a(activity, l.a.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            ReportFragment.f2748b.a(activity, l.a.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            ReportFragment.f2748b.a(activity, l.a.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            ReportFragment.f2748b.a(activity, l.a.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            ReportFragment.f2748b.a(activity, l.a.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            ReportFragment.f2748b.a(activity, l.a.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.r.e(activity, "activity");
            kotlin.jvm.internal.r.e(bundle, "bundle");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
        }
    }

    private final void a(l.a aVar) {
    }

    private final void b(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    private final void c(a aVar) {
        if (aVar != null) {
            aVar.b();
        }
    }

    private final void d(a aVar) {
        if (aVar != null) {
            aVar.onStart();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        b(this.f2749a);
        a(l.a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a(l.a.ON_DESTROY);
        this.f2749a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        a(l.a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        c(this.f2749a);
        a(l.a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        d(this.f2749a);
        a(l.a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        a(l.a.ON_STOP);
    }
}
