package com.coloros.translate.utils;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.oplus.content.OplusFeatureConfigManager;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class o0 {
    public static final o0 INSTANCE = new o0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f7136a;

    private o0() {
    }

    public static final int a(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = d(context).getDefaultDisplay();
        kotlin.jvm.internal.r.d(defaultDisplay, "getDefaultDisplay(...)");
        defaultDisplay.getMetrics(displayMetrics);
        c0.f7098a.d("ScreenUtils", "getScreenHeight:" + displayMetrics.heightPixels);
        return displayMetrics.heightPixels;
    }

    public static final int b(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = d(context).getDefaultDisplay();
        kotlin.jvm.internal.r.d(defaultDisplay, "getDefaultDisplay(...)");
        defaultDisplay.getRealMetrics(displayMetrics);
        c0.f7098a.d("ScreenUtils", "getScreenHeight:" + displayMetrics.heightPixels);
        return displayMetrics.heightPixels;
    }

    public static final int c(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManagerD = d(context);
        if (windowManagerD != null) {
            Display defaultDisplay = windowManagerD.getDefaultDisplay();
            kotlin.jvm.internal.r.d(defaultDisplay, "getDefaultDisplay(...)");
            defaultDisplay.getRealMetrics(displayMetrics);
        }
        c0.f7098a.d("ScreenUtils", "getScreenWidth:" + displayMetrics.widthPixels);
        return displayMetrics.widthPixels;
    }

    private static final WindowManager d(Context context) {
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        return (WindowManager) systemService;
    }

    public static final boolean e() {
        Object objM59constructorimpl;
        if (f7136a == null) {
            try {
                r.a aVar = n8.r.Companion;
                f7136a = Boolean.valueOf(OplusFeatureConfigManager.getInstance().hasFeature("oplus.hardware.type.tablet"));
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                c0.f7098a.e("ScreenUtils", "isTablet(),error");
            }
        }
        Boolean bool = f7136a;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }
}
