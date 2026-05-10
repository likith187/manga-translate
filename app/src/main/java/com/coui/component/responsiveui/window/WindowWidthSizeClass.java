package com.coui.component.responsiveui.window;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.coui.component.responsiveui.ResponsiveUILog;
import com.coui.component.responsiveui.breakpoints.Breakpoints;
import com.coui.component.responsiveui.unit.Dp;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class WindowWidthSizeClass {
    public static final WindowWidthSizeClass Compact;
    public static final Companion Companion = new Companion(null);
    public static final WindowWidthSizeClass Expanded;
    public static final WindowWidthSizeClass Medium;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f7455b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7456a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WindowWidthSizeClass _hide_fromWidth(float f10) {
            return f10 < Breakpoints.BP_MEDIUM_WINDOW_BASE_WIDTH.getValue() ? WindowWidthSizeClass.Compact : f10 < Breakpoints.BP_EXPANDED_WINDOW_BASE_WIDTH.getValue() ? WindowWidthSizeClass.Medium : WindowWidthSizeClass.Expanded;
        }

        public final WindowWidthSizeClass fromWidth(Dp width) {
            r.e(width, "width");
            if (WindowWidthSizeClass.f7455b) {
                Log.d("WindowWidthSizeClass", "[fromWidth] width : " + width);
            }
            if (width.getValue() >= 0.0f) {
                return _hide_fromWidth(width.getValue());
            }
            Log.e("WindowWidthSizeClass", "width :" + width.getValue() + " and Build.VERSION.SDK_INT:" + Build.VERSION.SDK_INT);
            return WindowWidthSizeClass.Compact;
        }

        private Companion() {
        }

        public final WindowWidthSizeClass fromWidth(Context context, int i10) {
            r.e(context, "context");
            if (WindowWidthSizeClass.f7455b) {
                Log.d("WindowWidthSizeClass", "[fromWidth] width : " + i10 + " pixel");
            }
            if (i10 < 0) {
                Log.e("WindowWidthSizeClass", "width :" + i10 + " and Build.VERSION.SDK_INT:" + Build.VERSION.SDK_INT);
                return WindowWidthSizeClass.Compact;
            }
            return _hide_fromWidth(i10 / context.getResources().getDisplayMetrics().density);
        }
    }

    static {
        ResponsiveUILog responsiveUILog = ResponsiveUILog.INSTANCE;
        f7455b = responsiveUILog.getLOG_DEBUG() || responsiveUILog.isLoggable("WindowSizeClass", 3);
        Compact = new WindowWidthSizeClass("Compact");
        Medium = new WindowWidthSizeClass("Medium");
        Expanded = new WindowWidthSizeClass("Expanded");
    }

    private WindowWidthSizeClass(String str) {
        this.f7456a = str;
    }

    public String toString() {
        return this.f7456a + " window base-width";
    }
}
