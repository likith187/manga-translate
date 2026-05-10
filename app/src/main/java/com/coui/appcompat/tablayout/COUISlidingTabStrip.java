package com.coui.appcompat.tablayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Paint;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.m0;
import com.coui.appcompat.animation.COUIEaseInterpolator;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.tablayout.R$dimen;

/* JADX INFO: loaded from: classes.dex */
public class COUISlidingTabStrip extends LinearLayout {
    private final Paint mBottomDividerPaint;
    private COUITabLayout mCOUITabLayout;
    private int mContentMinWidth;
    private int mHorizontalLargeMargin;
    private int mHorizontalMediumMargin;
    private int mHorizontalSmallMargin;
    private int mIndicatorAnimTime;
    private ValueAnimator mIndicatorAnimator;
    private int mIndicatorBackgroundHeight;
    private int mIndicatorBackgroundPaddingLeft;
    private int mIndicatorBackgroundPaddingRight;
    private final Paint mIndicatorBackgroundPaint;
    private int mIndicatorLeft;
    private int mIndicatorRight;
    private float mIndicatorWidthRatio;
    float mLastOffset;
    private int mLastPosition;
    float mLastSelectionOffset;
    private int mLayoutDirection;
    protected int mSelectedIndicatorHeight;
    private final Paint mSelectedIndicatorPaint;
    int mSelectedPosition;
    float mSelectionOffset;
    private int mTabMediumSpacing;
    private int mTabSmallSpacing;

    /* JADX INFO: renamed from: com.coui.appcompat.tablayout.COUISlidingTabStrip$1 */
    class AnonymousClass1 implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ int val$curStartColor;
        final /* synthetic */ COUITabView val$curTabView;
        final /* synthetic */ ArgbEvaluator val$evaluator;
        final /* synthetic */ int val$leftDiff;
        final /* synthetic */ int val$nextStartColor;
        final /* synthetic */ TextView val$nextView;
        final /* synthetic */ int val$startLeft;
        final /* synthetic */ int val$startRight;
        final /* synthetic */ int val$targetLeft;
        final /* synthetic */ int val$targetRight;
        final /* synthetic */ int val$widthDiff;

        AnonymousClass1(TextView textView, ArgbEvaluator argbEvaluator, int i10, COUITabView cOUITabView, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            textView = textView;
            argbEvaluator = argbEvaluator;
            i = i10;
            cOUITabView = cOUITabView;
            i = i11;
            i = i12;
            i = i13;
            i = i14;
            i = i15;
            i = i16;
            i = i17;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int i10;
            int i11;
            float animatedFraction = valueAnimator.getAnimatedFraction();
            textView.setTextColor(((Integer) argbEvaluator.evaluate(animatedFraction, Integer.valueOf(i), Integer.valueOf(COUISlidingTabStrip.this.mCOUITabLayout.mSelectedTextColor))).intValue());
            COUITabView cOUITabView = cOUITabView;
            if (cOUITabView != null && cOUITabView.getTextView() != null) {
                cOUITabView.getTextView().setTextColor(((Integer) argbEvaluator.evaluate(animatedFraction, Integer.valueOf(i), Integer.valueOf(COUISlidingTabStrip.this.mCOUITabLayout.mNormalTextColor))).intValue());
            }
            COUISlidingTabStrip cOUISlidingTabStrip = COUISlidingTabStrip.this;
            if (cOUISlidingTabStrip.mLastOffset == 0.0f) {
                cOUISlidingTabStrip.mLastOffset = animatedFraction;
            }
            if (animatedFraction - cOUISlidingTabStrip.mLastOffset > 0.0f) {
                int i12 = i;
                i10 = (int) ((i12 - r2) + (i * animatedFraction));
                i11 = (int) (i + (i * animatedFraction));
            } else {
                int i13 = i;
                float f10 = 1.0f - animatedFraction;
                i10 = (int) ((i13 - r2) - (i * f10));
                i11 = (int) (i - (i * f10));
            }
            cOUISlidingTabStrip.setIndicatorPosition(i11, i10 + i11);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.tablayout.COUISlidingTabStrip$2 */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        final /* synthetic */ int val$position;

        AnonymousClass2(int i10) {
            i = i10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            COUISlidingTabStrip cOUISlidingTabStrip = COUISlidingTabStrip.this;
            cOUISlidingTabStrip.mSelectedPosition = i;
            cOUISlidingTabStrip.mSelectionOffset = 0.0f;
            cOUISlidingTabStrip.updateIndicatorPosition();
            COUISlidingTabStrip.this.mCOUITabLayout.resetTextColorAfterAnim();
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.tablayout.COUISlidingTabStrip$3 */
    class AnonymousClass3 implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ int val$startLeft;
        final /* synthetic */ int val$startRight;
        final /* synthetic */ int val$targetLeft;
        final /* synthetic */ int val$targetRight;

        AnonymousClass3(int i10, int i11, int i12, int i13) {
            i = i10;
            i = i11;
            i = i12;
            i = i13;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            COUISlidingTabStrip.this.setIndicatorPosition(COUIAnimationUtils.lerp(i, i, animatedFraction), COUIAnimationUtils.lerp(i, i, animatedFraction));
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.tablayout.COUISlidingTabStrip$4 */
    class AnonymousClass4 extends AnimatorListenerAdapter {
        final /* synthetic */ COUITabView val$curTabView;
        final /* synthetic */ int val$position;
        final /* synthetic */ COUITabView val$tabView;

        AnonymousClass4(int i10, COUITabView cOUITabView, COUITabView cOUITabView2) {
            i = i10;
            cOUITabView = cOUITabView;
            cOUITabView = cOUITabView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            COUISlidingTabStrip cOUISlidingTabStrip = COUISlidingTabStrip.this;
            cOUISlidingTabStrip.mSelectedPosition = i;
            cOUISlidingTabStrip.mSelectionOffset = 0.0f;
            if (cOUITabView.getTextView() != null) {
                cOUITabView.getTextView().setTextColor(COUISlidingTabStrip.this.mCOUITabLayout.mSelectedTextColor);
            }
            if (cOUITabView.getTextView() != null) {
                cOUITabView.getTextView().setTextColor(COUISlidingTabStrip.this.mCOUITabLayout.mNormalTextColor);
            }
        }
    }

    COUISlidingTabStrip(Context context, COUITabLayout cOUITabLayout) {
        super(context);
        this.mSelectedPosition = -1;
        this.mLayoutDirection = -1;
        this.mIndicatorLeft = -1;
        this.mIndicatorRight = -1;
        this.mLastPosition = 0;
        this.mIndicatorAnimTime = -1;
        this.mCOUITabLayout = cOUITabLayout;
        setWillNotDraw(false);
        this.mSelectedIndicatorPaint = new Paint();
        this.mBottomDividerPaint = new Paint();
        this.mIndicatorBackgroundPaint = new Paint();
        setGravity(17);
        this.mHorizontalLargeMargin = getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_large_horizontal_margin);
        this.mHorizontalMediumMargin = getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_medium_horizontal_margin);
        this.mHorizontalSmallMargin = getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_small_horizontal_margin);
        this.mTabSmallSpacing = getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_small_tab_spacing);
        this.mTabMediumSpacing = getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_medium_tab_spacing);
        this.mContentMinWidth = getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_content_min_width);
    }

    private int getIndicatorLeft(int i10) {
        int width = ((this.mCOUITabLayout.getWidth() - this.mCOUITabLayout.getPaddingLeft()) - this.mCOUITabLayout.getPaddingRight()) - getWidth();
        return (!isLayoutRTL() || width <= 0) ? i10 : i10 + width;
    }

    private int getIndicatorRight(int i10) {
        int width = ((this.mCOUITabLayout.getWidth() - this.mCOUITabLayout.getPaddingLeft()) - this.mCOUITabLayout.getPaddingRight()) - getWidth();
        return (!isLayoutRTL() || width <= 0) ? i10 : i10 + width;
    }

    private boolean isLayoutRTL() {
        return m0.v(this) == 1;
    }

    private void measureChildWithRedDot(COUITabView cOUITabView, int i10, int i11) {
        if (cOUITabView.getTextView() != null) {
            cOUITabView.getTextView().getLayoutParams().width = -2;
        }
        if (cOUITabView.getTextView() == null || cOUITabView.getHintRedDot() == null || cOUITabView.getHintRedDot().getVisibility() == 8) {
            cOUITabView.measure(i10, i11);
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) cOUITabView.getHintRedDot().getLayoutParams();
        layoutParams.gravity = 48;
        if (cOUITabView.getHintRedDot().getPointMode() == 0) {
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
            cOUITabView.measure(i10, i11);
            return;
        }
        if (isLayoutRTL()) {
            layoutParams.rightMargin = this.mCOUITabLayout.mDotHorizontalOffset;
        } else {
            layoutParams.leftMargin = this.mCOUITabLayout.mDotHorizontalOffset;
        }
        if (cOUITabView.getHintRedDot().getPointMode() == 2) {
            layoutParams.topMargin = this.mCOUITabLayout.mDotVerticalOffsetFromNumberRed;
        } else {
            layoutParams.topMargin = this.mCOUITabLayout.mDotVerticalOffsetFromOnlyRed;
        }
        cOUITabView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), i11);
        if (cOUITabView.getMeasuredWidth() > this.mCOUITabLayout.mRequestedTabMaxWidth) {
            cOUITabView.getTextView().getLayoutParams().width = ((this.mCOUITabLayout.mRequestedTabMaxWidth - cOUITabView.getHintRedDot().getMeasuredWidth()) - layoutParams.getMarginStart()) + layoutParams.getMarginEnd();
            cOUITabView.measure(i10, i11);
        }
    }

    private void measureShortChild(int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int i14 = ((i10 - i11) - (i12 * childCount)) / 2;
        int i15 = i12 / 2;
        setLayoutPadding(i14, i14);
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            setMargin(childAt, i15, i15, childAt.getMeasuredWidth());
        }
    }

    private void measureSmallChild(int i10, int i11, int i12) {
        int iMax;
        int i13;
        int childCount = getChildCount();
        int i14 = this.mContentMinWidth;
        if (i10 >= i14) {
            iMax = Math.max((i14 - i11) / (childCount + 1), i12);
            i13 = ((i10 - this.mContentMinWidth) + iMax) / 2;
        } else {
            iMax = Math.max((i10 - i11) / (childCount + 1), i12);
            i13 = iMax / 2;
        }
        int i15 = iMax / 2;
        setLayoutPadding(i13, i13);
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            setMargin(childAt, i15, i15, childAt.getMeasuredWidth());
        }
    }

    private int parseMinDivider(int i10) {
        if (i10 != -1) {
            return i10;
        }
        int measuredWidth = ((COUITabLayout) getParent()).getMeasuredWidth();
        int measuredHeight = ((COUITabLayout) getParent()).getMeasuredHeight();
        return (COUIResponsiveUtils.isMediumScreen(getContext(), measuredWidth, measuredHeight) || COUIResponsiveUtils.isLargeScreen(getContext(), measuredWidth, measuredHeight)) ? this.mTabMediumSpacing : this.mTabSmallSpacing;
    }

    private int parseMinMargin(int i10) {
        if (i10 != -1) {
            return i10;
        }
        int measuredWidth = ((COUITabLayout) getParent()).getMeasuredWidth();
        return COUIResponsiveUtils.isLargeScreen(getContext(), measuredWidth, UIUtil.getScreenHeightMetrics(getContext())) ? this.mHorizontalLargeMargin : COUIResponsiveUtils.isMediumScreen(getContext(), measuredWidth, UIUtil.getScreenHeightMetrics(getContext())) ? this.mHorizontalMediumMargin : this.mHorizontalSmallMargin;
    }

    private void setLayoutPadding(int i10, int i11) {
        if (getParent() == null || !(getParent() instanceof COUITabLayout)) {
            return;
        }
        ((COUITabLayout) getParent()).setPaddingLeftAndRight(i10, i11);
    }

    private void setMargin(View view, int i10, int i11, int i12) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = i12 + i11 + i10;
        view.setPaddingRelative(i10, view.getPaddingTop(), i11, view.getPaddingBottom());
        view.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
    }

    public void animateIndicatorToPosition(int i10, int i11) {
        boolean z10;
        COUISlidingTabStrip cOUISlidingTabStrip;
        int i12;
        int i13;
        ValueAnimator valueAnimator = this.mIndicatorAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            z10 = false;
        } else if (i10 != this.mLastPosition) {
            this.mIndicatorAnimator.end();
            z10 = false;
        } else {
            this.mIndicatorAnimator.cancel();
            z10 = true;
        }
        boolean z11 = m0.v(this) == 1;
        View childAt = getChildAt(i10);
        if (childAt == null) {
            updateIndicatorPosition();
            return;
        }
        COUITabView cOUITabView = (COUITabView) childAt;
        COUITabView cOUITabView2 = (COUITabView) getChildAt(this.mCOUITabLayout.getSelectedTabPosition());
        if (cOUITabView.getTextView() == null || cOUITabView.mCustomView != null) {
            cOUISlidingTabStrip = this;
            int indicatorLeft = cOUISlidingTabStrip.getIndicatorLeft(cOUITabView.getLeft() + cOUITabView.mCustomView.getLeft());
            int indicatorRight = cOUISlidingTabStrip.getIndicatorRight(cOUITabView.getLeft() + cOUITabView.mCustomView.getRight());
            if (Math.abs(i10 - cOUISlidingTabStrip.mSelectedPosition) <= 1) {
                i12 = cOUISlidingTabStrip.mIndicatorLeft;
                i13 = cOUISlidingTabStrip.mIndicatorRight;
            } else {
                int iDpToPx = cOUISlidingTabStrip.dpToPx(24);
                i12 = (i10 >= cOUISlidingTabStrip.mSelectedPosition ? !z11 : z11) ? indicatorLeft - iDpToPx : iDpToPx + indicatorRight;
                i13 = i12;
            }
            if (i12 != indicatorLeft || i13 != indicatorRight) {
                ValueAnimator valueAnimator2 = new ValueAnimator();
                cOUISlidingTabStrip.mIndicatorAnimator = valueAnimator2;
                valueAnimator2.setInterpolator(COUIAnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                valueAnimator2.setDuration(i11);
                valueAnimator2.setFloatValues(0.0f, 1.0f);
                valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.tablayout.COUISlidingTabStrip.3
                    final /* synthetic */ int val$startLeft;
                    final /* synthetic */ int val$startRight;
                    final /* synthetic */ int val$targetLeft;
                    final /* synthetic */ int val$targetRight;

                    AnonymousClass3(int i122, int indicatorLeft2, int i132, int indicatorRight2) {
                        i = i122;
                        i = indicatorLeft2;
                        i = i132;
                        i = indicatorRight2;
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        float animatedFraction = valueAnimator3.getAnimatedFraction();
                        COUISlidingTabStrip.this.setIndicatorPosition(COUIAnimationUtils.lerp(i, i, animatedFraction), COUIAnimationUtils.lerp(i, i, animatedFraction));
                    }
                });
                valueAnimator2.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.tablayout.COUISlidingTabStrip.4
                    final /* synthetic */ COUITabView val$curTabView;
                    final /* synthetic */ int val$position;
                    final /* synthetic */ COUITabView val$tabView;

                    AnonymousClass4(int i102, COUITabView cOUITabView3, COUITabView cOUITabView22) {
                        i = i102;
                        cOUITabView = cOUITabView3;
                        cOUITabView = cOUITabView22;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        COUISlidingTabStrip cOUISlidingTabStrip2 = COUISlidingTabStrip.this;
                        cOUISlidingTabStrip2.mSelectedPosition = i;
                        cOUISlidingTabStrip2.mSelectionOffset = 0.0f;
                        if (cOUITabView.getTextView() != null) {
                            cOUITabView.getTextView().setTextColor(COUISlidingTabStrip.this.mCOUITabLayout.mSelectedTextColor);
                        }
                        if (cOUITabView.getTextView() != null) {
                            cOUITabView.getTextView().setTextColor(COUISlidingTabStrip.this.mCOUITabLayout.mNormalTextColor);
                        }
                    }
                });
                valueAnimator2.start();
            }
        } else {
            TextView textView = cOUITabView3.getTextView();
            int i14 = this.mIndicatorLeft;
            int i15 = this.mIndicatorRight;
            int indicatorPadding = this.mCOUITabLayout.getIndicatorPadding();
            int indicatorLeft2 = getIndicatorLeft((cOUITabView3.getLeft() + textView.getLeft()) - indicatorPadding);
            int indicatorRight2 = getIndicatorRight(cOUITabView3.getLeft() + textView.getRight() + indicatorPadding);
            int i16 = (indicatorRight2 - indicatorLeft2) - (i15 - i14);
            int i17 = indicatorLeft2 - i14;
            int indicatorAnimTime = this.mCOUITabLayout.getIndicatorAnimTime(i102, this.mSelectedPosition);
            int i18 = this.mIndicatorAnimTime;
            if (i18 != -1) {
                indicatorAnimTime = i18;
            }
            ValueAnimator valueAnimator3 = new ValueAnimator();
            this.mIndicatorAnimator = valueAnimator3;
            valueAnimator3.setDuration(indicatorAnimTime);
            valueAnimator3.setInterpolator(new COUIEaseInterpolator());
            valueAnimator3.setIntValues(0, 1);
            valueAnimator3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.tablayout.COUISlidingTabStrip.1
                final /* synthetic */ int val$curStartColor;
                final /* synthetic */ COUITabView val$curTabView;
                final /* synthetic */ ArgbEvaluator val$evaluator;
                final /* synthetic */ int val$leftDiff;
                final /* synthetic */ int val$nextStartColor;
                final /* synthetic */ TextView val$nextView;
                final /* synthetic */ int val$startLeft;
                final /* synthetic */ int val$startRight;
                final /* synthetic */ int val$targetLeft;
                final /* synthetic */ int val$targetRight;
                final /* synthetic */ int val$widthDiff;

                AnonymousClass1(TextView textView2, ArgbEvaluator argbEvaluator, int i102, COUITabView cOUITabView22, int i112, int i152, int i142, int i162, int i172, int indicatorRight22, int indicatorLeft22) {
                    textView = textView2;
                    argbEvaluator = argbEvaluator;
                    i = i102;
                    cOUITabView = cOUITabView22;
                    i = i112;
                    i = i152;
                    i = i142;
                    i = i162;
                    i = i172;
                    i = indicatorRight22;
                    i = indicatorLeft22;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator4) {
                    int i102;
                    int i112;
                    float animatedFraction = valueAnimator4.getAnimatedFraction();
                    textView.setTextColor(((Integer) argbEvaluator.evaluate(animatedFraction, Integer.valueOf(i), Integer.valueOf(COUISlidingTabStrip.this.mCOUITabLayout.mSelectedTextColor))).intValue());
                    COUITabView cOUITabView3 = cOUITabView;
                    if (cOUITabView3 != null && cOUITabView3.getTextView() != null) {
                        cOUITabView.getTextView().setTextColor(((Integer) argbEvaluator.evaluate(animatedFraction, Integer.valueOf(i), Integer.valueOf(COUISlidingTabStrip.this.mCOUITabLayout.mNormalTextColor))).intValue());
                    }
                    COUISlidingTabStrip cOUISlidingTabStrip2 = COUISlidingTabStrip.this;
                    if (cOUISlidingTabStrip2.mLastOffset == 0.0f) {
                        cOUISlidingTabStrip2.mLastOffset = animatedFraction;
                    }
                    if (animatedFraction - cOUISlidingTabStrip2.mLastOffset > 0.0f) {
                        int i122 = i;
                        i102 = (int) ((i122 - r2) + (i * animatedFraction));
                        i112 = (int) (i + (i * animatedFraction));
                    } else {
                        int i132 = i;
                        float f10 = 1.0f - animatedFraction;
                        i102 = (int) ((i132 - r2) - (i * f10));
                        i112 = (int) (i - (i * f10));
                    }
                    cOUISlidingTabStrip2.setIndicatorPosition(i112, i102 + i112);
                }
            });
            cOUISlidingTabStrip = this;
            valueAnimator3.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.tablayout.COUISlidingTabStrip.2
                final /* synthetic */ int val$position;

                AnonymousClass2(int i102) {
                    i = i102;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    COUISlidingTabStrip cOUISlidingTabStrip2 = COUISlidingTabStrip.this;
                    cOUISlidingTabStrip2.mSelectedPosition = i;
                    cOUISlidingTabStrip2.mSelectionOffset = 0.0f;
                    cOUISlidingTabStrip2.updateIndicatorPosition();
                    COUISlidingTabStrip.this.mCOUITabLayout.resetTextColorAfterAnim();
                }
            });
            valueAnimator3.start();
        }
        cOUISlidingTabStrip.mLastPosition = cOUISlidingTabStrip.mCOUITabLayout.getSelectedTabPosition();
    }

    boolean childrenNeedLayout() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (getChildAt(i10).getWidth() <= 0) {
                return true;
            }
        }
        return false;
    }

    int dpToPx(int i10) {
        return Math.round(getResources().getDisplayMetrics().density * i10);
    }

    public Paint getBottomDividerPaint() {
        return this.mBottomDividerPaint;
    }

    public int getIndicatorAnimTime() {
        return this.mIndicatorAnimTime;
    }

    public int getIndicatorBackgroundHeight() {
        return this.mIndicatorBackgroundHeight;
    }

    public int getIndicatorBackgroundPaddingLeft() {
        return this.mIndicatorBackgroundPaddingLeft;
    }

    public int getIndicatorBackgroundPaddingRight() {
        return this.mIndicatorBackgroundPaddingRight;
    }

    public Paint getIndicatorBackgroundPaint() {
        return this.mIndicatorBackgroundPaint;
    }

    float getIndicatorPosition() {
        return this.mSelectedPosition + this.mSelectionOffset;
    }

    public float getIndicatorWidthRatio() {
        return this.mIndicatorWidthRatio;
    }

    public Paint getSelectedIndicatorPaint() {
        return this.mSelectedIndicatorPaint;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.mCOUITabLayout.isUpdateindicatorposition()) {
            updateIndicatorPosition();
        }
        if (this.mCOUITabLayout.mTabAlreadyMeasure) {
            return;
        }
        ValueAnimator valueAnimator = this.mIndicatorAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mIndicatorAnimator.cancel();
            animateIndicatorToPosition(this.mSelectedPosition, Math.round((1.0f - this.mIndicatorAnimator.getAnimatedFraction()) * this.mIndicatorAnimator.getDuration()));
        }
        COUITabLayout cOUITabLayout = this.mCOUITabLayout;
        cOUITabLayout.mTabAlreadyMeasure = true;
        cOUITabLayout.setScrollPosition(this.mSelectedPosition, 0.0f, true, true);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (View.MeasureSpec.getMode(i10) == 0) {
            return;
        }
        int size = View.MeasureSpec.getSize(i10);
        int childCount = getChildCount();
        if (childCount == 0) {
            super.onMeasure(i10, i11);
            return;
        }
        int minMargin = parseMinMargin(this.mCOUITabLayout.getTabMinMargin());
        int minDivider = parseMinDivider(this.mCOUITabLayout.getTabMinDivider());
        if (this.mCOUITabLayout.getTabMode() == 1) {
            this.mIndicatorWidthRatio = this.mCOUITabLayout.getDefaultIndicatoRatio();
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mCOUITabLayout.mRequestedTabMaxWidth, Integer.MIN_VALUE);
            int measuredWidth = 0;
            for (int i12 = 0; i12 < childCount; i12++) {
                COUITabView cOUITabView = (COUITabView) getChildAt(i12);
                setMargin(cOUITabView, 0, 0);
                measureChildWithRedDot(cOUITabView, iMakeMeasureSpec, i11);
                measuredWidth += cOUITabView.getMeasuredWidth();
            }
            int i13 = (minMargin * 2) + measuredWidth + ((childCount - 1) * minDivider);
            if (i13 <= this.mContentMinWidth) {
                measureSmallChild(size, measuredWidth, minDivider);
            } else if (i13 <= size) {
                measureShortChild(size, measuredWidth, minDivider, minMargin);
            } else {
                int i14 = minDivider / 2;
                int i15 = minMargin - i14;
                setLayoutPadding(i15, i15);
                for (int i16 = 0; i16 < childCount; i16++) {
                    View childAt = getChildAt(i16);
                    setMargin(childAt, i14, i14, childAt.getMeasuredWidth());
                }
            }
        } else {
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.mCOUITabLayout.mRequestedTabMaxWidth, Integer.MIN_VALUE);
            int i17 = minDivider / 2;
            int i18 = minMargin - i17;
            setLayoutPadding(i18, i18);
            for (int i19 = 0; i19 < childCount; i19++) {
                View childAt2 = getChildAt(i19);
                setMargin(childAt2, 0, 0);
                measureChildWithRedDot((COUITabView) childAt2, iMakeMeasureSpec2, i11);
                setMargin(childAt2, i17, i17, childAt2.getMeasuredWidth());
            }
        }
        int measuredWidth2 = 0;
        for (int i20 = 0; i20 < childCount; i20++) {
            measuredWidth2 += getChildAt(i20).getMeasuredWidth();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824), i11);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
    }

    void setBottomDividerColor(int i10) {
        this.mBottomDividerPaint.setColor(i10);
        m0.Z(this.mCOUITabLayout);
    }

    public void setIndicatorAnimTime(int i10) {
        this.mIndicatorAnimTime = i10;
    }

    public void setIndicatorBackgroundHeight(int i10) {
        this.mIndicatorBackgroundHeight = i10;
    }

    public void setIndicatorBackgroundPaddingLeft(int i10) {
        this.mIndicatorBackgroundPaddingLeft = i10;
    }

    public void setIndicatorBackgroundPaddingRight(int i10) {
        this.mIndicatorBackgroundPaddingRight = i10;
    }

    public void setIndicatorLeft(int i10) {
        this.mIndicatorLeft = i10;
    }

    public void setIndicatorPosition(int i10, int i11) {
        int i12 = (i10 + i11) / 2;
        int iMax = Math.max(i11 - i10, dpToPx(32)) / 2;
        int i13 = i12 - iMax;
        int i14 = i12 + iMax;
        if (i13 == this.mIndicatorLeft && i14 == this.mIndicatorRight) {
            return;
        }
        this.mIndicatorLeft = i13;
        this.mIndicatorRight = i14;
        m0.Z(this.mCOUITabLayout);
    }

    void setIndicatorPositionFromTabPosition(int i10, float f10) {
        ValueAnimator valueAnimator = this.mIndicatorAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mIndicatorAnimator.cancel();
        }
        this.mSelectedPosition = i10;
        this.mSelectionOffset = f10;
        updateIndicatorPosition();
    }

    public void setIndicatorRight(int i10) {
        this.mIndicatorRight = i10;
    }

    public void setIndicatorWidthRatio(float f10) {
        this.mIndicatorWidthRatio = f10;
    }

    void setSelectedIndicatorColor(int i10) {
        this.mSelectedIndicatorPaint.setColor(i10);
        m0.Z(this.mCOUITabLayout);
    }

    void setSelectedIndicatorHeight(int i10) {
        if (this.mSelectedIndicatorHeight != i10) {
            this.mSelectedIndicatorHeight = i10;
            m0.Z(this.mCOUITabLayout);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:145:0x01dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void updateIndicatorPosition() {
        /*
            Method dump skipped, instruction units count: 482
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.tablayout.COUISlidingTabStrip.updateIndicatorPosition():void");
    }

    public int getIndicatorLeft() {
        return this.mIndicatorLeft;
    }

    public int getIndicatorRight() {
        return this.mIndicatorRight;
    }

    private void setMargin(View view, int i10, int i11) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        m0.z0(view, 0, view.getPaddingTop(), 0, view.getPaddingBottom());
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(i11);
    }
}
