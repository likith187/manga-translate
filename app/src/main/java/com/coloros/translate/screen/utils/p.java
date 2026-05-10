package com.coloros.translate.screen.utils;

import android.content.Context;
import android.graphics.Insets;
import android.provider.Settings;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.r0;

/* JADX INFO: loaded from: classes.dex */
public final class p {
    public static final p INSTANCE = new p();

    /* JADX INFO: renamed from: a */
    private static int f5712a = -1;

    private p() {
    }

    public static final int a(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        if (!d(context)) {
            return c(context);
        }
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowInsets windowInsets = ((WindowManager) systemService).getCurrentWindowMetrics().getWindowInsets();
        kotlin.jvm.internal.r.d(windowInsets, "getWindowInsets(...)");
        Insets insetsIgnoringVisibility = windowInsets.getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars());
        kotlin.jvm.internal.r.d(insetsIgnoringVisibility, "getInsetsIgnoringVisibility(...)");
        return insetsIgnoringVisibility.bottom;
    }

    public static final int b(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowInsets windowInsets = ((WindowManager) systemService).getCurrentWindowMetrics().getWindowInsets();
        kotlin.jvm.internal.r.d(windowInsets, "getWindowInsets(...)");
        Insets insetsIgnoringVisibility = windowInsets.getInsetsIgnoringVisibility(WindowInsets.Type.statusBars());
        kotlin.jvm.internal.r.d(insetsIgnoringVisibility, "getInsetsIgnoringVisibility(...)");
        return insetsIgnoringVisibility.top;
    }

    private static final int c(Context context) {
        int identifier;
        if (context != null && (identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android")) > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static final boolean d(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        return Settings.Secure.getInt(context.getContentResolver(), "hide_navigationbar_enable", 0) == 2 || Settings.Secure.getInt(context.getContentResolver(), "hide_navigationbar_enable", 0) == 3;
    }

    public static final boolean e() {
        String strA = r0.a("ro.oplus.image.my_stock.type");
        kotlin.jvm.internal.r.d(strA, "get(...)");
        return kotlin.text.r.K(strA, "Light", false, 2, null);
    }

    public static final boolean f(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        return g(context);
    }

    private static final boolean g(Context context) {
        boolean z10 = false;
        try {
            if (Settings.Secure.getInt(context.getContentResolver(), "hide_navigationbar_enable") == 0) {
                z10 = true;
            }
        } catch (Exception e10) {
            c0.f7098a.e("SystemUtils", "SettingNotFoundException" + e10.getMessage());
        }
        c0.f7098a.d("SystemUtils", "isSoftNavigationBarShow= " + z10);
        return z10;
    }
}
