package com.coui.component.responsiveui.proxy;

import android.content.Context;
import android.util.Log;
import com.coui.component.responsiveui.IResponsiveUI;
import com.coui.component.responsiveui.ResponsiveUILog;
import com.coui.component.responsiveui.layoutgrid.ILayoutGrid;
import com.coui.component.responsiveui.layoutgrid.LayoutGridSystem;
import com.coui.component.responsiveui.layoutgrid.MarginType;
import com.coui.component.responsiveui.status.IWindowStatus;
import com.coui.component.responsiveui.status.WindowStatus;
import com.coui.component.responsiveui.unit.DpKt;
import com.coui.component.responsiveui.window.LayoutGridWindowSize;
import com.coui.component.responsiveui.window.WindowSizeClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ResponsiveUIProxy implements IResponsiveUI, ILayoutGrid, IWindowStatus {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f7427e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ LayoutGridSystem f7428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ WindowStatus f7429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WindowStatus f7430c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LayoutGridSystem f7431d;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        ResponsiveUILog responsiveUILog = ResponsiveUILog.INSTANCE;
        f7427e = responsiveUILog.getLOG_DEBUG() || responsiveUILog.isLoggable("ResponsiveUIProxy", 3);
    }

    public ResponsiveUIProxy(LayoutGridSystem layoutGridSystem, WindowStatus windowStatus) {
        r.e(layoutGridSystem, "layoutGridSystem");
        r.e(windowStatus, "windowStatus");
        this.f7428a = layoutGridSystem;
        this.f7429b = windowStatus;
        this.f7430c = windowStatus;
        this.f7431d = layoutGridSystem;
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int[][] allColumnWidth() {
        return this.f7428a.allColumnWidth();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int[] allMargin() {
        return this.f7428a.allMargin();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public ILayoutGrid chooseMargin(MarginType marginType) {
        r.e(marginType, "marginType");
        return this.f7428a.chooseMargin(marginType);
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int columnCount() {
        return this.f7428a.columnCount();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int[] columnWidth() {
        return this.f7428a.columnWidth();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int gutter() {
        return this.f7428a.gutter();
    }

    @Override // com.coui.component.responsiveui.status.IWindowStatus
    public LayoutGridWindowSize layoutGridWindowSize() {
        return this.f7429b.layoutGridWindowSize();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int layoutGridWindowWidth() {
        return this.f7428a.layoutGridWindowWidth();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int margin() {
        return this.f7428a.margin();
    }

    @Override // com.coui.component.responsiveui.IResponsiveUI
    public void onConfigurationChanged(Context context, LayoutGridWindowSize windowSize) {
        r.e(context, "context");
        r.e(windowSize, "windowSize");
        rebuild(context, windowSize);
    }

    @Override // com.coui.component.responsiveui.IResponsiveUI
    public void rebuild(Context context, LayoutGridWindowSize windowSize) {
        r.e(context, "context");
        r.e(windowSize, "windowSize");
        WindowStatus windowStatus = this.f7430c;
        windowStatus.setOrientation(context.getResources().getConfiguration().orientation);
        windowStatus.setLayoutGridWindowSize(windowSize);
        windowStatus.setWindowSizeClass(WindowSizeClass.Companion.calculateFromSize(DpKt.pixel2Dp(windowSize.getWidth(), context), DpKt.pixel2Dp(windowSize.getHeight(), context)));
        this.f7431d.rebuild(context, this.f7430c.getWindowSizeClass(), windowSize.getWidth());
        if (f7427e) {
            Log.d("ResponsiveUIProxy", "[rebuild]: " + this.f7430c);
            Log.d("ResponsiveUIProxy", "[rebuild]: " + this.f7431d);
        }
    }

    @Override // com.coui.component.responsiveui.IResponsiveUI
    public String showLayoutGridInfo() {
        return String.valueOf(this.f7431d);
    }

    @Override // com.coui.component.responsiveui.IResponsiveUI
    public String showWindowStatusInfo() {
        return String.valueOf(this.f7430c);
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int width(int i10, int i11) {
        return this.f7428a.width(i10, i11);
    }

    @Override // com.coui.component.responsiveui.status.IWindowStatus
    public int windowOrientation() {
        return this.f7429b.windowOrientation();
    }

    @Override // com.coui.component.responsiveui.status.IWindowStatus
    public WindowSizeClass windowSizeClass() {
        return this.f7429b.windowSizeClass();
    }
}
