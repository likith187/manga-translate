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
public final class WindowHeightSizeClass {
    public static final WindowHeightSizeClass Compact;
    public static final Companion Companion = new Companion(null);
    public static final WindowHeightSizeClass Expanded;
    public static final WindowHeightSizeClass Medium;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f7448b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7449a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WindowHeightSizeClass _hide_fromHeight(float f10) {
            return f10 < Breakpoints.BP_MEDIUM_WINDOW_BASE_HEIGHT.getValue() ? WindowHeightSizeClass.Compact : f10 < Breakpoints.BP_EXPANDED_WINDOW_BASE_HEIGHT.getValue() ? WindowHeightSizeClass.Medium : WindowHeightSizeClass.Expanded;
        }

        public final WindowHeightSizeClass fromHeight(Dp height) {
            r.e(height, "height");
            if (WindowHeightSizeClass.f7448b) {
                Log.d("WindowHeightSizeClass", "[fromHeight] height : " + height);
            }
            if (height.getValue() >= 0.0f) {
                return _hide_fromHeight(height.getValue());
            }
            Log.e("WindowHeightSizeClass", "height :" + height.getValue() + " and Build.VERSION.SDK_INT:" + Build.VERSION.SDK_INT);
            return WindowHeightSizeClass.Compact;
        }

        private Companion() {
        }

        public final WindowHeightSizeClass fromHeight(Context context, int i10) {
            r.e(context, "context");
            if (WindowHeightSizeClass.f7448b) {
                Log.d("WindowHeightSizeClass", "[fromHeight] height : " + i10 + " pixel");
            }
            if (i10 < 0) {
                Log.e("WindowHeightSizeClass", "height :" + i10 + " and Build.VERSION.SDK_INT:" + Build.VERSION.SDK_INT);
                return WindowHeightSizeClass.Compact;
            }
            return _hide_fromHeight(i10 / context.getResources().getDisplayMetrics().density);
        }
    }

    static {
        ResponsiveUILog responsiveUILog = ResponsiveUILog.INSTANCE;
        f7448b = responsiveUILog.getLOG_DEBUG() || responsiveUILog.isLoggable("WindowSizeClass", 3);
        Compact = new WindowHeightSizeClass("Compact");
        Medium = new WindowHeightSizeClass("Medium");
        Expanded = new WindowHeightSizeClass("Expanded");
    }

    private WindowHeightSizeClass(String str) {
        this.f7449a = str;
    }

    public String toString() {
        return this.f7449a + " window base-height";
    }
}
