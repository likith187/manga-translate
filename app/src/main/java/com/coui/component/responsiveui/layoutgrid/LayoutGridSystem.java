package com.coui.component.responsiveui.layoutgrid;

import android.content.Context;
import android.util.Log;
import b9.d;
import com.coui.component.responsiveui.ResponsiveUILog;
import com.coui.component.responsiveui.unit.Dp;
import com.coui.component.responsiveui.unit.DpKt;
import com.coui.component.responsiveui.window.WindowSizeClass;
import com.coui.component.responsiveui.window.WindowTotalSizeClass;
import com.support.responsiveui.R$dimen;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutGridSystem implements ILayoutGrid {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final boolean f7419h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f7420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LayoutGrid f7423d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MarginType f7424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private IColumnsWidthCalculator f7425f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7426g;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        ResponsiveUILog responsiveUILog = ResponsiveUILog.INSTANCE;
        f7419h = responsiveUILog.getLOG_DEBUG() || responsiveUILog.isLoggable("LayoutGridSystem", 3);
    }

    public LayoutGridSystem(Context context, WindowSizeClass windowSizeClass, int i10) {
        r.e(context, "context");
        r.e(windowSizeClass, "windowSizeClass");
        this.f7420a = new int[MarginType.values().length];
        this.f7424e = MarginType.MARGIN_LARGE;
        this.f7425f = new AccumulationCalculator();
        rebuild(context, windowSizeClass, i10);
    }

    private final LayoutGrid a(Context context, WindowTotalSizeClass windowTotalSizeClass, IColumnsWidthCalculator iColumnsWidthCalculator) {
        int i10 = r.a(windowTotalSizeClass, WindowTotalSizeClass.Compact) ? 4 : r.a(windowTotalSizeClass, WindowTotalSizeClass.MediumLandScape) ? true : r.a(windowTotalSizeClass, WindowTotalSizeClass.MediumPortrait) ? true : r.a(windowTotalSizeClass, WindowTotalSizeClass.MediumSquare) ? true : r.a(windowTotalSizeClass, WindowTotalSizeClass.ExpandedLandPortrait) ? true : r.a(windowTotalSizeClass, WindowTotalSizeClass.ExpandedPortrait) ? 8 : 12;
        MarginType[] marginTypeArrValues = MarginType.values();
        int length = marginTypeArrValues.length;
        int[][] iArr = new int[length][];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = new int[i10];
        }
        if (this.f7426g) {
            Dp dpPixel2Dp = DpKt.pixel2Dp(this.f7422c, context);
            int length2 = marginTypeArrValues.length;
            Dp[] dpArr = new Dp[length2];
            for (int i12 = 0; i12 < length2; i12++) {
                dpArr[i12] = DpKt.pixel2Dp(this.f7420a[i12], context);
            }
            Dp dpPixel2Dp2 = DpKt.pixel2Dp(this.f7421b, context);
            Dp[][] dpArr2 = new Dp[length2][];
            for (int i13 = 0; i13 < length2; i13++) {
                dpArr2[i13] = iColumnsWidthCalculator.calculate(dpPixel2Dp, dpArr[i13], dpPixel2Dp2, i10);
            }
            for (MarginType marginType : marginTypeArrValues) {
                for (int i14 = 0; i14 < i10; i14++) {
                    iArr[marginType.ordinal()][i14] = (int) dpArr2[marginType.ordinal()][i14].toPixel(context);
                }
            }
        } else {
            for (MarginType marginType2 : marginTypeArrValues) {
                iArr[marginType2.ordinal()] = iColumnsWidthCalculator.calculate(this.f7422c, this.f7420a[marginType2.ordinal()], this.f7421b, i10);
            }
        }
        LayoutGrid layoutGrid = new LayoutGrid(i10, iArr, this.f7421b, this.f7420a);
        if (f7419h) {
            Log.d("LayoutGridSystem", "[calculateLayoutGrid] widthSizeClass: " + windowTotalSizeClass + ", layoutGridWindowWidth: " + this.f7422c + ", " + layoutGrid);
        }
        return layoutGrid;
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int[][] allColumnWidth() {
        LayoutGrid layoutGrid = this.f7423d;
        if (layoutGrid == null) {
            r.r("layoutGrid");
            layoutGrid = null;
        }
        return layoutGrid.getColumnsWidth();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int[] allMargin() {
        LayoutGrid layoutGrid = this.f7423d;
        if (layoutGrid == null) {
            r.r("layoutGrid");
            layoutGrid = null;
        }
        return layoutGrid.getMargin();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public ILayoutGrid chooseMargin(MarginType marginType) {
        r.e(marginType, "marginType");
        this.f7424e = marginType;
        return this;
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int columnCount() {
        LayoutGrid layoutGrid = this.f7423d;
        if (layoutGrid == null) {
            r.r("layoutGrid");
            layoutGrid = null;
        }
        return layoutGrid.getColumnCount();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int[] columnWidth() {
        LayoutGrid layoutGrid = this.f7423d;
        if (layoutGrid == null) {
            r.r("layoutGrid");
            layoutGrid = null;
        }
        return layoutGrid.getColumnsWidth()[this.f7424e.ordinal()];
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int gutter() {
        LayoutGrid layoutGrid = this.f7423d;
        if (layoutGrid == null) {
            r.r("layoutGrid");
            layoutGrid = null;
        }
        return layoutGrid.getGutter();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int layoutGridWindowWidth() {
        return this.f7422c;
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int margin() {
        LayoutGrid layoutGrid = this.f7423d;
        if (layoutGrid == null) {
            r.r("layoutGrid");
            layoutGrid = null;
        }
        return layoutGrid.getMargin()[this.f7424e.ordinal()];
    }

    public final void rebuild(Context context, WindowSizeClass windowSizeClass, int i10) {
        r.e(context, "context");
        r.e(windowSizeClass, "windowSizeClass");
        for (MarginType marginType : MarginType.values()) {
            int[] iArr = this.f7420a;
            int iOrdinal = marginType.ordinal();
            WindowTotalSizeClass windowTotalSizeClass = windowSizeClass.getWindowTotalSizeClass();
            iArr[iOrdinal] = r.a(windowTotalSizeClass, WindowTotalSizeClass.Compact) ? context.getResources().getDimensionPixelSize(marginType.resId()[0]) : r.a(windowTotalSizeClass, WindowTotalSizeClass.Expanded) ? context.getResources().getDimensionPixelSize(marginType.resId()[2]) : context.getResources().getDimensionPixelSize(marginType.resId()[1]);
        }
        this.f7421b = r.a(windowSizeClass.getWindowTotalSizeClass(), WindowTotalSizeClass.Expanded) ? context.getResources().getDimensionPixelSize(R$dimen.layout_grid_gutter_expanded) : context.getResources().getDimensionPixelSize(R$dimen.layout_grid_gutter);
        this.f7422c = i10;
        this.f7423d = a(context, windowSizeClass.getWindowTotalSizeClass(), this.f7425f);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("layout-grid width = ");
        sb.append(this.f7422c);
        sb.append(", current margin = ");
        sb.append(margin());
        sb.append(", all margin = ");
        sb.append(allMargin());
        sb.append(", ");
        LayoutGrid layoutGrid = this.f7423d;
        if (layoutGrid == null) {
            r.r("layoutGrid");
            layoutGrid = null;
        }
        sb.append(layoutGrid);
        return sb.toString();
    }

    @Override // com.coui.component.responsiveui.layoutgrid.ILayoutGrid
    public int width(int i10, int i11) {
        int iE = d.e(i10, i11);
        int iC = d.c(i10, i11);
        if (iE < 0) {
            throw new IllegalArgumentException("column index must not be negative");
        }
        LayoutGrid layoutGrid = this.f7423d;
        LayoutGrid layoutGrid2 = null;
        if (layoutGrid == null) {
            r.r("layoutGrid");
            layoutGrid = null;
        }
        if (iC >= layoutGrid.getColumnCount()) {
            StringBuilder sb = new StringBuilder();
            sb.append("column index must be less than ");
            LayoutGrid layoutGrid3 = this.f7423d;
            if (layoutGrid3 == null) {
                r.r("layoutGrid");
            } else {
                layoutGrid2 = layoutGrid3;
            }
            sb.append(layoutGrid2.getColumnCount());
            throw new IllegalArgumentException(sb.toString());
        }
        int i12 = iC - iE;
        LayoutGrid layoutGrid4 = this.f7423d;
        if (layoutGrid4 == null) {
            r.r("layoutGrid");
            layoutGrid4 = null;
        }
        int gutter = i12 * layoutGrid4.getGutter();
        if (iE <= iC) {
            while (true) {
                LayoutGrid layoutGrid5 = this.f7423d;
                if (layoutGrid5 == null) {
                    r.r("layoutGrid");
                    layoutGrid5 = null;
                }
                gutter += layoutGrid5.getColumnsWidth()[this.f7424e.ordinal()][iE];
                if (iE == iC) {
                    break;
                }
                iE++;
            }
        }
        return gutter;
    }
}
