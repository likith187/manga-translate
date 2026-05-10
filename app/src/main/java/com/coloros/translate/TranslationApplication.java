package com.coloros.translate;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import com.coloros.translate.privacysecuritypolicy.PrivacyPolicyManager;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.z0;
import com.oplus.aiunit.core.data.DetectName;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.d0;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.o0;
import n8.h0;
import n8.r;
import n8.s;
import s.a;

/* JADX INFO: loaded from: classes.dex */
public final class TranslationApplication extends Application {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4754b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Application f4755c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f4756a = new ArrayList();

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Application a() {
            Application application = TranslationApplication.f4755c;
            if (application != null) {
                return application;
            }
            r.r("sContext");
            return null;
        }

        public final void b(Application application) {
            r.e(application, "<set-?>");
            TranslationApplication.f4755c = application;
        }

        private a() {
        }
    }

    static final class b extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        b(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return new b(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.b.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s.b(obj);
            l0.a.l(l0.f7130a, "isAiDocSupport", kotlin.coroutines.jvm.internal.b.a(com.coloros.translate.ui.a.a(TranslationApplication.f4754b.a(), DetectName.AIDOC_TRANSLATE)), false, null, 12, null);
            return h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(c0 c0Var, kotlin.coroutines.d dVar) {
            return ((b) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            com.coloros.translate.observer.e.INSTANCE.h();
        }
    }

    public static final class d implements com.coloros.translate.base.b {
        d() {
        }

        @Override // com.coloros.translate.base.b
        public void a(Activity activity, int i10, e2.b callback) {
            r.e(activity, "activity");
            r.e(callback, "callback");
            new PrivacyPolicyManager().K(activity, callback, i10);
        }

        @Override // com.coloros.translate.base.b
        public boolean b() {
            return PrivacyPolicyManager.f5415i.a();
        }

        @Override // com.coloros.translate.base.b
        public boolean c() {
            return PrivacyPolicyManager.f5415i.b();
        }

        @Override // com.coloros.translate.base.b
        public void d(Activity activity, e2.a functionInstructionCallback) {
            r.e(activity, "activity");
            r.e(functionInstructionCallback, "functionInstructionCallback");
            new PrivacyPolicyManager().O(activity, functionInstructionCallback);
        }

        @Override // com.coloros.translate.base.b
        public boolean e(Context context) {
            r.e(context, "context");
            return com.coloros.translate.utils.p.INSTANCE.e();
        }
    }

    public static final class e implements Application.ActivityLifecycleCallbacks {

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            int label;
            final /* synthetic */ TranslationApplication this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(TranslationApplication translationApplication, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = translationApplication;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object objF = kotlin.coroutines.intrinsics.b.f();
                int i10 = this.label;
                if (i10 == 0) {
                    s.b(obj);
                    this.label = 1;
                    if (k0.a(1000L, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    s.b(obj);
                }
                if (this.this$0.f4756a.isEmpty()) {
                    com.coloros.translate.utils.c0.f7098a.d("TranslationApplication", "onActivityDestroyed stopTranslationService");
                    com.coloros.translate.repository.d.f5439a.e().G();
                }
                return h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
            }
        }

        e() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            r.e(activity, "activity");
            TranslationApplication.this.f4756a.add(activity);
            com.coloros.translate.utils.c0.f7098a.d("TranslationApplication", "onActivityCreated activity : " + activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            r.e(activity, "activity");
            TranslationApplication.this.f4756a.remove(activity);
            com.coloros.translate.utils.c0.f7098a.d("TranslationApplication", "onActivityDestroyed activity : " + activity);
            if (TranslationApplication.this.f4756a.isEmpty()) {
                kotlinx.coroutines.g.b(d0.a(o0.b()), null, null, new a(TranslationApplication.this, null), 3, null);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            r.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            r.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
            r.e(activity, "activity");
            r.e(outState, "outState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            r.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            r.e(activity, "activity");
        }
    }

    private final void d() {
        kotlinx.coroutines.g.b(d0.a(o0.b()), null, null, new b(null), 3, null);
    }

    private final void e() {
        registerActivityLifecycleCallbacks(new e());
    }

    private final void f() {
        com.coloros.translate.utils.c0.f7098a.d("TranslationApplication", "updateCameraShortcut");
        if (!com.coloros.translate.ui.a.b()) {
            s.c.f(this, kotlin.collections.o.m("id_photo"));
            return;
        }
        Intent intent = new Intent();
        intent.setAction("coloros.intent.action.SCANNER_MAIN_PAGE");
        intent.setFlags(268468224);
        intent.putExtra("scanner_features_str", "Translate");
        intent.putExtra("default_feature", "Translate");
        intent.putExtra("request_package_name", getPackageName());
        s.c.e(this, new a.b(this, "id_photo").e(getString(R.string.photo_translation)).b(IconCompat.a(this, R.drawable.icon_shortcut_photo)).c(intent).a());
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        com.coloros.translate.utils.m.INSTANCE.b(this);
        f4754b.b(this);
    }

    public final void b() {
        Object objM59constructorimpl;
        ArrayList<Activity> arrayList = new ArrayList(this.f4756a);
        try {
            r.a aVar = n8.r.Companion;
            for (Activity activity : arrayList) {
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    activity.finish();
                }
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("TranslationApplication", "finishAllActivities failure " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void c(Activity currentActivity) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(currentActivity, "currentActivity");
        List<Activity> list = this.f4756a;
        try {
            r.a aVar = n8.r.Companion;
            for (Activity activity : list) {
                if (!kotlin.jvm.internal.r.a(activity, currentActivity)) {
                    activity.finish();
                }
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("TranslationApplication", "finishOtherActivity failure " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        com.coloros.translate.utils.c0.f7098a.d("TranslationApplication", "onConfigurationChanged");
        f();
        com.coloros.translate.widget.k.f7233c.a().k();
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        com.coloros.translate.utils.c0.f7098a.n(this);
        z0.d(0L, c.INSTANCE, 1, null);
        com.coloros.translate.base.a.INSTANCE.g(this, new d());
        f();
        e();
        d();
    }
}
