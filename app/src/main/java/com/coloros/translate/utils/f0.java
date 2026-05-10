package com.coloros.translate.utils;

import android.content.Context;
import android.graphics.Insets;
import android.provider.Settings;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;

/* JADX INFO: loaded from: classes.dex */
public final class f0 {
    public static final f0 INSTANCE = new f0();

    private f0() {
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

    public static final void b(Window window) {
        kotlin.jvm.internal.r.e(window, "window");
        window.clearFlags(201326592);
        window.addFlags(Integer.MIN_VALUE);
        window.getDecorView().setSystemUiVisibility(5888);
        int systemUiVisibility = window.getDecorView().getSystemUiVisibility();
        window.getDecorView().setSystemUiVisibility(COUIDarkModeUtil.isNightMode(window.getContext()) ? systemUiVisibility & (-8209) : systemUiVisibility | 8208);
        window.setNavigationBarContrastEnforced(false);
        window.setNavigationBarColor(0);
        window.setStatusBarColor(0);
    }

    public static final int c(Context context) {
        int identifier;
        if (context != null && (identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android")) > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static final boolean d(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        return Settings.Secure.getInt(context.getContentResolver(), "navigation_mode", 0) == 2;
    }
}
