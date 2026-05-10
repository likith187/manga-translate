package com.coui.appcompat.panel;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.AbsListView;
import android.widget.ScrollView;
import androidx.core.view.f0;
import com.coui.appcompat.animation.COUIInEaseInterpolator;
import com.coui.appcompat.buttonBar.COUIButtonBarLayout;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.appcompat.R$id;
import com.support.panel.R$bool;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class COUIPanelAdjustResizeHelperBeforeR extends COUIAbsPanelAdjustResizeHelper {
    private static final float DISMISS_HEIGHT_ANIM_DURATION_COEFFICIENT = 50.0f;
    private static final float DISMISS_HEIGHT_ANIM_DURATION_INITIAL_VALUE = 200.0f;
    private static final int IME_ADJUST = 1;
    private static final int IME_HIDE = 2;
    private static final int IME_SHOW = 0;
    private static final float SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT = 120.0f;
    private static final float SHOW_HEIGHT_ANIM_DURATION_INITIAL_VALUE = 300.0f;
    private ValueAnimator mBottomButtonBarAnim;
    private int mMarginBottomValue;
    private ValueAnimator mPaddingBottomAnim;
    private WeakReference<View> mPaddingBottomAnimView;
    private int mPaddingBottomOffset;
    private float mTranslateOffset;
    private static final Interpolator SHOW_HEIGHT_ANIM_INTERPOLATOR = new COUIInEaseInterpolator();
    private static final Interpolator DISMISS_HEIGHT_ANIM_INTERPOLATOR = new LinearInterpolator();
    private int mWindowType = 2;
    private int mAdjustResizeType = 2;
    private int mAdjustKeyboardStartHeight = 0;
    private int mAdjustKeyboardHeight = 0;
    private int mAdjustKeyboardOffset = 0;
    private int mFocusViewRawY = 0;
    private boolean mIsIgnoreHideKeyboardAnim = true;
    private boolean mIsKeyboardShow = false;
    private boolean mIsFocusViewDisplayInVerticalScrolledView = false;
    private View mFocusVerticalScrolledView = null;

    private void adjustResizeBeforeR(ViewGroup viewGroup, boolean z10, int i10) {
        updateAdjustKeyboardType(z10);
        updateAdjustKeyboardData(viewGroup, i10);
        updateAdjustKeyboardOffset(viewGroup, Boolean.valueOf(z10));
        doAdjustKeyboardAnim(viewGroup, z10);
        this.mIsIgnoreHideKeyboardAnim = false;
    }

    private void doAdjustKeyboardAnim(ViewGroup viewGroup, boolean z10) {
        if (viewGroup == null || this.mPaddingBottomAnimView == null) {
            return;
        }
        if (!(viewGroup instanceof COUIPanelContentLayout)) {
            int screenHeightRealSize = UIUtil.getScreenHeightRealSize(viewGroup.getContext());
            doMarginBottomAnim(viewGroup, this.mMarginBottomValue, (long) (z10 ? Math.abs((this.mAdjustKeyboardOffset * SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT) / screenHeightRealSize) + SHOW_HEIGHT_ANIM_DURATION_INITIAL_VALUE : Math.abs((this.mAdjustKeyboardOffset * 50.0f) / screenHeightRealSize) + 200.0f));
            return;
        }
        COUIPanelContentLayout cOUIPanelContentLayout = (COUIPanelContentLayout) viewGroup;
        int maxHeight = cOUIPanelContentLayout.getMaxHeight();
        long jAbs = (long) (z10 ? Math.abs((this.mAdjustKeyboardOffset * SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT) / maxHeight) + SHOW_HEIGHT_ANIM_DURATION_INITIAL_VALUE : Math.abs((this.mAdjustKeyboardOffset * 50.0f) / maxHeight) + 200.0f);
        doPaddingBottomAnim(this.mPaddingBottomAnimView.get(), this.mPaddingBottomOffset, jAbs);
        doBottomButtonTranslateAnim(cOUIPanelContentLayout, this.mTranslateOffset, jAbs);
    }

    private void doBottomButtonTranslateAnim(final COUIPanelContentLayout cOUIPanelContentLayout, float f10, long j10) {
        if (f10 == 0.0f || cOUIPanelContentLayout == null || cOUIPanelContentLayout.getBtnBarLayout() == null) {
            return;
        }
        float translationY = cOUIPanelContentLayout.getBtnBarLayout().getTranslationY();
        final float fMin = Math.min(0.0f, f10 + translationY);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(translationY, fMin);
        this.mBottomButtonBarAnim = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(j10);
        if (translationY < fMin) {
            this.mBottomButtonBarAnim.setInterpolator(SHOW_HEIGHT_ANIM_INTERPOLATOR);
        } else {
            this.mBottomButtonBarAnim.setInterpolator(DISMISS_HEIGHT_ANIM_INTERPOLATOR);
        }
        this.mBottomButtonBarAnim.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.panel.COUIPanelAdjustResizeHelperBeforeR.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                cOUIPanelContentLayout.getBtnBarLayout().setTranslationY(fMin);
                cOUIPanelContentLayout.getDivider().setTranslationY(fMin);
            }
        });
        this.mBottomButtonBarAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.COUIPanelAdjustResizeHelperBeforeR.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (cOUIPanelContentLayout.isAttachedToWindow()) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    cOUIPanelContentLayout.getBtnBarLayout().setTranslationY(fFloatValue);
                    cOUIPanelContentLayout.getDivider().setTranslationY(fFloatValue);
                }
            }
        });
        this.mBottomButtonBarAnim.start();
    }

    private void doMarginBottomAnim(final View view, int i10, long j10) {
        if (i10 == 0 || view == null) {
            return;
        }
        int iMax = Math.max(0, COUIViewMarginUtil.getMargin(view, 3));
        final int iMax2 = Math.max(0, i10 + iMax);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(iMax, iMax2);
        valueAnimatorOfInt.setDuration(j10);
        if (iMax < iMax2) {
            valueAnimatorOfInt.setInterpolator(SHOW_HEIGHT_ANIM_INTERPOLATOR);
        } else {
            valueAnimatorOfInt.setInterpolator(DISMISS_HEIGHT_ANIM_INTERPOLATOR);
        }
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.panel.COUIPanelAdjustResizeHelperBeforeR.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                COUIViewMarginUtil.setMargin(view, iMax2, 3);
            }
        });
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.COUIPanelAdjustResizeHelperBeforeR.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (view.isAttachedToWindow()) {
                    COUIViewMarginUtil.setMargin(view, ((Integer) valueAnimator.getAnimatedValue()).intValue(), 3);
                }
            }
        });
        valueAnimatorOfInt.start();
    }

    private void doPaddingBottomAnim(final View view, int i10, long j10) {
        if (i10 == 0 || view == null) {
            return;
        }
        final int paddingLeft = view.getPaddingLeft();
        final int paddingRight = view.getPaddingRight();
        final int paddingTop = view.getPaddingTop();
        int iMax = Math.max(0, view.getPaddingBottom());
        final int iMax2 = Math.max(0, i10 + iMax);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(iMax, iMax2);
        this.mPaddingBottomAnim = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(j10);
        if (iMax < iMax2) {
            this.mPaddingBottomAnim.setInterpolator(SHOW_HEIGHT_ANIM_INTERPOLATOR);
        } else {
            this.mPaddingBottomAnim.setInterpolator(DISMISS_HEIGHT_ANIM_INTERPOLATOR);
        }
        this.mPaddingBottomAnim.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.panel.COUIPanelAdjustResizeHelperBeforeR.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setPadding(paddingLeft, paddingTop, paddingRight, iMax2);
            }
        });
        this.mPaddingBottomAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.COUIPanelAdjustResizeHelperBeforeR.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (view.isAttachedToWindow()) {
                    view.setPadding(paddingLeft, paddingTop, paddingRight, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            }
        });
        this.mPaddingBottomAnim.start();
    }

    private void findFocusView(ViewGroup viewGroup) {
        View viewFindFocus;
        if (viewGroup == null || (viewFindFocus = viewGroup.findFocus()) == null) {
            return;
        }
        this.mFocusViewRawY = 0;
        this.mIsFocusViewDisplayInVerticalScrolledView = false;
        this.mFocusVerticalScrolledView = null;
        if (isScrollable(viewFindFocus)) {
            this.mIsFocusViewDisplayInVerticalScrolledView = true;
            this.mFocusVerticalScrolledView = viewFindFocus;
        }
        this.mFocusViewRawY = getMeasureHeight(viewFindFocus) + viewFindFocus.getTop() + COUIViewMarginUtil.getMargin(viewFindFocus, 3);
        for (View view = (View) viewFindFocus.getParent(); view != null && view != viewGroup.getParent(); view = (View) view.getParent()) {
            if (isScrollable(view)) {
                this.mIsFocusViewDisplayInVerticalScrolledView = true;
                this.mFocusVerticalScrolledView = view;
            }
            this.mFocusViewRawY += view.getTop();
        }
    }

    private int getKeyboardHeightBeforeR(int i10, int i11) {
        return this.mWindowType == 2038 ? i10 : i10 - i11;
    }

    private int getMeasureHeight(View view) {
        if (view == null || view.getVisibility() == 8) {
            return 0;
        }
        int measuredHeight = view.getMeasuredHeight();
        if (measuredHeight != 0) {
            return measuredHeight;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(view.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        return view.getMeasuredHeight();
    }

    private boolean isScrollable(View view) {
        return (view instanceof ScrollView) || (view instanceof AbsListView) || (view instanceof f0);
    }

    private boolean updateAdjustKeyboardData(ViewGroup viewGroup, int i10) {
        if (viewGroup == null) {
            return false;
        }
        releaseData();
        if (viewGroup instanceof COUIPanelContentLayout) {
            COUIPanelContentLayout cOUIPanelContentLayout = (COUIPanelContentLayout) viewGroup;
            viewGroup.measure(View.MeasureSpec.makeMeasureSpec(viewGroup.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(cOUIPanelContentLayout.getMaxHeight(), cOUIPanelContentLayout.getLayoutAtMaxHeight() ? 1073741824 : Integer.MIN_VALUE));
            findFocusView(viewGroup);
        }
        int measuredHeight = viewGroup.getMeasuredHeight();
        this.mAdjustKeyboardStartHeight = measuredHeight;
        int i11 = this.mAdjustResizeType;
        if (i11 == 0) {
            this.mAdjustKeyboardHeight = i10;
            this.mAdjustKeyboardOffset = i10;
        } else if (i11 == 1) {
            this.mAdjustKeyboardStartHeight = measuredHeight - i10;
            this.mAdjustKeyboardOffset = i10 - this.mAdjustKeyboardHeight;
            this.mAdjustKeyboardHeight = i10;
        } else if (i11 == 2 && !this.mIsIgnoreHideKeyboardAnim) {
            this.mAdjustKeyboardHeight = i10;
            this.mAdjustKeyboardOffset = i10;
        }
        return true;
    }

    private void updateAdjustKeyboardOffset(ViewGroup viewGroup, Boolean bool) {
        this.mPaddingBottomAnimView = null;
        this.mPaddingBottomOffset = 0;
        this.mTranslateOffset = 0.0f;
        this.mMarginBottomValue = 0;
        if (viewGroup == null || this.mAdjustKeyboardOffset == 0) {
            return;
        }
        if (viewGroup instanceof COUIPanelContentLayout) {
            updateOffsetInConstraintLayout((COUIPanelContentLayout) viewGroup, bool);
        } else {
            updateOffsetInNormalLayout(viewGroup, bool);
        }
    }

    private void updateAdjustKeyboardType(boolean z10) {
        this.mAdjustResizeType = 2;
        boolean z11 = this.mIsKeyboardShow;
        if (!z11 && z10) {
            this.mAdjustResizeType = 0;
        } else if (z11 && z10) {
            this.mAdjustResizeType = 1;
        }
        this.mIsKeyboardShow = z10;
    }

    private void updateOffsetInConstraintLayout(COUIPanelContentLayout cOUIPanelContentLayout, Boolean bool) {
        int i10 = this.mAdjustResizeType == 2 ? -1 : 1;
        int maxHeight = cOUIPanelContentLayout.getMaxHeight();
        int i11 = this.mAdjustKeyboardOffset * i10;
        float translationY = cOUIPanelContentLayout.getBtnBarLayout() != null ? cOUIPanelContentLayout.getBtnBarLayout().getTranslationY() : 0.0f;
        this.mPaddingBottomAnimView = new WeakReference<>(cOUIPanelContentLayout);
        if ((this.mIsFocusViewDisplayInVerticalScrolledView && maxHeight != 0) || (!COUIPanelMultiWindowUtils.isPortrait(cOUIPanelContentLayout.getContext()) && translationY == 0.0f)) {
            View view = this.mFocusVerticalScrolledView;
            if (view != null) {
                View view2 = (View) view.getParent();
                if (view2 != null) {
                    this.mPaddingBottomAnimView = new WeakReference<>(view2);
                }
                this.mTranslateOffset = -i11;
            }
            this.mPaddingBottomOffset = i11;
            return;
        }
        int i12 = this.mAdjustKeyboardStartHeight - this.mFocusViewRawY;
        int paddingBottom = cOUIPanelContentLayout.getPaddingBottom();
        int height = cOUIPanelContentLayout.getBtnBarLayout() != null ? cOUIPanelContentLayout.getBtnBarLayout().getHeight() : 0;
        int height2 = cOUIPanelContentLayout.getDivider() != null ? cOUIPanelContentLayout.getDivider().getHeight() : 0;
        int i13 = this.mAdjustResizeType;
        if (i13 == 1) {
            i12 += this.mAdjustKeyboardHeight;
        } else if (i13 == 2) {
            i12 -= this.mAdjustKeyboardHeight;
        }
        int i14 = this.mAdjustKeyboardHeight;
        if (i12 >= i14 + height + height2 && paddingBottom == 0) {
            this.mTranslateOffset = -i11;
            return;
        }
        int i15 = i10 * (((i14 + height) + height2) - i12);
        this.mPaddingBottomOffset = Math.max(-paddingBottom, i15);
        if (this.mAdjustResizeType != 1) {
            this.mTranslateOffset = bool.booleanValue() ? -(i11 - r2) : -translationY;
            return;
        }
        int iMax = Math.max(0, paddingBottom + i15);
        int i16 = this.mAdjustKeyboardHeight;
        this.mTranslateOffset = (-Math.min(i16, Math.max(-i16, i16 - iMax))) - translationY;
    }

    private void updateOffsetInNormalLayout(ViewGroup viewGroup, Boolean bool) {
        int i10 = (this.mAdjustResizeType == 2 ? -1 : 1) * this.mAdjustKeyboardOffset;
        this.mPaddingBottomAnimView = new WeakReference<>(viewGroup);
        this.mMarginBottomValue = i10;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public void adjustResize(Context context, ViewGroup viewGroup, WindowInsets windowInsets, View view, boolean z10) {
        if (viewGroup == null) {
            return;
        }
        int keyboardHeightBeforeR = getKeyboardHeightBeforeR(windowInsets.getSystemWindowInsetBottom(), (!COUINavigationBarUtil.isNavigationBarShow(context) || context.getResources().getBoolean(R$bool.is_ignore_nav_height_in_panel_ime_adjust)) ? 0 : COUINavigationBarUtil.getNavigationBarHeight(context));
        if (keyboardHeightBeforeR > 0) {
            adjustResizeBeforeR(viewGroup, true, keyboardHeightBeforeR);
            return;
        }
        if (this.mAdjustResizeType != 2) {
            adjustResizeBeforeR(viewGroup, false, this.mAdjustKeyboardHeight);
        }
        View viewFindViewById = view.findViewById(R$id.design_bottom_sheet);
        int panelMarginBottom = COUIPanelMultiWindowUtils.getPanelMarginBottom(viewGroup.getContext(), viewGroup.getContext().getResources().getConfiguration(), windowInsets, viewFindViewById instanceof COUIPanelPercentFrameLayout ? ((COUIPanelPercentFrameLayout) viewFindViewById).isIsHandlePanel() : false);
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = panelMarginBottom;
            viewGroup.setLayoutParams(layoutParams);
        }
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public int getMarginBottomValue() {
        return this.mMarginBottomValue;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public int getPaddingBottomOffset() {
        return this.mPaddingBottomOffset;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public float getTranslateOffset() {
        return this.mTranslateOffset;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public int getWindowType() {
        return this.mWindowType;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public void recoveryScrollingParentViewPaddingBottom(COUIPanelContentLayout cOUIPanelContentLayout) {
        if (cOUIPanelContentLayout != null) {
            COUIButtonBarLayout btnBarLayout = cOUIPanelContentLayout.getBtnBarLayout();
            View divider = cOUIPanelContentLayout.getDivider();
            if (btnBarLayout != null) {
                btnBarLayout.setTranslationY(0.0f);
            }
            if (divider != null) {
                divider.setTranslationY(0.0f);
            }
            cOUIPanelContentLayout.setPadding(0, 0, 0, 0);
        }
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public boolean releaseData() {
        ValueAnimator valueAnimator = this.mPaddingBottomAnim;
        boolean z10 = false;
        if (valueAnimator != null) {
            if (valueAnimator.isRunning()) {
                this.mPaddingBottomAnim.cancel();
                z10 = true;
            }
            this.mPaddingBottomAnim = null;
        }
        ValueAnimator valueAnimator2 = this.mBottomButtonBarAnim;
        if (valueAnimator2 != null) {
            if (valueAnimator2.isRunning()) {
                this.mBottomButtonBarAnim.cancel();
            }
            this.mBottomButtonBarAnim = null;
        }
        return z10;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public void resetInnerStatus() {
        this.mAdjustKeyboardHeight = 0;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public void setIgnoreHideKeyboardAnim(boolean z10) {
        this.mIsIgnoreHideKeyboardAnim = z10;
    }

    @Override // com.coui.appcompat.panel.COUIAbsPanelAdjustResizeHelper
    public void setWindowType(int i10) {
        this.mWindowType = i10;
    }
}
