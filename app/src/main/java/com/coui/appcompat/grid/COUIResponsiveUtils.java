package com.coui.appcompat.grid;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.coui.appcompat.dialog.AppFeatureUtil;
import com.coui.appcompat.log.COUILog;
import com.coui.component.responsiveui.ResponsiveUIModel;
import com.coui.component.responsiveui.layoutgrid.MarginType;
import com.coui.component.responsiveui.unit.Dp;
import com.coui.component.responsiveui.window.WindowSizeClass;
import com.coui.component.responsiveui.window.WindowTotalSizeClass;
import com.coui.component.responsiveui.window.WindowWidthSizeClass;
import com.support.responsiveui.R$dimen;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class COUIResponsiveUtils {
    private static final int AUTO_GRID_NUMBER = -1;
    private static final int CARD_LIST_FLAG = 2;
    private static boolean DEBUG = false;
    private static final int DEFAULT_COLUMNS_FOR_CHILD = 8;
    private static final int DEFAULT_COLUMNS_FOR_COMPAT = 4;
    private static final int DEFAULT_COLUMNS_FOR_EXPANDED = 8;
    private static final int DEFAULT_COLUMNS_FOR_MEDIUM = 6;
    private static final int DEFAULT_FLAG = 0;
    private static final int LARGE_PADDING = 0;
    private static final int LIST_FLAG = 1;
    private static final int MARGIN_LARGE_DP_IN_LARGE_SCREEN = 40;
    private static final int MARGIN_LARGE_DP_IN_NON_LARGE_SCREEN = 24;
    private static final int PADDING_COUNT = 2;
    private static final int PADDING_MODE = 0;
    private static final int REMEASURE_MODE = 1;
    private static final int SMALL_PADDING = 1;
    private static final String TAG = "COUIResponsiveUtils";
    private static int sCouiFoldType;
    private static final Rect sRect = new Rect();
    private static final Point sPoint = new Point();

    static {
        DEBUG = COUILog.LOG_DEBUG || COUILog.isLoggable(TAG, 3);
        sCouiFoldType = -1;
    }

    public static void calculatePadding(ResponsiveUIModel responsiveUIModel, int i10, int i11, boolean z10, float[] fArr) {
        int iMargin = responsiveUIModel.margin();
        int iGutter = responsiveUIModel.gutter();
        int iColumnCount = responsiveUIModel.columnCount();
        int[] iArrColumnWidth = responsiveUIModel.columnWidth();
        int i12 = (iColumnCount - i10) / 2;
        if (z10) {
            iMargin -= i11;
        }
        float f10 = iMargin;
        fArr[1] = f10;
        fArr[0] = f10;
        for (int i13 = 0; i13 < i12; i13++) {
            fArr[0] = fArr[0] + iArrColumnWidth[i13];
            fArr[1] = fArr[1] + iArrColumnWidth[(iColumnCount - i13) - 1];
        }
        float f11 = i12 * iGutter;
        fArr[0] = fArr[0] + f11;
        fArr[1] = fArr[1] + f11;
    }

    public static float calculateWidth(ResponsiveUIModel responsiveUIModel, int i10, int i11, boolean z10) {
        float fWidth = responsiveUIModel.width((responsiveUIModel.columnCount() - i10) / 2, (i10 + r0) - 1);
        if (DEBUG) {
            Log.d(TAG, "calculateWidth: width = " + fWidth);
        }
        if (!z10) {
            i11 = 0;
        }
        return fWidth + (i11 * 2);
    }

    public static int getChildLayerDefaultTypeMargin(Context context, int i10) {
        return (int) ((isLargeScreen(context, i10) ? MARGIN_LARGE_DP_IN_LARGE_SCREEN : 24) * context.getResources().getDisplayMetrics().density);
    }

    public static int getDefaultGridNumbers(ResponsiveUIModel responsiveUIModel) {
        WindowTotalSizeClass windowTotalSizeClass = responsiveUIModel.windowSizeClass().getWindowTotalSizeClass();
        if (windowTotalSizeClass.equals(WindowTotalSizeClass.Compact)) {
            return 4;
        }
        if (windowTotalSizeClass.equals(WindowTotalSizeClass.Expanded)) {
            return 8;
        }
        return (windowTotalSizeClass.equals(WindowTotalSizeClass.MediumLandScape) || windowTotalSizeClass.equals(WindowTotalSizeClass.MediumPortrait) || windowTotalSizeClass.equals(WindowTotalSizeClass.MediumSquare) || windowTotalSizeClass.equals(WindowTotalSizeClass.ExpandedLandPortrait) || windowTotalSizeClass.equals(WindowTotalSizeClass.ExpandedPortrait)) ? 6 : 4;
    }

    public static int getScreenPhysicalHeight(Activity activity) {
        return activity.getWindowManager().getMaximumWindowMetrics().getBounds().height();
    }

    public static int getScreenPhysicalWidth(Activity activity) {
        return activity.getWindowManager().getMaximumWindowMetrics().getBounds().width();
    }

    @Deprecated
    public static boolean isActivityEmbedded(Context context) {
        return false;
    }

    public static boolean isLargePadWindow(Context context, int i10, int i11) {
        if (sCouiFoldType == -1) {
            sCouiFoldType = AppFeatureUtil.isFoldDisplayFeature(context) ? 1 : 0;
        }
        return (isLargeScreenDp(i10, i11) || isLargeScreenDp(i11, i10)) && sCouiFoldType != 1;
    }

    @Deprecated
    public static boolean isLargeScreen(Context context, int i10) {
        return WindowWidthSizeClass.Companion.fromWidth(context, i10) == WindowWidthSizeClass.Expanded;
    }

    @Deprecated
    public static boolean isLargeScreenDp(int i10) {
        return WindowWidthSizeClass.Companion.fromWidth(new Dp((float) i10)) == WindowWidthSizeClass.Expanded;
    }

    @Deprecated
    public static boolean isMediumScreen(Context context, int i10) {
        return WindowWidthSizeClass.Companion.fromWidth(context, i10) == WindowWidthSizeClass.Medium;
    }

    @Deprecated
    public static boolean isMediumScreenDp(int i10) {
        return WindowWidthSizeClass.Companion.fromWidth(new Dp((float) i10)) == WindowWidthSizeClass.Medium;
    }

    public static boolean isSmallScreen(Context context, int i10) {
        return WindowWidthSizeClass.Companion.fromWidth(context, i10) == WindowWidthSizeClass.Compact;
    }

    public static boolean isSmallScreenDp(int i10) {
        return WindowWidthSizeClass.Companion.fromWidth(new Dp((float) i10)) == WindowWidthSizeClass.Compact;
    }

    public static void measureChildWithPercent(Context context, View view, int i10, int i11, int i12, int i13, int i14) {
        if (i13 != 0) {
            if (i14 != 0) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.width = (int) calculateWidth(View.MeasureSpec.getSize(i10), i13, i11, i12, context);
                view.setLayoutParams(layoutParams);
            } else {
                int size = (View.MeasureSpec.getSize(i10) - ((int) calculateWidth(View.MeasureSpec.getSize(i10), i13, i11, i12, context))) / 2;
                if (view.getPaddingLeft() == size && view.getPaddingRight() == size) {
                    return;
                }
                view.setPaddingRelative(size, view.getPaddingTop(), size, view.getPaddingBottom());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02e2 A[PHI: r0
      0x02e2: PHI (r0v18 int) = (r0v17 int), (r0v24 int), (r0v24 int) binds: [B:106:0x02e8, B:92:0x02a8, B:103:0x02cf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x032f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02a6  */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int measureLayout(android.view.View r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, int r26, boolean r27, boolean r28) {
        /*
            Method dump skipped, instruction units count: 849
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.grid.COUIResponsiveUtils.measureLayout(android.view.View, int, int, int, int, int, int, int, int, boolean, boolean):int");
    }

    public static void setDebug(boolean z10) {
        DEBUG = z10;
    }

    public static boolean isLargeScreen(Context context, int i10, int i11) {
        return WindowTotalSizeClass.Companion.fromWidthAndHeight(context, i10, i11) == WindowTotalSizeClass.Expanded;
    }

    public static boolean isLargeScreenDp(int i10, int i11) {
        return WindowTotalSizeClass.Companion.fromWidthAndHeight(new Dp((float) i10), new Dp((float) i11)) == WindowTotalSizeClass.Expanded;
    }

    public static boolean isMediumScreen(Context context, int i10, int i11) {
        WindowTotalSizeClass windowTotalSizeClassFromWidthAndHeight = WindowTotalSizeClass.Companion.fromWidthAndHeight(context, i10, i11);
        return windowTotalSizeClassFromWidthAndHeight == WindowTotalSizeClass.MediumPortrait || windowTotalSizeClassFromWidthAndHeight == WindowTotalSizeClass.MediumLandScape || windowTotalSizeClassFromWidthAndHeight == WindowTotalSizeClass.MediumSquare || windowTotalSizeClassFromWidthAndHeight == WindowTotalSizeClass.ExpandedPortrait || windowTotalSizeClassFromWidthAndHeight == WindowTotalSizeClass.ExpandedLandPortrait;
    }

    @Deprecated
    public static boolean isMediumScreenDp(Context context, int i10) {
        float f10 = i10;
        return WindowSizeClass.Companion.calculateFromSize(new Dp(f10), new Dp(f10)).getWindowWidthSizeClass() == WindowWidthSizeClass.Medium;
    }

    @Deprecated
    public static boolean isSmallScreenDp(Context context, int i10) {
        float f10 = i10;
        return WindowSizeClass.Companion.calculateFromSize(new Dp(f10), new Dp(f10)).getWindowWidthSizeClass() == WindowWidthSizeClass.Compact;
    }

    public static int getChildLayerDefaultTypeMargin(Context context, int i10, int i11) {
        float f10;
        float f11;
        if (isLargeScreen(context, i10, i11)) {
            f10 = context.getResources().getDisplayMetrics().density;
            f11 = 40.0f;
        } else {
            f10 = context.getResources().getDisplayMetrics().density;
            f11 = 24.0f;
        }
        return (int) (f10 * f11);
    }

    @Deprecated
    public static boolean isLargeScreenDp(Context context, int i10) {
        float f10 = i10;
        return WindowSizeClass.Companion.calculateFromSize(new Dp(f10), new Dp(f10)).getWindowWidthSizeClass() == WindowWidthSizeClass.Expanded;
    }

    public static boolean isMediumScreenDp(int i10, int i11) {
        WindowTotalSizeClass windowTotalSizeClassFromWidthAndHeight = WindowTotalSizeClass.Companion.fromWidthAndHeight(new Dp(i10), new Dp(i11));
        return windowTotalSizeClassFromWidthAndHeight == WindowTotalSizeClass.MediumPortrait || windowTotalSizeClassFromWidthAndHeight == WindowTotalSizeClass.MediumLandScape || windowTotalSizeClassFromWidthAndHeight == WindowTotalSizeClass.MediumSquare || windowTotalSizeClassFromWidthAndHeight == WindowTotalSizeClass.ExpandedPortrait;
    }

    @Deprecated
    public static float calculateWidth(float f10, int i10, int i11, int i12, Context context) {
        return calculateWidth(f10, context instanceof Activity ? getScreenPhysicalHeight((Activity) context) : 0, i10, i11, i12, context);
    }

    public static float calculateWidth(float f10, float f11, int i10, int i11, int i12, Context context) {
        int dimensionPixelOffset;
        MarginType marginType = i12 == 1 ? MarginType.MARGIN_SMALL : MarginType.MARGIN_LARGE;
        boolean z10 = i11 == 1 || i11 == 2;
        ResponsiveUIModel responsiveUIModelChooseMargin = new ResponsiveUIModel(context, (int) f10, (int) f11).chooseMargin(marginType);
        int iMargin = responsiveUIModelChooseMargin.margin();
        int iColumnCount = responsiveUIModelChooseMargin.columnCount();
        if (DEBUG) {
            Log.d(TAG, "calculateWidth: responsiveUIProxy.columnCount() = " + responsiveUIModelChooseMargin.columnCount() + " gridNumber = " + i10 + " screenSize = " + f10);
        }
        int iMin = Math.min(i10, iColumnCount);
        float fCalculateGridWidth = responsiveUIModelChooseMargin.calculateGridWidth(iMin);
        if (DEBUG) {
            Log.d(TAG, "calculateWidth = " + fCalculateGridWidth + " gridNumber = " + iMin + " getColumnsCount = " + responsiveUIModelChooseMargin.columnCount() + " width = " + fCalculateGridWidth + " margin = " + iMargin + " screenWidth = " + f10 + " columnWidth = " + Arrays.toString(responsiveUIModelChooseMargin.columnWidth()) + " typeFlag = " + i11 + "isAddPadding = " + z10);
        }
        if (!z10) {
            dimensionPixelOffset = 0;
        } else if (i11 == 1) {
            dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R$dimen.grid_list_special_padding);
        } else {
            dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R$dimen.grid_card_special_padding);
        }
        return fCalculateGridWidth + ((z10 ? dimensionPixelOffset : 0) * 2);
    }

    @Deprecated
    public static int measureLayout(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, boolean z10, boolean z11) {
        return measureLayout(view, i10, i12, i13, i14, i15, i16, i17, i18, z10, z11);
    }
}
