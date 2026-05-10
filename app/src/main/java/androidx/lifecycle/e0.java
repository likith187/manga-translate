package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.l;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class e0 implements s {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final b f2761l = new b(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final e0 f2762m = new e0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2764b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f2767h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2765c = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2766f = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final u f2768i = new u(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Runnable f2769j = new Runnable() { // from class: androidx.lifecycle.d0
        @Override // java.lang.Runnable
        public final void run() {
            e0.h(this.f2759a);
        }
    };

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ReportFragment.a f2770k = new d();

    public static final class a {
        public static final a INSTANCE = new a();

        private a() {
        }

        public static final void a(Activity activity, Application.ActivityLifecycleCallbacks callback) {
            kotlin.jvm.internal.r.e(activity, "activity");
            kotlin.jvm.internal.r.e(callback, "callback");
            activity.registerActivityLifecycleCallbacks(callback);
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final s a() {
            return e0.f2762m;
        }

        public final void b(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            e0.f2762m.g(context);
        }

        private b() {
        }
    }

    public static final class c extends h {

        public static final class a extends h {
            final /* synthetic */ e0 this$0;

            a(e0 e0Var) {
                this.this$0 = e0Var;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostResumed(Activity activity) {
                kotlin.jvm.internal.r.e(activity, "activity");
                this.this$0.d();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostStarted(Activity activity) {
                kotlin.jvm.internal.r.e(activity, "activity");
                this.this$0.e();
            }
        }

        c() {
        }

        @Override // androidx.lifecycle.h, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.r.e(activity, "activity");
        }

        @Override // androidx.lifecycle.h, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            e0.this.c();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.r.e(activity, "activity");
            a.a(activity, new a(e0.this));
        }

        @Override // androidx.lifecycle.h, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            e0.this.f();
        }
    }

    public static final class d implements ReportFragment.a {
        d() {
        }

        @Override // androidx.lifecycle.ReportFragment.a
        public void a() {
        }

        @Override // androidx.lifecycle.ReportFragment.a
        public void b() {
            e0.this.d();
        }

        @Override // androidx.lifecycle.ReportFragment.a
        public void onStart() {
            e0.this.e();
        }
    }

    private e0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(e0 e0Var) {
        e0Var.i();
        e0Var.j();
    }

    public final void c() {
        int i10 = this.f2764b - 1;
        this.f2764b = i10;
        if (i10 == 0) {
            Handler handler = this.f2767h;
            kotlin.jvm.internal.r.b(handler);
            handler.postDelayed(this.f2769j, 700L);
        }
    }

    public final void d() {
        int i10 = this.f2764b + 1;
        this.f2764b = i10;
        if (i10 == 1) {
            if (this.f2765c) {
                this.f2768i.i(l.a.ON_RESUME);
                this.f2765c = false;
            } else {
                Handler handler = this.f2767h;
                kotlin.jvm.internal.r.b(handler);
                handler.removeCallbacks(this.f2769j);
            }
        }
    }

    public final void e() {
        int i10 = this.f2763a + 1;
        this.f2763a = i10;
        if (i10 == 1 && this.f2766f) {
            this.f2768i.i(l.a.ON_START);
            this.f2766f = false;
        }
    }

    public final void f() {
        this.f2763a--;
        j();
    }

    public final void g(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        this.f2767h = new Handler();
        this.f2768i.i(l.a.ON_CREATE);
        Context applicationContext = context.getApplicationContext();
        kotlin.jvm.internal.r.c(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new c());
    }

    @Override // androidx.lifecycle.s
    public l getLifecycle() {
        return this.f2768i;
    }

    public final void i() {
        if (this.f2764b == 0) {
            this.f2765c = true;
            this.f2768i.i(l.a.ON_PAUSE);
        }
    }

    public final void j() {
        if (this.f2763a == 0 && this.f2765c) {
            this.f2768i.i(l.a.ON_STOP);
            this.f2766f = true;
        }
    }
}
