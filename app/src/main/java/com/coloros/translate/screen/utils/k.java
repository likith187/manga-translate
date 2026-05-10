package com.coloros.translate.screen.utils;

import android.content.Context;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.WindowInsets;
import android.view.WindowManager;
import n8.h0;
import n8.r;
import t2.b;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public static final k INSTANCE = new k();

    private k() {
    }

    public static final int a(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        if (!p.d(context)) {
            int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
            if (identifier > 0) {
                return context.getResources().getDimensionPixelSize(identifier);
            }
            return 0;
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
        return k2.a.a(context);
    }

    public static final int[] c(Context context) {
        int rotation;
        kotlin.jvm.internal.r.e(context, "context");
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
        kotlin.jvm.internal.r.d(bounds, "getBounds(...)");
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        try {
            r.a aVar = n8.r.Companion;
            rotation = windowManager.getDefaultDisplay().getRotation();
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (rotation != 0 && rotation != 2 && iWidth < iHeight) {
            return new int[]{iHeight, iWidth};
        }
        n8.r.m59constructorimpl(h0.INSTANCE);
        return new int[]{iWidth, iHeight};
    }

    public static final int[] d(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Point point = new Point();
        ((WindowManager) systemService).getDefaultDisplay().getRealSize(point);
        return new int[]{point.x, point.y};
    }

    public static final int e(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowInsets windowInsets = ((WindowManager) systemService).getCurrentWindowMetrics().getWindowInsets();
        kotlin.jvm.internal.r.d(windowInsets, "getWindowInsets(...)");
        Insets insets = windowInsets.getInsets(WindowInsets.Type.statusBars());
        kotlin.jvm.internal.r.d(insets, "getInsets(...)");
        return insets.top;
    }

    public static final boolean f(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        return b.a.UNFOLD != g.b();
    }
}
