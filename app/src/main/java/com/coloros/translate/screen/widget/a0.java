package com.coloros.translate.screen.widget;

import android.app.OplusActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import com.coloros.translate.screen.ScreenPrivacyActivity;
import java.util.ArrayList;
import java.util.List;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class a0 {
    public static final a0 INSTANCE = new a0();

    /* JADX INFO: renamed from: a */
    private static final n8.j f5965a = n8.k.b(c.INSTANCE);

    /* JADX INFO: renamed from: b */
    private static final n8.j f5966b = n8.k.b(b.INSTANCE);

    /* JADX INFO: renamed from: c */
    private static final n8.j f5967c = n8.k.b(a.INSTANCE);

    static final class a extends kotlin.jvm.internal.s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final List<View> mo8invoke() {
            return new ArrayList();
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final List<View> mo8invoke() {
            return new ArrayList();
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final List<View> mo8invoke() {
            return new ArrayList();
        }
    }

    private a0() {
    }

    public static final void d(Context context, final w8.l callback) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(callback, "callback");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationPrivacyPolicyProxy", "createAiUnitProxyView");
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        final View view = new View(context);
        ((WindowManager) systemService).addView(view, com.coloros.translate.screen.utils.b.a(context, 2));
        INSTANCE.k().add(view);
        view.postDelayed(new Runnable() { // from class: com.coloros.translate.screen.widget.x
            @Override // java.lang.Runnable
            public final void run() {
                a0.e(callback, view);
            }
        }, 150L);
    }

    public static final void e(w8.l callback, View proxyView) {
        kotlin.jvm.internal.r.e(callback, "$callback");
        kotlin.jvm.internal.r.e(proxyView, "$proxyView");
        Context context = proxyView.getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        callback.invoke(context);
    }

    public static final void f(Context context, final Intent srcIntent) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(srcIntent, "srcIntent");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationPrivacyPolicyProxy", "createNotificationProxyView");
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        final View view = new View(context);
        ((WindowManager) systemService).addView(view, com.coloros.translate.screen.utils.b.a(context, 2));
        INSTANCE.k().add(view);
        view.postDelayed(new Runnable() { // from class: com.coloros.translate.screen.widget.z
            @Override // java.lang.Runnable
            public final void run() {
                a0.g(view, srcIntent);
            }
        }, 150L);
    }

    public static final void g(View proxyView, Intent srcIntent) {
        kotlin.jvm.internal.r.e(proxyView, "$proxyView");
        kotlin.jvm.internal.r.e(srcIntent, "$srcIntent");
        Context context = proxyView.getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        com.coloros.translate.screen.utils.c.b(context, srcIntent.getExtras());
    }

    public static final void h(Context context, final Intent srcIntent) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(srcIntent, "srcIntent");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationPrivacyPolicyProxy", "createPrivacyPolicyProxyView");
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        final View view = new View(context);
        ((WindowManager) systemService).addView(view, com.coloros.translate.screen.utils.b.a(context, 2));
        INSTANCE.l().add(view);
        view.postDelayed(new Runnable() { // from class: com.coloros.translate.screen.widget.y
            @Override // java.lang.Runnable
            public final void run() {
                a0.i(view, srcIntent);
            }
        }, 150L);
    }

    public static final void i(View proxyView, Intent srcIntent) {
        kotlin.jvm.internal.r.e(proxyView, "$proxyView");
        kotlin.jvm.internal.r.e(srcIntent, "$srcIntent");
        a0 a0Var = INSTANCE;
        Context context = proxyView.getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        a0Var.p(context, srcIntent);
    }

    private final List j() {
        return (List) f5967c.getValue();
    }

    private final List k() {
        return (List) f5966b.getValue();
    }

    private final List l() {
        return (List) f5965a.getValue();
    }

    private final int m(Context context, String str) {
        try {
            r.a aVar = n8.r.Companion;
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
            kotlin.jvm.internal.r.d(applicationInfo, "getApplicationInfo(...)");
            return applicationInfo.uid;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            if (n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th))) != null) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationPrivacyPolicyProxy", "getUidFromPkg onFailure:$ it");
            }
            return 0;
        }
    }

    private final void n(Context context) {
        Object objM59constructorimpl;
        String packageName = context.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationPrivacyPolicyProxy", "targetPkg is empty!");
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            OplusActivityManager oplusActivityManager = new OplusActivityManager();
            a0 a0Var = INSTANCE;
            kotlin.jvm.internal.r.b(packageName);
            oplusActivityManager.handleAppFromControlCenter(packageName, a0Var.m(context, packageName));
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationPrivacyPolicyProxy", "handleAppFromControlCenter");
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationPrivacyPolicyProxy", "handleAppFromControlCenter :" + thM62exceptionOrNullimpl);
        }
    }

    public static final boolean o() {
        com.coloros.translate.base.a aVar = com.coloros.translate.base.a.INSTANCE;
        return aVar.b() || aVar.c();
    }

    private final void p(Context context, Intent intent) {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationPrivacyPolicyProxy", "jumpToScreenPrivacyActivityForShowDialog");
            Intent intent2 = new Intent(context, (Class<?>) ScreenPrivacyActivity.class);
            intent2.setFlags(268435456);
            Bundle extras = intent.getExtras();
            if (extras != null) {
                intent2.putExtras(extras);
            }
            INSTANCE.n(context);
            context.startActivity(intent2);
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationPrivacyPolicyProxy", "onFailure:" + thM62exceptionOrNullimpl);
        }
    }

    public static final void q(Context context) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(context, "context");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationPrivacyPolicyProxy", "releaseAiUnitProxy");
        a0 a0Var = INSTANCE;
        if (a0Var.j().isEmpty()) {
            return;
        }
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        for (View view : a0Var.j()) {
            try {
                r.a aVar = n8.r.Companion;
                windowManager.removeView(view);
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationPrivacyPolicyProxy", "release releaseAiUnitProxy onFailure:$ it");
            }
        }
        INSTANCE.j().clear();
    }

    public static final void r(Context context) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(context, "context");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationPrivacyPolicyProxy", "releaseNotificationProxy");
        a0 a0Var = INSTANCE;
        if (a0Var.k().isEmpty()) {
            return;
        }
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        for (View view : a0Var.k()) {
            try {
                r.a aVar = n8.r.Companion;
                windowManager.removeView(view);
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationPrivacyPolicyProxy", "release notificationProxyView onFailure:$ it");
            }
        }
        INSTANCE.k().clear();
    }

    public static final void s(Context context) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(context, "context");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationPrivacyPolicyProxy", "releasePrivacyPolicyProxy");
        a0 a0Var = INSTANCE;
        if (a0Var.l().isEmpty()) {
            return;
        }
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        for (View view : a0Var.l()) {
            try {
                r.a aVar = n8.r.Companion;
                windowManager.removeView(view);
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationPrivacyPolicyProxy", "release privacyPolicyProxy onFailure:$ it");
            }
        }
        INSTANCE.l().clear();
    }
}
