package com.coui.component.responsiveui;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import com.coui.component.responsiveui.layoutgrid.LayoutGridSystem;
import com.coui.component.responsiveui.layoutgrid.MarginType;
import com.coui.component.responsiveui.proxy.ResponsiveUIProxy;
import com.coui.component.responsiveui.status.WindowStatus;
import com.coui.component.responsiveui.unit.Dp;
import com.coui.component.responsiveui.unit.DpKt;
import com.coui.component.responsiveui.window.LayoutGridWindowSize;
import com.coui.component.responsiveui.window.WindowSizeClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ResponsiveUIModel {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: d */
    private static final boolean f7411d;

    /* JADX INFO: renamed from: a */
    private final Context f7412a;

    /* JADX INFO: renamed from: b */
    private LayoutGridWindowSize f7413b;

    /* JADX INFO: renamed from: c */
    private final ResponsiveUIProxy f7414c;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        ResponsiveUILog responsiveUILog = ResponsiveUILog.INSTANCE;
        f7411d = responsiveUILog.getLOG_DEBUG() || responsiveUILog.isLoggable("ResponsiveUIModel", 3);
    }

    public ResponsiveUIModel(Context mContext, LayoutGridWindowSize mWindowSize) {
        r.e(mContext, "mContext");
        r.e(mWindowSize, "mWindowSize");
        this.f7412a = mContext;
        this.f7413b = mWindowSize;
        WindowStatus windowStatus = new WindowStatus(mContext.getResources().getConfiguration().orientation, WindowSizeClass.Companion.calculateFromSize(DpKt.pixel2Dp(this.f7413b.getWidth(), mContext), DpKt.pixel2Dp(this.f7413b.getHeight(), mContext)), new LayoutGridWindowSize(this.f7413b));
        LayoutGridSystem layoutGridSystem = new LayoutGridSystem(mContext, windowStatus.windowSizeClass(), this.f7413b.getWidth());
        if (f7411d) {
            Log.d("ResponsiveUIModel", "[init]: " + windowStatus);
            Log.d("ResponsiveUIModel", "[init]: " + layoutGridSystem);
        }
        this.f7414c = new ResponsiveUIProxy(layoutGridSystem, windowStatus);
    }

    public final int[][] allColumnWidth() {
        return this.f7414c.allColumnWidth();
    }

    public final int[] allMargin() {
        return this.f7414c.allMargin();
    }

    public final int calculateGridWidth(int i10) {
        if (i10 > this.f7414c.columnCount()) {
            if (f7411d) {
                Log.w("ResponsiveUIModel", "calculateGridWidth: requested grid number larger then current grid total number, fill the whole grid");
            }
            i10 = this.f7414c.columnCount();
        }
        return this.f7414c.width((this.f7414c.columnCount() - i10) / 2, (i10 + r0) - 1);
    }

    public final ResponsiveUIModel chooseMargin(MarginType marginType) {
        r.e(marginType, "marginType");
        this.f7414c.chooseMargin(marginType);
        return this;
    }

    public final int columnCount() {
        return this.f7414c.columnCount();
    }

    public final int[] columnWidth() {
        return this.f7414c.columnWidth();
    }

    public final Context getMContext() {
        return this.f7412a;
    }

    public final LayoutGridWindowSize getMWindowSize() {
        return this.f7413b;
    }

    public final IResponsiveUI getResponsiveUI() {
        return this.f7414c;
    }

    public final int gutter() {
        return this.f7414c.gutter();
    }

    public final LayoutGridWindowSize layoutGridWindowSize() {
        return this.f7414c.layoutGridWindowSize();
    }

    public final int layoutGridWindowWidth() {
        return this.f7414c.layoutGridWindowWidth();
    }

    public final int margin() {
        return this.f7414c.margin();
    }

    public final void onConfigurationChanged(Configuration newConfig) {
        r.e(newConfig, "newConfig");
        this.f7413b.setWidth((int) new Dp(newConfig.screenWidthDp).toPixel(this.f7412a));
        this.f7413b.setHeight((int) new Dp(newConfig.screenWidthDp).toPixel(this.f7412a));
        this.f7414c.rebuild(this.f7412a, this.f7413b);
    }

    public final ResponsiveUIModel rebuild(LayoutGridWindowSize windowSize) {
        r.e(windowSize, "windowSize");
        this.f7413b = windowSize;
        this.f7414c.rebuild(this.f7412a, windowSize);
        return this;
    }

    public final void setMWindowSize(LayoutGridWindowSize layoutGridWindowSize) {
        r.e(layoutGridWindowSize, "<set-?>");
        this.f7413b = layoutGridWindowSize;
    }

    public final String showLayoutGridInfo() {
        return this.f7414c.showLayoutGridInfo();
    }

    public final String showWindowStatusInfo() {
        return this.f7414c.showWindowStatusInfo();
    }

    public final int width(int i10, int i11) {
        return this.f7414c.width(i10, i11);
    }

    public final int windowOrientation() {
        return this.f7414c.windowOrientation();
    }

    public final WindowSizeClass windowSizeClass() {
        return this.f7414c.windowSizeClass();
    }

    public final ResponsiveUIModel rebuild(float f10, float f11) {
        this.f7413b.setWidth((int) new Dp(f10).toPixel(this.f7412a));
        this.f7413b.setHeight((int) new Dp(f11).toPixel(this.f7412a));
        this.f7414c.rebuild(this.f7412a, this.f7413b);
        return this;
    }

    public final ResponsiveUIModel rebuild(int i10, int i11) {
        this.f7413b.setWidth(i10);
        this.f7413b.setHeight(i11);
        this.f7414c.rebuild(this.f7412a, this.f7413b);
        return this;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ResponsiveUIModel(Context context, float f10, float f11) {
        this(context, new LayoutGridWindowSize(context, new Dp(f10), new Dp(f11)));
        r.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ResponsiveUIModel(Context context, int i10, int i11) {
        this(context, new LayoutGridWindowSize(i10, i11));
        r.e(context, "context");
    }
}
