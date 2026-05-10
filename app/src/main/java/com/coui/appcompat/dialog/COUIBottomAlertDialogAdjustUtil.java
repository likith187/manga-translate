package com.coui.appcompat.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.core.view.m0;
import com.coui.appcompat.dialog.widget.COUIAlertDialogMaxLinearLayout;
import com.coui.appcompat.uiutil.FollowHandManager;
import com.coui.appcompat.uiutil.ShadowUtils;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.appcompat.R$dimen;
import com.support.dialog.R$color;
import com.support.dialog.R$drawable;
import com.support.dialog.R$id;
import com.support.dialog.R$style;

/* JADX INFO: loaded from: classes.dex */
public class COUIBottomAlertDialogAdjustUtil {

    /* JADX INFO: renamed from: com.coui.appcompat.dialog.COUIBottomAlertDialogAdjustUtil$1 */
    class AnonymousClass1 implements OnFirstLayoutListener {
        final /* synthetic */ View val$anchorView;
        final /* synthetic */ Point val$extraOffsetPoint;
        final /* synthetic */ Point val$touchPositionPoint;
        final /* synthetic */ Window val$window;

        /* JADX INFO: renamed from: com.coui.appcompat.dialog.COUIBottomAlertDialogAdjustUtil$1$1 */
        class ViewOnLayoutChangeListenerC00991 implements View.OnLayoutChangeListener {
            final /* synthetic */ View val$parentPanel;

            ViewOnLayoutChangeListenerC00991(View view) {
                this.val$parentPanel = view;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                COUIBottomAlertDialogAdjustUtil.updateWindowLocation(window, view, point, point);
                this.val$parentPanel.removeOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.coui.appcompat.dialog.a
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view2, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25) {
                        this.f7273a.onLayoutChange(view2, i18, i19, i20, i21, i22, i23, i24, i25);
                    }
                });
                window.getDecorView().setVisibility(0);
            }
        }

        AnonymousClass1(Window window, Point point, View view, Point point2) {
            window = window;
            point = point;
            view = view;
            point = point2;
        }

        @Override // com.coui.appcompat.dialog.COUIBottomAlertDialogAdjustUtil.OnFirstLayoutListener
        public void onFirstLayout() {
            View viewFindViewById = window.findViewById(R$id.parentPanel);
            if (viewFindViewById == null) {
                return;
            }
            Point point = point;
            if (point == null) {
                FollowHandManager.init(view);
            } else {
                FollowHandManager.init(view, point.x, point.y);
            }
            COUIBottomAlertDialogAdjustUtil.updateParentPanel(window, true);
            viewFindViewById.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC00991(viewFindViewById));
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.dialog.COUIBottomAlertDialogAdjustUtil$2 */
    class AnonymousClass2 implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ OnFirstLayoutListener val$onFirstLayoutListener;
        final /* synthetic */ Window val$window;

        AnonymousClass2(Window window, OnFirstLayoutListener onFirstLayoutListener) {
            window = window;
            onFirstLayoutListener = onFirstLayoutListener;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            window.getDecorView().getViewTreeObserver().removeOnGlobalLayoutListener(this);
            onFirstLayoutListener.onFirstLayout();
        }
    }

    private interface OnFirstLayoutListener {
        void onFirstLayout();
    }

    public static void adjustToFree(Window window, View view) {
        adjustToFree(window, view, null);
    }

    private static int dpToPx(Context context, float f10) {
        return Math.round(TypedValue.applyDimension(1, f10, context.getResources().getDisplayMetrics()));
    }

    private static int getDimensionPixel(Window window, int i10, int i11) {
        Resources resources = window.getDecorView().getResources();
        return (resources == null || i10 == 0) ? i11 : resources.getDimensionPixelOffset(i10);
    }

    private static Drawable getDrawable(Window window, int i10) {
        Context context = window.getDecorView().getContext();
        if (context == null || i10 == 0) {
            return null;
        }
        return context.getDrawable(i10);
    }

    public static Rect getLocationRectInScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        return new Rect(i10, iArr[1], view.getMeasuredWidth() + i10, iArr[1] + view.getMeasuredHeight());
    }

    private static int lerp(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i10, i12));
    }

    private static void offsetWindowTo(Window window, int i10, int i11) {
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.x = i10;
        attributes.y = i11;
        window.setAttributes(attributes);
    }

    private static void setFirstLayoutListener(Window window, OnFirstLayoutListener onFirstLayoutListener) {
        if (onFirstLayoutListener == null) {
            return;
        }
        window.getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.coui.appcompat.dialog.COUIBottomAlertDialogAdjustUtil.2
            final /* synthetic */ OnFirstLayoutListener val$onFirstLayoutListener;
            final /* synthetic */ Window val$window;

            AnonymousClass2(Window window2, OnFirstLayoutListener onFirstLayoutListener2) {
                window = window2;
                onFirstLayoutListener = onFirstLayoutListener2;
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                window.getDecorView().getViewTreeObserver().removeOnGlobalLayoutListener(this);
                onFirstLayoutListener.onFirstLayout();
            }
        });
    }

    private static void setWindowWidth(Window window, int i10) {
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = i10;
        window.setAttributes(attributes);
    }

    public static void updateParentPanel(Window window, boolean z10) {
        View viewFindViewById = window.findViewById(R$id.parentPanel);
        if (viewFindViewById instanceof COUIAlertDialogMaxLinearLayout) {
            if (z10) {
                int dimensionPixel = getDimensionPixel(window, R$dimen.support_shadow_size_level_four, 0);
                LinearLayout linearLayout = new LinearLayout(window.getContext());
                linearLayout.setLayoutParams(new ViewGroup.LayoutParams(UIUtil.dip2px(window.getContext(), window.getContext().getResources().getConfiguration().screenWidthDp), FollowHandManager.getDecorViewRectInWindow().height()));
                if (FollowHandManager.ifWidthDpIsFullScreen(window.getContext()) && FollowHandManager.getWindowLocationOnScreen()[0] > 0) {
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    layoutParams.copyFrom(window.getAttributes());
                    layoutParams.gravity = 8388659;
                    layoutParams.x = FollowHandManager.getWindowLocationOnScreen()[0];
                    layoutParams.y = FollowHandManager.getWindowLocationOnScreen()[1];
                    window.setAttributes(layoutParams);
                }
                UIUtil.safeForceHasOverlappingRendering(linearLayout, false);
                linearLayout.setClipToOutline(false);
                linearLayout.setClipChildren(false);
                viewFindViewById.setClipToOutline(false);
                ((COUIAlertDialogMaxLinearLayout) viewFindViewById).setClipChildren(false);
                ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
                viewGroup.removeView(viewFindViewById);
                viewGroup.addView(linearLayout);
                linearLayout.addView(viewFindViewById);
                ShadowUtils.setElevationToView(viewFindViewById, 3, dimensionPixel, r.a.c(window.getContext(), R$color.coui_dialog_follow_hand_spot_shadow_color));
            } else {
                ((COUIAlertDialogMaxLinearLayout) viewFindViewById).setMaxWidth(getDimensionPixel(window, com.support.dialog.R$dimen.coui_dialog_max_width, 0));
            }
            viewFindViewById.setBackground(getDrawable(window, R$drawable.coui_alert_dialog_builder_background));
            viewFindViewById.requestLayout();
        }
    }

    public static void updateWindowLocation(Window window, View view, Point point, Point point2) {
        Point pointCalculatePosition;
        if (view == null && point != null) {
            offsetWindowTo(window, point.x, point.y);
            return;
        }
        int dimensionPixel = getDimensionPixel(window, com.support.dialog.R$dimen.coui_alert_dialog_layout_anchor_view_padding_top, 0);
        View viewFindViewById = window.findViewById(R$id.parentPanel);
        if (point == null) {
            pointCalculatePosition = FollowHandManager.calculatePosition(view.getContext(), viewFindViewById.getMeasuredWidth(), viewFindViewById.getMeasuredHeight() + dimensionPixel, false);
            if (pointCalculatePosition.y < FollowHandManager.getClickPositionYInWindow()) {
                pointCalculatePosition.y += dpToPx(view.getContext(), 8.0f);
            }
        } else {
            pointCalculatePosition = FollowHandManager.calculatePosition(view.getContext(), viewFindViewById.getMeasuredWidth(), viewFindViewById.getMeasuredHeight() + dimensionPixel, false);
        }
        int i10 = pointCalculatePosition.y - FollowHandManager.getDecorViewRectInWindow().top;
        pointCalculatePosition.y = i10;
        if (point2 != null) {
            pointCalculatePosition.x += point2.x;
            pointCalculatePosition.y = i10 + point2.y;
        }
        if (viewFindViewById instanceof LinearLayout) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
            layoutParams.topMargin = pointCalculatePosition.y + dimensionPixel;
            Rect rect = new Rect();
            if (FollowHandManager.getWindowLocationOnScreen()[0] == 0) {
                view.getWindowVisibleDisplayFrame(rect);
            }
            if (m0.v(view) == 1) {
                layoutParams.setMarginStart(((FollowHandManager.getDecorViewRectInWindow().width() - pointCalculatePosition.x) - viewFindViewById.getMeasuredWidth()) + rect.left);
            } else {
                layoutParams.setMarginStart(pointCalculatePosition.x - rect.left);
            }
            viewFindViewById.setLayoutParams(layoutParams);
        }
    }

    public static void adjustToFree(Window window, View view, Point point) {
        adjustToFree(window, view, point, null);
    }

    public static void adjustToFree(Window window, View view, Point point, Point point2) {
        setWindowWidth(window, -2);
        window.clearFlags(2);
        window.setGravity(51);
        window.setWindowAnimations(R$style.Animation_COUI_DialogListWindow);
        setFirstLayoutListener(window, new OnFirstLayoutListener() { // from class: com.coui.appcompat.dialog.COUIBottomAlertDialogAdjustUtil.1
            final /* synthetic */ View val$anchorView;
            final /* synthetic */ Point val$extraOffsetPoint;
            final /* synthetic */ Point val$touchPositionPoint;
            final /* synthetic */ Window val$window;

            /* JADX INFO: renamed from: com.coui.appcompat.dialog.COUIBottomAlertDialogAdjustUtil$1$1 */
            class ViewOnLayoutChangeListenerC00991 implements View.OnLayoutChangeListener {
                final /* synthetic */ View val$parentPanel;

                ViewOnLayoutChangeListenerC00991(View view) {
                    this.val$parentPanel = view;
                }

                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    COUIBottomAlertDialogAdjustUtil.updateWindowLocation(window, view, point, point);
                    this.val$parentPanel.removeOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.coui.appcompat.dialog.a
                        @Override // android.view.View.OnLayoutChangeListener
                        public final void onLayoutChange(View view2, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25) {
                            this.f7273a.onLayoutChange(view2, i18, i19, i20, i21, i22, i23, i24, i25);
                        }
                    });
                    window.getDecorView().setVisibility(0);
                }
            }

            AnonymousClass1(Window window2, Point point3, View view2, Point point22) {
                window = window2;
                point = point3;
                view = view2;
                point = point22;
            }

            @Override // com.coui.appcompat.dialog.COUIBottomAlertDialogAdjustUtil.OnFirstLayoutListener
            public void onFirstLayout() {
                View viewFindViewById = window.findViewById(R$id.parentPanel);
                if (viewFindViewById == null) {
                    return;
                }
                Point point3 = point;
                if (point3 == null) {
                    FollowHandManager.init(view);
                } else {
                    FollowHandManager.init(view, point3.x, point3.y);
                }
                COUIBottomAlertDialogAdjustUtil.updateParentPanel(window, true);
                viewFindViewById.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC00991(viewFindViewById));
            }
        });
    }
}
