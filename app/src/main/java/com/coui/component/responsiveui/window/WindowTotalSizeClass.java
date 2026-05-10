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
public final class WindowTotalSizeClass {
    public static final WindowTotalSizeClass Compact;
    public static final Companion Companion = new Companion(null);
    public static final WindowTotalSizeClass Expanded;
    public static final WindowTotalSizeClass ExpandedLandPortrait;
    public static final WindowTotalSizeClass ExpandedPortrait;
    public static final WindowTotalSizeClass MediumLandScape;
    public static final WindowTotalSizeClass MediumPortrait;
    public static final WindowTotalSizeClass MediumSquare;

    /* JADX INFO: renamed from: b */
    private static final boolean f7453b;

    /* JADX INFO: renamed from: a */
    private final String f7454a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final WindowTotalSizeClass a(float f10, float f11) {
            WindowWidthSizeClass windowWidthSizeClass_hide_fromWidth = WindowWidthSizeClass.Companion._hide_fromWidth(f10);
            if (r.a(windowWidthSizeClass_hide_fromWidth, WindowWidthSizeClass.Compact)) {
                return WindowTotalSizeClass.Compact;
            }
            if (r.a(windowWidthSizeClass_hide_fromWidth, WindowWidthSizeClass.Medium)) {
                WindowHeightSizeClass windowHeightSizeClass_hide_fromHeight = WindowHeightSizeClass.Companion._hide_fromHeight(f11);
                return r.a(windowHeightSizeClass_hide_fromHeight, WindowHeightSizeClass.Compact) ? WindowTotalSizeClass.MediumLandScape : r.a(windowHeightSizeClass_hide_fromHeight, WindowHeightSizeClass.Medium) ? WindowTotalSizeClass.MediumSquare : WindowTotalSizeClass.MediumPortrait;
            }
            WindowHeightSizeClass windowHeightSizeClass_hide_fromHeight2 = WindowHeightSizeClass.Companion._hide_fromHeight(f11);
            if (r.a(windowHeightSizeClass_hide_fromHeight2, WindowHeightSizeClass.Compact)) {
                return WindowTotalSizeClass.ExpandedLandPortrait;
            }
            if (!r.a(windowHeightSizeClass_hide_fromHeight2, WindowHeightSizeClass.Medium) && b(f10, f11)) {
                return WindowTotalSizeClass.ExpandedPortrait;
            }
            return WindowTotalSizeClass.Expanded;
        }

        private final boolean b(float f10, float f11) {
            return f11 > f10 && f10 < Breakpoints.BP_EXPANDED_WINDOW_MAXIMUM_WIDTH.getValue();
        }

        public final WindowTotalSizeClass fromWidthAndHeight(Dp width, Dp height) {
            r.e(width, "width");
            r.e(height, "height");
            if (WindowTotalSizeClass.f7453b) {
                Log.d("WindowHeightSizeClass", "[fromWidthAndHeight] width : " + width + ", height : " + height);
            }
            if (width.getValue() >= 0.0f && height.getValue() >= 0.0f) {
                return a(width.getValue(), height.getValue());
            }
            Log.e("WindowHeightSizeClass", "width :" + width.getValue() + " height :" + height.getValue() + " and Build.VERSION.SDK_INT:" + Build.VERSION.SDK_INT);
            return WindowTotalSizeClass.Compact;
        }

        private Companion() {
        }

        public final WindowTotalSizeClass fromWidthAndHeight(Context context, int i10, int i11) {
            r.e(context, "context");
            if (WindowTotalSizeClass.f7453b) {
                Log.d("WindowHeightSizeClass", "[fromWidthAndHeight] width : " + i10 + " pixel, height : " + i11 + " pixel");
            }
            if (i10 >= 0 && i11 >= 0) {
                float f10 = context.getResources().getDisplayMetrics().density;
                return a(i10 / f10, i11 / f10);
            }
            Log.e("WindowHeightSizeClass", "width :" + i10 + " height :" + i11 + " and Build.VERSION.SDK_INT:" + Build.VERSION.SDK_INT);
            return WindowTotalSizeClass.Compact;
        }
    }

    static {
        ResponsiveUILog responsiveUILog = ResponsiveUILog.INSTANCE;
        f7453b = responsiveUILog.getLOG_DEBUG() || responsiveUILog.isLoggable("WindowSizeClass", 3);
        Compact = new WindowTotalSizeClass("Compact");
        MediumLandScape = new WindowTotalSizeClass("MediumLandScape");
        MediumSquare = new WindowTotalSizeClass("MediumSquare");
        MediumPortrait = new WindowTotalSizeClass("MediumPortrait");
        Expanded = new WindowTotalSizeClass("Expanded");
        ExpandedLandPortrait = new WindowTotalSizeClass("ExpandedLandPortrait");
        ExpandedPortrait = new WindowTotalSizeClass("ExpandedPortrait");
    }

    private WindowTotalSizeClass(String str) {
        this.f7454a = str;
    }

    public String toString() {
        return this.f7454a + " window base-total";
    }
}
