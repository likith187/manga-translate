package com.coui.appcompat.panel;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import com.coui.appcompat.animation.COUIInEaseInterpolator;
import com.coui.appcompat.animation.COUIOutEaseInterpolator;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.panel.R$id;

/* JADX INFO: loaded from: classes.dex */
public class COUIPanelAdjustResizeHelperAfterR extends COUIAbsPanelAdjustResizeHelper {
    private static final float DISMISS_HEIGHT_ANIM_DURATION_COEFFICIENT = 133.0f;
    private static final float DISMISS_HEIGHT_ANIM_DURATION_COEFFICIENT_IN_LARGE = 117.0f;
    private static final float DISMISS_HEIGHT_ANIM_DURATION_INITIAL_VALUE = 200.0f;
    private static final long PANEL_ALPHA_ANIM_DURATION = 250;
    private static final float SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT = 132.0f;
    private static final float SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT_IN_LARGE = 150.0f;
    private static final float SHOW_HEIGHT_ANIM_DURATION_INITIAL_VALUE = 300.0f;
    private static final String TAG = "AdjustResizeAfterR";
    private boolean mIsPanelAlphaRun;
    private ValueAnimator mMarginBottomAnim;
    private static final Interpolator SHOW_HEIGHT_ANIM_INTERPOLATOR = new COUIInEaseInterpolator();
    private static final Interpolator DISMISS_HEIGHT_ANIM_INTERPOLATOR = new COUIOutEaseInterpolator();
    private static final Interpolator SHOW_HEIGHT_ANIM_INTERPOLATOR_IN_LARGE = new COUIInEaseInterpolator();
    private static final Interpolator DISMISS_HEIGHT_ANIM_INTERPOLATOR_IN_LARGE = new COUIOutEaseInterpolator();
    private int mWindowType = 2;
    private int mCurrentKeyboardHeight = 0;

    private ValueAnimator createPanelAlphaAnimation(final View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.COUIPanelAdjustResizeHelperAfterR.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (view != null) {
                    view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    if (COUIPanelAdjustResizeHelperAfterR.this.mIsPanelAlphaRun) {
                        return;
                    }
                    COUIPanelAdjustResizeHelperAfterR.this.mIsPanelAlphaRun = true;
                }
            }
        });
        return valueAnimatorOfFloat;
    }

    private void doMarginBottomAnim(final View view, final int i10, boolean z10, final int i11, View view2, int i12) {
        float fAbs;
        final View viewFindViewById = view.findViewById(R$id.coui_panel_content_layout);
        final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iMax = Math.max(0, i11 + i12);
        int iMax2 = Math.max(0, i12);
        int screenHeightRealSize = UIUtil.getScreenHeightRealSize(view.getContext());
        this.mMarginBottomAnim = ValueAnimator.ofInt(iMax2, iMax);
        if (COUIPanelMultiWindowUtils.isLargeHeightScreen(view.getContext(), null)) {
            if (z10) {
                fAbs = Math.abs((i10 * SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT_IN_LARGE) / screenHeightRealSize) + SHOW_HEIGHT_ANIM_DURATION_INITIAL_VALUE;
                this.mMarginBottomAnim.setInterpolator(SHOW_HEIGHT_ANIM_INTERPOLATOR_IN_LARGE);
            } else {
                fAbs = Math.abs((i10 * DISMISS_HEIGHT_ANIM_DURATION_COEFFICIENT_IN_LARGE) / screenHeightRealSize) + 200.0f;
                this.mMarginBottomAnim.setInterpolator(DISMISS_HEIGHT_ANIM_INTERPOLATOR_IN_LARGE);
            }
        } else if (z10) {
            fAbs = Math.abs((i10 * SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT) / screenHeightRealSize) + SHOW_HEIGHT_ANIM_DURATION_INITIAL_VALUE;
            this.mMarginBottomAnim.setInterpolator(SHOW_HEIGHT_ANIM_INTERPOLATOR);
        } else {
            fAbs = Math.abs((i10 * DISMISS_HEIGHT_ANIM_DURATION_COEFFICIENT) / screenHeightRealSize) + 200.0f;
            this.mMarginBottomAnim.setInterpolator(DISMISS_HEIGHT_ANIM_INTERPOLATOR);
        }
        this.mMarginBottomAnim.setDuration((long) fAbs);
        ValueAnimator valueAnimatorCreatePanelAlphaAnimation = createPanelAlphaAnimation(view2.findViewById(com.support.appcompat.R$id.design_bottom_sheet));
        valueAnimatorCreatePanelAlphaAnimation.setDuration(PANEL_ALPHA_ANIM_DURATION);
        valueAnimatorCreatePanelAlphaAnimation.setInterpolator(this.mMarginBottomAnim.getInterpolator());
        this.mMarginBottomAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.COUIPanelAdjustResizeHelperAfterR.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i13;
                View view3;
                if (view.isAttachedToWindow()) {
                    int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    if (i11 > 0 && iIntValue >= (i13 = i10) && (view3 = viewFindViewById) != null) {
                        view3.setPadding(0, 0, 0, Math.max(iIntValue - i13, 0));
                        iIntValue = i13;
                    }
                    ViewGroup.LayoutParams layoutParams2 = layoutParams;
                    if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                        ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = iIntValue;
                        view.setLayoutParams(layoutParams2);
                    }
                }
            }
        });
        this.mMarginBottomAnim.start();
        if (!z10) {
            this.mIsPanelAlphaRun = false;
        }
        if (z10 && !this.mIsPanelAlphaRun && view2.findViewById(com.support.appcompat.R$id.design_bottom_sheet).getAlpha() == 0.0f) {
            valueAnimatorCreatePanelAlphaAnimation.start();
        }
    }

    private void setMarginBottomTo(View view, int i10, WindowInsets windowInsets, View view2) {
        int i11;
        if (view != null) {
            View viewFindViewById = view2.findViewById(R$id.coui_panel_content_layout);
            int measuredHeight = view2.getMeasuredHeight();
            int measuredHeight2 = view.getMeasuredHeight();
            if (i10 > measuredHeight * 0.9f) {
                Log.e(TAG, "KeyboardHeight > availableHeight * 0.9f, so not elevated");
                return;
            }
            Context context = view.getContext();
            View viewFindViewById2 = view2.findViewById(com.support.appcompat.R$id.design_bottom_sheet);
            int panelMarginBottom = COUIPanelMultiWindowUtils.getPanelMarginBottom(context, context.getResources().getConfiguration(), windowInsets, viewFindViewById2 instanceof COUIPanelPercentFrameLayout ? ((COUIPanelPercentFrameLayout) viewFindViewById2).isIsHandlePanel() : false);
            int i12 = (measuredHeight <= 0 || measuredHeight2 <= 0 || (i11 = (measuredHeight2 + panelMarginBottom) + i10) <= measuredHeight) ? i10 : i10 - (i11 - measuredHeight);
            int i13 = i10 - panelMarginBottom;
            ValueAnimator valueAnimator = this.mMarginBottomAnim;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.mMarginBottomAnim.cancel();
            }
            if (i10 != 0) {
                doMarginBottomAnim(view, i12, windowInsets.getInsets(WindowInsets.Type.ime()).bottom != 0, i13, view2, panelMarginBottom);
                return;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = panelMarginBottom;
                view.setLayoutParams(layoutParams);
            }
            if (viewFindViewById != null) {
                viewFindViewById.setPadding(0, 0, 0, 0);
            }
        }
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public void adjustResize(Context context, ViewGroup viewGroup, WindowInsets windowInsets, View view, boolean z10) {
        int iMax = 0;
        if (z10) {
            iMax = Math.max(0, windowInsets.getInsets(WindowInsets.Type.ime()).bottom - windowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom);
            if (iMax == this.mCurrentKeyboardHeight) {
                Log.w(TAG, "keyboardHeight is the same size, keyboardHeight");
                return;
            }
            this.mCurrentKeyboardHeight = iMax;
        }
        setMarginBottomTo(viewGroup, iMax, windowInsets, view);
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public int getMarginBottomValue() {
        return -1;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public int getPaddingBottomOffset() {
        return -1;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public float getTranslateOffset() {
        return -1.0f;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public int getWindowType() {
        return this.mWindowType;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public void recoveryScrollingParentViewPaddingBottom(COUIPanelContentLayout cOUIPanelContentLayout) {
        if (cOUIPanelContentLayout != null) {
            cOUIPanelContentLayout.setPadding(0, 0, 0, 0);
        }
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public boolean releaseData() {
        return true;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public void resetInnerStatus() {
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public void setIgnoreHideKeyboardAnim(boolean z10) {
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public void setWindowType(int i10) {
        this.mWindowType = i10;
    }
}
