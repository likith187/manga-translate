package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class o {
    public static final o INSTANCE = new o();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicBoolean f2807a = new AtomicBoolean(false);

    public static final class a extends h {
        @Override // androidx.lifecycle.h, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.r.e(activity, "activity");
            ReportFragment.f2748b.b(activity);
        }
    }

    private o() {
    }

    public static final void a(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        if (f2807a.getAndSet(true)) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        kotlin.jvm.internal.r.c(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new a());
    }
}
