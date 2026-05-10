package com.coui.appcompat.panel;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.dynamicanimation.animation.c;
import com.coui.appcompat.animation.COUIEaseInterpolator;
import com.coui.appcompat.animation.COUIInEaseInterpolator;
import com.coui.appcompat.animation.COUIOutEaseInterpolator;
import com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringForce;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.edittext.COUIInputView;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.panel.COUIBottomSheetBehavior;
import com.coui.appcompat.theme.COUIThemeOverlay;
import com.coui.appcompat.uiutil.ShadowUtils;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.appcompat.version.COUIVersionUtil;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.dynamicframerate.AnimationVelocityCalculator;
import com.oplus.dynamicframerate.DynamicFrameRateManager;
import com.support.appcompat.R$attr;
import com.support.dialog.R$dimen;
import com.support.panel.R$bool;
import com.support.panel.R$color;
import com.support.panel.R$drawable;
import com.support.panel.R$id;
import com.support.panel.R$layout;
import com.support.panel.R$style;
import com.support.panel.R$styleable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import u2.h;
import u2.j;

/* JADX INFO: loaded from: classes.dex */
public class COUIBottomSheetDialog extends com.google.android.material.bottomsheet.a implements c.r, c.q {
    private static final float ALPHA_OPAQUE = 1.0f;
    private static final float ALPHA_TRANSPARENT = 0.0f;
    private static final int ANIMATION_TYPE_DIALOG_ALPHA = 8;
    public static final int ANIMATION_TYPE_ID = 10101;
    private static final int ANIMATION_TYPE_OUTSIDE_ALPHA = 2;
    private static final int ANIMATION_TYPE_SCALE = 4;
    private static final int ANIMATION_TYPE_TRANSLATION = 1;
    private static final boolean DEBUG;
    private static final float DEFAULT_ALPHA_HIDE_SPRING_RESPONSE = 0.25f;
    private static final float DEFAULT_ALPHA_HIDING_ANIMATOR_DURATION = 183.0f;
    private static final float DEFAULT_ALPHA_SHOW_SPRING_RESPONSE = 0.3f;
    private static final float DEFAULT_CENTER_HIDE_SPRING_RESPONSE = 0.3f;
    private static final float DEFAULT_CENTER_SHOW_SPRING_RESPONSE = 0.3f;
    private static final float DEFAULT_SPRING_DAMPING_RATIO = 0.7f;
    private static final int DEFAULT_SPRING_FACTOR = 10000;
    private static final float DEFAULT_SPRING_STIFFNESS = 200.0f;
    private static final float DEFAULT_TRANSLATE_HIDING_ANIMATOR_DURATION = 333.0f;
    private static final float DEFAULT_TRANSLATION_HIDE_SPRING_RESPONSE_LARGE = 0.3f;
    private static final float DEFAULT_TRANSLATION_HIDE_SPRING_RESPONSE_SMALL = 0.25f;
    private static final float DEFAULT_TRANSLATION_SHOW_SPRING_RESPONSE_LARGE = 0.35f;
    private static final float DEFAULT_TRANSLATION_SHOW_SPRING_RESPONSE_SMALL = 0.3f;
    private static final float DEFAULT_TRANSLATION_SPRING_BOUNCE = 0.0f;
    private static final float DIALOG_SHOW_SCALE_DELTA = 0.2f;
    private static final float DIALOG_SHOW_SCALE_START = 0.8f;
    private static final Interpolator DISMISS_ALPHA_ANIM_INTERPOLATOR;
    private static final float ELEVATION_VALUE = 24.0f;
    private static final int FINAL_POSITION = 100;
    private static final float FLOAT_ONE = 1.0f;
    private static final float FLOAT_POINT_FIVE = 0.5f;
    private static final int HUNDRED = 100;
    private static final int INT_TWO = 2;
    private static final long NAV_COLOR_ANIM_DURATION = 200;
    private static final float NO_ELEVATION_VALUE = 0.0f;
    private static final Interpolator OUTSIDE_ALPHA_ANIM_INTERPOLATOR;
    private static final float PHYSICS_UNSET = Float.MIN_VALUE;
    private static final float PULL_UP_FRICTION = 0.8f;
    private static final int PULL_UP_REBOUND_BOUNCINESS = 6;
    private static final int PULL_UP_REBOUND_SPEED = 42;
    private static final int SDK_SUB_VERSION = 10;
    private static final float SHOW_HEIGHT_ANIM_DURATION_IN_TINY_SCREEN = 167.0f;
    private static final Interpolator SHOW_HEIGHT_ANIM_INTERPOLATOR;
    private static final String STATE_FOCUS_CHANGES = "state_focus_changes";
    private static final String TAG = "COUIBottomSheetDialog";
    private static final double THREE_POINT_EIGHT = 3.8d;
    private static final double TWENTY = 20.0d;
    private static final int UNSET_SIZE = -1;
    private static final double ZERO = 0.0d;
    protected boolean isLargeScreenLimitMaxSize;
    private int mADFRFeatureType;
    private WeakReference<Activity> mActivityWeakReference;
    private ViewGroup mAdjustLayout;
    private boolean mAdjustResizeEnable;
    private COUIPanelAdjustResizeHelper mAdjustResizeHelper;
    private COUISpringAnimation mAlphaSpringAnimation;
    private COUIDynamicAnimation.OnAnimationEndListener mAlphaSpringEndListener;
    private COUIDynamicAnimation.OnAnimationUpdateListener mAlphaSpringUpdateListener;
    private View mAnchorView;
    private int mAnimationFlag;
    private OnAnimationListener mAnimationListener;
    private float mAppearDampingRatio;
    private androidx.dynamicanimation.animation.f mAppearSpringAnim;
    private androidx.dynamicanimation.animation.g mAppearSpringForce;
    private float mAppearStiffness;
    private WindowInsets mApplyWindowInsets;
    private BottomSheetDialogAnimatorListener mBottomSheetDialogAnimatorListener;
    private boolean mCanPerformHapticFeedback;
    private boolean mCanPullUp;
    private boolean mCancelable;
    private boolean mCanceledOnTouchOutside;
    private ComponentCallbacks mComponentCallbacks;
    private Configuration mConfiguration;
    private IgnoreWindowInsetsFrameLayout mContainerFrameLayout;
    private View mContentView;
    private View mCoordinatorLayout;
    protected int mCoordinatorLayoutMinInsetsTop;
    private int mCoordinatorLayoutPaddingExtra;
    private float mCurrentOutSideAlphaStateHidden;
    private float mCurrentOutsideAlpha;
    private float mCurrentParentViewTranslationY;
    private int mCurrentSpringTotalOffset;
    private COUIPanelPercentFrameLayout mDesignBottomSheetFrameLayout;
    private DialogOffsetListener mDialogOffsetListener;
    private u2.e mDisableFastCloseFeedbackSpring;
    private boolean mDisableSubExpand;
    protected COUIPanelContentLayout mDraggableConstraintLayout;
    private float mEndValueOfTranslateAnimation;
    private View mFeedBackView;

    @Deprecated
    private int mFinalNavColorAfterDismiss;
    private boolean mFirstShowCollapsed;
    private Boolean mFocusChange;
    private boolean mFrameRate;
    private boolean mGlobalDrag;
    private boolean mHandleViewHasPressAnim;
    private int mHideDragViewHeight;
    private InputMethodManager mInputMethodManager;
    private boolean mIsAppearSpringAnimStared;
    private boolean mIsDraggable;
    private boolean mIsEntering;

    @Deprecated
    private boolean mIsExecuteNavColorAnimAfterDismiss;
    private boolean mIsExecutingDismissAnim;
    private boolean mIsFullScreenInTinyScreen;
    private boolean mIsGestureNavigation;
    private boolean mIsHandlePanel;
    private boolean mIsInTinyScreen;
    private boolean mIsInWindowFloatingMode;
    private boolean mIsInterruptingAnim;
    private boolean mIsNeedOutsideViewAnim;
    private boolean mIsNeedShowKeyboard;
    private boolean mIsShowInDialogFragment;
    private boolean mIsShowInMaxHeight;
    private boolean mIsVSdk;
    private int mNavColor;
    private View mNavigationCustomView;
    private OnBackInvokedCallback mOnBackInvokedCallback;
    private ViewTreeObserver.OnPreDrawListener mOnPreDrawListener;
    private int mOriginWidth;
    private View.OnTouchListener mOutSideViewTouchListener;
    private View mOutsideView;
    private float mOutsideViewBackgroundAlpha;
    private Drawable mPanelBackground;
    private int mPanelBackgroundTintColor;
    private COUIPanelBarView mPanelBarView;
    private Drawable mPanelDragViewDrawable;
    private int mPanelDragViewDrawableTintColor;
    private int mPanelHeight;
    private COUIPanelPullUpListener mPanelPullUpListener;
    private u2.e mPanelSpringBackAnim;
    private AnimatorSet mPanelViewTranslationAnimationSet;
    private int mPanelWidth;
    private int mParentViewPaddingBottom;
    private int mPeekHeight;
    private float mPhysicsDampingRatio;
    private float mPhysicsFrequency;
    private int mPreferWidth;
    private WindowInsets mProgressWindowInsets;
    private int mPullUpMaxOffset;
    private View mPulledUpView;
    private boolean mRegisterConfigurationChangeCallBack;
    private boolean mShouldRegisterWindowInsetsListener;
    private boolean mSkipCollapsed;
    private int mSnapStartBottom;
    private COUISpringForce mSpringForceAlpha;
    private COUISpringForce mSpringForceTranslationAndScale;
    private float mStartValueOfTranslateAnimation;
    private int mStatusBarHeight;
    private float mTranslateHidingDuration;
    private COUIDynamicAnimation.OnAnimationEndListener mTranslationAndScaleEndListener;
    private COUIDynamicAnimation.OnAnimationEndListener mTranslationAndScaleEndListenerWhenBlock;
    private COUISpringAnimation mTranslationAndScaleSpringAnimation;
    private COUIDynamicAnimation.OnAnimationUpdateListener mTranslationAndScaleUpdateListener;
    private boolean mWindowInsetsAnimEnable;
    private int mWindowInsetsLeft;
    private View.OnApplyWindowInsetsListener mWindowInsetsListener;
    private int mWindowInsetsTop;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AnimationType {
    }

    public interface BottomSheetDialogAnimatorListener {
        void onBottomSheetDialogCollapsed();

        void onBottomSheetDialogExpanded();
    }

    public interface DialogOffsetListener {
        void onDialogOffsetChanged(float f10);
    }

    public interface OnAnimationListener {
        default void onDismissAnimationEnd() {
        }

        default void onDismissAnimationStart() {
        }

        default void onShowAnimationEnd() {
        }

        default void onShowAnimationStart() {
        }
    }

    static {
        COUIInEaseInterpolator cOUIInEaseInterpolator = new COUIInEaseInterpolator();
        SHOW_HEIGHT_ANIM_INTERPOLATOR = cOUIInEaseInterpolator;
        OUTSIDE_ALPHA_ANIM_INTERPOLATOR = new COUIEaseInterpolator();
        DISMISS_ALPHA_ANIM_INTERPOLATOR = cOUIInEaseInterpolator;
        DEBUG = Log.isLoggable(TAG, 3);
    }

    public COUIBottomSheetDialog(Context context) {
        this(context, 0);
    }

    private void addAnimationFlag(int i10) {
        this.mAnimationFlag = i10 | this.mAnimationFlag;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animationEnd() {
        if (this.mDesignBottomSheetFrameLayout != null) {
            if (!isFollowHand() && !isFadeInCenter()) {
                this.mDesignBottomSheetFrameLayout.setTranslationY(this.mCurrentParentViewTranslationY);
            }
            if (getBehavior() != null && getBehavior().getState() == 3 && this.mCanPerformHapticFeedback) {
                this.mDesignBottomSheetFrameLayout.performHapticFeedback(14);
            }
        }
        OnAnimationListener onAnimationListener = this.mAnimationListener;
        if (onAnimationListener != null) {
            onAnimationListener.onShowAnimationEnd();
        }
        if (isFollowHand()) {
            haveEnoughSpace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animationStart() {
        if (getBehavior() != null && getBehavior().getState() == 5) {
            ((COUIBottomSheetBehavior) getBehavior()).setPanelState(3);
        }
        OnAnimationListener onAnimationListener = this.mAnimationListener;
        if (onAnimationListener != null) {
            onAnimationListener.onShowAnimationStart();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int[] calculateFinalLocationOnScreen(android.view.View r17) {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.panel.COUIBottomSheetDialog.calculateFinalLocationOnScreen(android.view.View):int[]");
    }

    private void cancelAnim(Animator animator) {
        if (animator == null || !animator.isRunning()) {
            return;
        }
        animator.end();
    }

    private void checkInitState() {
        if (this.mContainerFrameLayout == null) {
            throw new IllegalArgumentException("container can not be null");
        }
        if (this.mCoordinatorLayout == null) {
            throw new IllegalArgumentException("coordinator can not be null");
        }
        if (this.mOutsideView == null) {
            throw new IllegalArgumentException("panel_outside can not be null");
        }
        if (this.mDesignBottomSheetFrameLayout == null) {
            throw new IllegalArgumentException("design_bottom_sheet can not be null");
        }
    }

    private ValueAnimator createNavigationColorAnimation(int i10) {
        if (COUINavigationBarUtil.isNavigationBarShow(getContext()) && getWindow() != null) {
            final Window window = getWindow();
            int navigationBarColor = window.getNavigationBarColor();
            if (Color.alpha(i10) == 0) {
                i10 = Color.argb(1, Color.red(i10), Color.green(i10), Color.blue(i10));
            }
            if (navigationBarColor != i10) {
                ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(navigationBarColor), Integer.valueOf(i10));
                valueAnimatorOfObject.setDuration(NAV_COLOR_ANIM_DURATION);
                valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.20
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        window.setNavigationBarColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
                return valueAnimatorOfObject;
            }
        }
        return null;
    }

    private ValueAnimator createOutsideAlphaAnimation(final boolean z10, float f10, PathInterpolator pathInterpolator) {
        final float f11 = this.mCurrentOutsideAlpha;
        final float f12 = z10 ? 1.0f : 0.0f;
        if (f11 == f12) {
            COUILog.w(TAG, "StartAlphaValue == endAlphaValue, No need to perform transparency animation anymore");
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f11, f12);
        valueAnimatorOfFloat.setDuration((long) f10);
        valueAnimatorOfFloat.setInterpolator(pathInterpolator);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.18
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f13 = f11;
                float f14 = f12;
                COUIBottomSheetDialog.this.outsideAlphaChange(f13 != f14 ? (fFloatValue - f13) / (f14 - f13) : 0.0f, z10);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.19
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout != null && COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.getAlpha() == 0.0f) {
                    COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.setAlpha(1.0f);
                }
                COUIBottomSheetDialog.this.mIsNeedShowKeyboard = false;
            }
        });
        return valueAnimatorOfFloat;
    }

    private void createPanelConstraintLayout() {
        COUIPanelContentLayout cOUIPanelContentLayout = (COUIPanelContentLayout) getLayoutInflater().inflate(this.mIsInTinyScreen ? R$layout.coui_panel_view_layout_tiny : R$layout.coui_panel_view_layout, (ViewGroup) null);
        Drawable drawable = this.mPanelDragViewDrawable;
        if (drawable != null) {
            drawable.setTint(this.mPanelDragViewDrawableTintColor);
            cOUIPanelContentLayout.setDragViewDrawable(this.mPanelDragViewDrawable);
        }
        if (this.mHandleViewHasPressAnim) {
            cOUIPanelContentLayout.setDragViewPressAnim(true);
        }
        cOUIPanelContentLayout.setNavigationMargin(null, COUIViewMarginUtil.getMargin(this.mCoordinatorLayout, 3), this.mApplyWindowInsets);
        this.mDraggableConstraintLayout = cOUIPanelContentLayout;
        if (this.mIsHandlePanel) {
            return;
        }
        hideDragView();
    }

    private ValueAnimator createPanelTranslateAnimation(float f10, float f11, float f12, PathInterpolator pathInterpolator) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f10, f11);
        valueAnimatorOfFloat.setDuration((long) f12);
        valueAnimatorOfFloat.setInterpolator(pathInterpolator);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.13
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUIBottomSheetDialog.this.translateUpdate(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        setFrameRate(valueAnimatorOfFloat);
        return valueAnimatorOfFloat;
    }

    private void dismissWithAlphaAnim() {
        this.mIsEntering = false;
        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                COUIBottomSheetDialog.this.mIsExecutingDismissAnim = false;
                COUIBottomSheetDialog.this.mCurrentOutSideAlphaStateHidden = 0.0f;
                super.onAnimationCancel(animator);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (COUIBottomSheetDialog.this.mBottomSheetDialogAnimatorListener != null) {
                    COUIBottomSheetDialog.this.mBottomSheetDialogAnimatorListener.onBottomSheetDialogCollapsed();
                }
                COUIBottomSheetDialog.this.mIsExecutingDismissAnim = false;
                COUIBottomSheetDialog.this.mCurrentOutSideAlphaStateHidden = 0.0f;
                COUIBottomSheetDialog.this.superDismiss();
                COUIBottomSheetDialog.this.releaseBehaviorPullUpListener();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                COUIBottomSheetDialog.this.mIsExecutingDismissAnim = true;
                super.onAnimationStart(animator);
            }
        };
        if (this.mCurrentOutsideAlpha == 0.0f) {
            animatorListenerAdapter.onAnimationEnd(null);
            return;
        }
        stopCurrentRunningViewTranslationAnim();
        this.mCurrentOutSideAlphaStateHidden = this.mCurrentOutsideAlpha;
        resetAnimationFlag();
        addAnimationFlag(2);
        doAlphaSpringAnimaion(animatorListenerAdapter);
    }

    private void dismissWithInterruptibleAnim() {
        doParentViewTranslationHidingAnim(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                COUIBottomSheetDialog.this.mIsExecutingDismissAnim = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (COUIBottomSheetDialog.this.mBottomSheetDialogAnimatorListener != null) {
                    COUIBottomSheetDialog.this.mBottomSheetDialogAnimatorListener.onBottomSheetDialogCollapsed();
                }
                COUIBottomSheetDialog.this.mIsExecutingDismissAnim = false;
                COUIBottomSheetDialog.this.superDismiss();
                COUIBottomSheetDialog.this.releaseBehaviorPullUpListener();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                COUIBottomSheetDialog.this.mIsExecutingDismissAnim = true;
                if (COUIBottomSheetDialog.this.mAnimationListener != null) {
                    COUIBottomSheetDialog.this.mAnimationListener.onDismissAnimationStart();
                }
            }
        });
    }

    private void doAlphaSpringAnimaion(final Animator.AnimatorListener animatorListener) {
        if (this.mAlphaSpringAnimation == null) {
            this.mAlphaSpringAnimation = new COUISpringAnimation(new androidx.dynamicanimation.animation.e());
            COUISpringForce cOUISpringForce = new COUISpringForce();
            this.mSpringForceAlpha = cOUISpringForce;
            cOUISpringForce.setBounce(0.0f);
            this.mAlphaSpringAnimation.setSpring(this.mSpringForceAlpha);
        }
        if (hasAnimationFlag(2)) {
            if (this.mIsEntering) {
                this.mSpringForceAlpha.setResponse(0.3f);
            } else {
                this.mSpringForceAlpha.setResponse(0.25f);
            }
        }
        if (animatorListener != null) {
            this.mAlphaSpringAnimation.removeEndListener(this.mAlphaSpringEndListener);
            COUIDynamicAnimation.OnAnimationEndListener onAnimationEndListener = new COUIDynamicAnimation.OnAnimationEndListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.11
                @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
                public void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f10, float f11) {
                    if (z10) {
                        animatorListener.onAnimationCancel(null);
                    } else {
                        animatorListener.onAnimationEnd(null);
                    }
                    COUIBottomSheetDialog.this.mAlphaSpringAnimation.removeEndListener(COUIBottomSheetDialog.this.mAlphaSpringEndListener);
                    COUIBottomSheetDialog.this.mAlphaSpringAnimation.removeUpdateListener(COUIBottomSheetDialog.this.mAlphaSpringUpdateListener);
                }
            };
            this.mAlphaSpringEndListener = onAnimationEndListener;
            this.mAlphaSpringAnimation.addEndListener(onAnimationEndListener);
            animatorListener.onAnimationStart(null);
        }
        this.mAlphaSpringAnimation.removeUpdateListener(this.mAlphaSpringUpdateListener);
        COUIDynamicAnimation.OnAnimationUpdateListener onAnimationUpdateListener = new COUIDynamicAnimation.OnAnimationUpdateListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.12
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationUpdateListener
            public void onAnimationUpdate(COUIDynamicAnimation cOUIDynamicAnimation, float f10, float f11) {
                float fMax = COUIBottomSheetDialog.this.mEndValueOfTranslateAnimation != COUIBottomSheetDialog.this.mStartValueOfTranslateAnimation ? (f10 - COUIBottomSheetDialog.this.mStartValueOfTranslateAnimation) / (COUIBottomSheetDialog.this.mEndValueOfTranslateAnimation - COUIBottomSheetDialog.this.mStartValueOfTranslateAnimation) : 0.0f;
                if (COUIBottomSheetDialog.this.hasAnimationFlag(2)) {
                    COUIBottomSheetDialog cOUIBottomSheetDialog = COUIBottomSheetDialog.this;
                    cOUIBottomSheetDialog.outsideAlphaChange(fMax, cOUIBottomSheetDialog.mIsEntering);
                }
                if (!COUIBottomSheetDialog.this.hasAnimationFlag(8) || COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout == null) {
                    return;
                }
                COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout;
                if (!COUIBottomSheetDialog.this.mIsEntering) {
                    fMax = Math.max(0.0f, 1.0f - fMax);
                }
                cOUIPanelPercentFrameLayout.setAlpha(fMax);
            }
        };
        this.mAlphaSpringUpdateListener = onAnimationUpdateListener;
        this.mAlphaSpringAnimation.addUpdateListener(onAnimationUpdateListener);
        this.mAlphaSpringAnimation.setStartValue(this.mStartValueOfTranslateAnimation);
        this.mAlphaSpringAnimation.animateToFinalPosition(this.mEndValueOfTranslateAnimation);
    }

    private void doFeedbackAnimation(View view) {
        if (view == null) {
            return;
        }
        if (this.mDisableFastCloseFeedbackSpring == null || this.mFeedBackView != view) {
            this.mFeedBackView = view;
            u2.e eVarC = j.g().c();
            this.mDisableFastCloseFeedbackSpring = eVarC;
            eVarC.o(u2.f.a(THREE_POINT_EIGHT, TWENTY));
            this.mDisableFastCloseFeedbackSpring.a(new h() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.21
                @Override // u2.h
                public void onSpringActivate(u2.e eVar) {
                }

                @Override // u2.h
                public void onSpringAtRest(u2.e eVar) {
                }

                @Override // u2.h
                public void onSpringEndStateChange(u2.e eVar) {
                }

                @Override // u2.h
                public void onSpringUpdate(u2.e eVar) {
                    if (COUIBottomSheetDialog.this.mDisableFastCloseFeedbackSpring == null || COUIBottomSheetDialog.this.mFeedBackView == null) {
                        return;
                    }
                    int iC = (int) eVar.c();
                    if (iC >= 100) {
                        COUIBottomSheetDialog.this.mDisableFastCloseFeedbackSpring.n(0.0d);
                    }
                    COUIBottomSheetDialog.this.mFeedBackView.setTranslationY(iC);
                }
            });
        }
        this.mDisableFastCloseFeedbackSpring.n(100.0d);
    }

    private void doParentViewTranslationHidingAnim(Animator.AnimatorListener animatorListener) {
        if (reversalEnterAnimation(animatorListener)) {
            return;
        }
        this.mIsEntering = false;
        stopCurrentRunningViewTranslationAnim();
        resetAnimationFlag();
        if (getDialogMaxHeight() == 0) {
            Log.d(TAG, "doParentViewTranslationHidingAnim return directly for dialogMaxHeight is 0, but call superDismiss");
            superDismiss();
            return;
        }
        int height = this.mDesignBottomSheetFrameLayout.getHeight();
        this.mPanelViewTranslationAnimationSet = new AnimatorSet();
        if (this.mIsInTinyScreen) {
            startReleaseAnimInTinyScreen(this.mStartValueOfTranslateAnimation, this.mEndValueOfTranslateAnimation, this.mTranslateHidingDuration, animatorListener);
            return;
        }
        if (isFollowHand()) {
            setDefaultSpringStartEndValue();
            if (this.mDesignBottomSheetFrameLayout.getAlpha() != 1.0f) {
                this.mDesignBottomSheetFrameLayout.setAlpha(1.0f);
            }
            if (haveEnoughSpace()) {
                addAnimationFlag(8);
            } else {
                addAnimationFlag(8);
                addAnimationFlag(2);
            }
        } else if (isFadeInCenter()) {
            addAnimationFlag(4);
            addAnimationFlag(2);
            addAnimationFlag(8);
            setDefaultSpringStartEndValue();
        } else {
            addAnimationFlag(1);
            addAnimationFlag(2);
            this.mStartValueOfTranslateAnimation = (int) this.mCurrentParentViewTranslationY;
            if (this.mFirstShowCollapsed && getBehavior().getState() == 4) {
                height = this.mPeekHeight;
            }
            this.mEndValueOfTranslateAnimation = height;
        }
        doTranslationAndScaleSpringAnimaion(animatorListener);
        doAlphaSpringAnimaion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doParentViewTranslationShowingAnim(int i10, Animator.AnimatorListener animatorListener) {
        stopCurrentRunningViewTranslationAnim();
        resetAnimationFlag();
        if (getDialogMaxHeight() == 0) {
            Log.d(TAG, "doParentViewTranslationShowingAnim return directly for dialogMaxHeight is 0");
            return;
        }
        this.mIsEntering = true;
        int contentViewHeightWithMargins = getContentViewHeightWithMargins();
        this.mPanelViewTranslationAnimationSet = new AnimatorSet();
        if (this.mIsInTinyScreen) {
            startShowingAnimInTinyScreen(i10, animatorListener);
            return;
        }
        if (isFollowHand()) {
            COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
            if (cOUIPanelPercentFrameLayout != null && cOUIPanelPercentFrameLayout.getAlpha() != 0.0f) {
                this.mDesignBottomSheetFrameLayout.setAlpha(0.0f);
                this.mDesignBottomSheetFrameLayout.setScaleX(0.8f);
                this.mDesignBottomSheetFrameLayout.setScaleY(0.8f);
            }
            setDefaultSpringStartEndValue();
            if (haveEnoughSpace()) {
                offsetViewTo();
                addAnimationFlag(8);
                addAnimationFlag(4);
            } else {
                updateBottomSheetCenterVertical();
                addAnimationFlag(8);
                addAnimationFlag(4);
                addAnimationFlag(2);
            }
        } else if (isFadeInCenter()) {
            COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout2 = this.mDesignBottomSheetFrameLayout;
            if (cOUIPanelPercentFrameLayout2 != null) {
                cOUIPanelPercentFrameLayout2.setAlpha(0.0f);
                this.mDesignBottomSheetFrameLayout.setScaleX(0.8f);
                this.mDesignBottomSheetFrameLayout.setScaleY(0.8f);
            }
            addAnimationFlag(4);
            addAnimationFlag(2);
            addAnimationFlag(8);
            setDefaultSpringStartEndValue();
        } else {
            COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout3 = this.mDesignBottomSheetFrameLayout;
            if (cOUIPanelPercentFrameLayout3 != null) {
                cOUIPanelPercentFrameLayout3.setAlpha(1.0f);
                this.mDesignBottomSheetFrameLayout.setScaleX(1.0f);
                this.mDesignBottomSheetFrameLayout.setScaleY(1.0f);
            }
            addAnimationFlag(1);
            addAnimationFlag(2);
            this.mStartValueOfTranslateAnimation = this.mFirstShowCollapsed ? this.mPeekHeight : contentViewHeightWithMargins + i10;
            this.mEndValueOfTranslateAnimation = 0.0f;
        }
        doTranslationAndScaleSpringAnimaion(animatorListener);
        doAlphaSpringAnimaion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doSpringBackReboundAnim(final int i10) {
        u2.e eVarC = j.g().c();
        this.mPanelSpringBackAnim = eVarC;
        eVarC.o(u2.f.a(6.0d, 42.0d));
        this.mCurrentSpringTotalOffset = 0;
        this.mPanelSpringBackAnim.a(new h() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.25
            @Override // u2.h
            public void onSpringActivate(u2.e eVar) {
            }

            @Override // u2.h
            public void onSpringAtRest(u2.e eVar) {
                if ((COUIBottomSheetDialog.this.getBehavior() instanceof COUIBottomSheetBehavior) && COUIBottomSheetDialog.this.mPulledUpView != null) {
                    COUIBottomSheetDialog.this.mParentViewPaddingBottom = 0;
                    COUIBottomSheetDialog.this.setPulledUpViewPaddingBottom(0);
                    ((COUIBottomSheetBehavior) COUIBottomSheetDialog.this.getBehavior()).setStateInternal(3);
                }
                COUIBottomSheetDialog.this.setCanPullUp(true);
            }

            @Override // u2.h
            public void onSpringEndStateChange(u2.e eVar) {
            }

            @Override // u2.h
            public void onSpringUpdate(u2.e eVar) {
                if (COUIBottomSheetDialog.this.mPanelSpringBackAnim == null || COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout == null) {
                    return;
                }
                if (eVar.r() && eVar.g() == 0.0d) {
                    COUIBottomSheetDialog.this.mPanelSpringBackAnim.k();
                    return;
                }
                int iC = (int) eVar.c();
                COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.offsetTopAndBottom(iC - COUIBottomSheetDialog.this.mCurrentSpringTotalOffset);
                COUIBottomSheetDialog.this.mCurrentSpringTotalOffset = iC;
                COUIBottomSheetDialog.this.setPulledUpViewPaddingBottom(i10 - iC);
            }
        });
        this.mPanelSpringBackAnim.n(i10);
    }

    private void doTranslationAndScaleSpringAnimaion(final Animator.AnimatorListener animatorListener) {
        initTranslationAndScaleSpringAnimation();
        if (hasAnimationFlag(1)) {
            this.mSpringForceTranslationAndScale.setResponse(getTranslationResponse());
        } else if (hasAnimationFlag(4)) {
            if (this.mIsEntering) {
                this.mSpringForceTranslationAndScale.setResponse(0.3f);
            } else {
                this.mSpringForceTranslationAndScale.setResponse(0.3f);
            }
        }
        COUIDynamicAnimation.OnAnimationEndListener onAnimationEndListener = new COUIDynamicAnimation.OnAnimationEndListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.9
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
            public void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f10, float f11) {
                if (z10) {
                    animatorListener.onAnimationCancel(null);
                } else {
                    animatorListener.onAnimationEnd(null);
                }
                COUIBottomSheetDialog.this.mTranslationAndScaleSpringAnimation.removeEndListener(COUIBottomSheetDialog.this.mTranslationAndScaleEndListener);
                COUIBottomSheetDialog.this.mTranslationAndScaleSpringAnimation.removeUpdateListener(COUIBottomSheetDialog.this.mTranslationAndScaleUpdateListener);
            }
        };
        this.mTranslationAndScaleEndListener = onAnimationEndListener;
        this.mTranslationAndScaleSpringAnimation.addEndListener(onAnimationEndListener);
        animatorListener.onAnimationStart(null);
        this.mTranslationAndScaleSpringAnimation.removeUpdateListener(this.mTranslationAndScaleUpdateListener);
        COUIDynamicAnimation.OnAnimationUpdateListener onAnimationUpdateListener = new COUIDynamicAnimation.OnAnimationUpdateListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.10
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationUpdateListener
            public void onAnimationUpdate(COUIDynamicAnimation cOUIDynamicAnimation, float f10, float f11) {
                float f12 = COUIBottomSheetDialog.this.mEndValueOfTranslateAnimation != COUIBottomSheetDialog.this.mStartValueOfTranslateAnimation ? (f10 - COUIBottomSheetDialog.this.mStartValueOfTranslateAnimation) / (COUIBottomSheetDialog.this.mEndValueOfTranslateAnimation - COUIBottomSheetDialog.this.mStartValueOfTranslateAnimation) : 0.0f;
                if (COUIBottomSheetDialog.this.hasAnimationFlag(1)) {
                    COUIBottomSheetDialog.this.translateUpdate(f10);
                }
                if (!COUIBottomSheetDialog.this.hasAnimationFlag(4) || COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout == null) {
                    return;
                }
                float f13 = COUIBottomSheetDialog.this.mIsEntering ? (f12 * 0.2f) + 0.8f : ((1.0f - f12) * 0.2f) + 0.8f;
                COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.setScaleX(f13);
                COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.setScaleY(f13);
            }
        };
        this.mTranslationAndScaleUpdateListener = onAnimationUpdateListener;
        this.mTranslationAndScaleSpringAnimation.addUpdateListener(onAnimationUpdateListener);
        setFrameRate(this.mTranslationAndScaleSpringAnimation);
        this.mTranslationAndScaleSpringAnimation.setStartValue(this.mStartValueOfTranslateAnimation);
        this.mTranslationAndScaleSpringAnimation.animateToFinalPosition(this.mEndValueOfTranslateAnimation);
    }

    private void enforceChangeScreenWidth() {
        if (this.mPreferWidth == -1) {
            return;
        }
        try {
            Resources resources = getContext().getResources();
            Configuration configuration = resources.getConfiguration();
            this.mOriginWidth = configuration.screenWidthDp;
            configuration.screenWidthDp = this.mPreferWidth;
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            Log.d(TAG, "enforceChangeScreenWidth : OriginWidth=" + this.mOriginWidth + " ,PreferWidth:" + this.mPreferWidth);
            COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
            if (cOUIPanelPercentFrameLayout != null) {
                cOUIPanelPercentFrameLayout.setPreferWidth(this.mPreferWidth);
            }
        } catch (Exception unused) {
            Log.d(TAG, "enforceChangeScreenWidth : failed to updateConfiguration");
        }
    }

    private void ensureDraggableContentLayout() {
        if (this.mDraggableConstraintLayout == null) {
            createPanelConstraintLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getContentViewHeightWithMargins() {
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null) {
            return cOUIPanelPercentFrameLayout.getMeasuredHeight() + COUIViewMarginUtil.getMargin(this.mDesignBottomSheetFrameLayout, 3);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getFocusChange() {
        Boolean bool = this.mFocusChange;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private Rect getLocationRectInScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        return new Rect(i10, iArr[1], view.getMeasuredWidth() + i10, iArr[1] + view.getMeasuredHeight());
    }

    private int getNavColor(Configuration configuration) {
        int i10 = this.mNavColor;
        return i10 != Integer.MAX_VALUE ? i10 : this.mIsHandlePanel ? COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorSurface) : configuration == null ? getContext().getResources().getColor(R$color.coui_panel_navigation_bar_color) : getContext().createConfigurationContext(configuration).getResources().getColor(R$color.coui_panel_navigation_bar_color);
    }

    private COUIPanelPullUpListener getPanelPullUpListener() {
        return new COUIPanelPullUpListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.24
            private int mLastPosition = -1;

            @Override // com.coui.appcompat.panel.COUIPanelPullUpListener
            public void onCancel() {
                COUIBottomSheetDialog.this.setPulledUpViewPaddingBottom(0);
            }

            @Override // com.coui.appcompat.panel.COUIPanelPullUpListener
            public int onDragging(int i10, int i11) {
                if (COUIBottomSheetDialog.this.mPanelSpringBackAnim != null && COUIBottomSheetDialog.this.mPanelSpringBackAnim.g() != 0.0d) {
                    COUIBottomSheetDialog.this.mPanelSpringBackAnim.k();
                    return COUIBottomSheetDialog.this.mParentViewPaddingBottom;
                }
                int iB = x.a.b((int) (COUIBottomSheetDialog.this.mPulledUpView.getPaddingBottom() - (i10 * 0.19999999f)), 0, Math.min(COUIBottomSheetDialog.this.mPullUpMaxOffset, COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.getTop()));
                if (COUIBottomSheetDialog.this.mParentViewPaddingBottom != iB) {
                    COUIBottomSheetDialog.this.mParentViewPaddingBottom = iB;
                    COUIBottomSheetDialog cOUIBottomSheetDialog = COUIBottomSheetDialog.this;
                    cOUIBottomSheetDialog.setPulledUpViewPaddingBottom(cOUIBottomSheetDialog.mParentViewPaddingBottom);
                }
                return COUIBottomSheetDialog.this.mParentViewPaddingBottom;
            }

            @Override // com.coui.appcompat.panel.COUIPanelPullUpListener
            public void onDraggingPanel() {
                boolean unused = COUIBottomSheetDialog.this.mIsInTinyScreen;
            }

            @Override // com.coui.appcompat.panel.COUIPanelPullUpListener
            public void onOffsetChanged(float f10) {
                if (this.mLastPosition == -1) {
                    this.mLastPosition = COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.getHeight();
                }
                if (COUIBottomSheetDialog.this.mDialogOffsetListener != null) {
                    COUIBottomSheetDialog.this.mDialogOffsetListener.onDialogOffsetChanged(COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.getTop());
                }
                if (COUIBottomSheetDialog.this.mIsNeedOutsideViewAnim) {
                    if (!COUIBottomSheetDialog.this.mIsExecutingDismissAnim) {
                        float fMax = Math.max(0.0f, COUIBottomSheetDialog.this.getOutsideViewAlpha(f10));
                        COUIBottomSheetDialog.this.mOutsideView.setAlpha(fMax);
                        COUIBottomSheetDialog.this.mCurrentOutsideAlpha = fMax;
                    }
                    if (!COUIPanelMultiWindowUtils.isSmallScreen(COUIBottomSheetDialog.this.getContext(), null) && COUINavigationBarUtil.isNavigationBarShow(COUIBottomSheetDialog.this.getContext()) && ((!COUIBottomSheetDialog.this.mIsHandlePanel || COUIBottomSheetDialog.this.shouldHandlePanelUpdateNavBarColor()) && COUIBottomSheetDialog.this.getWindow() != null && ((int) (COUIBottomSheetDialog.this.mOutsideViewBackgroundAlpha * f10)) != 0 && !COUINavigationBarUtil.isGestureNavigation(COUIBottomSheetDialog.this.getContext()))) {
                        COUIBottomSheetDialog.this.setNavigationBarColorAlpha(f10);
                    }
                }
                if (COUIBottomSheetDialog.this.mPanelBarView == null || f10 == 1.0f || !COUIBottomSheetDialog.this.mIsInTinyScreen) {
                    return;
                }
                COUIBottomSheetDialog.this.mPanelBarView.setPanelOffset(this.mLastPosition - ((int) (COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.getHeight() * f10)));
                this.mLastPosition = (int) (COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.getHeight() * f10);
            }

            @Override // com.coui.appcompat.panel.COUIPanelPullUpListener
            public void onReleased(int i10) {
                COUIBottomSheetDialog.this.setCanPullUp(false);
                int top = COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.getTop() - (i10 - COUIBottomSheetDialog.this.mParentViewPaddingBottom);
                COUIBottomSheetDialog cOUIBottomSheetDialog = COUIBottomSheetDialog.this;
                cOUIBottomSheetDialog.doSpringBackReboundAnim(cOUIBottomSheetDialog.mParentViewPaddingBottom - top);
            }

            @Override // com.coui.appcompat.panel.COUIPanelPullUpListener
            public void onReleasedDrag() {
                boolean unused = COUIBottomSheetDialog.this.mIsInTinyScreen;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator.AnimatorListener getPanelShowAnimListener() {
        return new AnimatorListenerAdapter() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.23
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                COUIBottomSheetDialog.this.animationEnd();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                COUIBottomSheetDialog.this.animationStart();
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private float getTranslationResponse() {
        /*
            r6 = this;
            boolean r0 = r6.mIsEntering
            r1 = 1050253722(0x3e99999a, float:0.3)
            if (r0 == 0) goto Lb
            r0 = 1051931443(0x3eb33333, float:0.35)
            goto L10
        Lb:
            r0 = 1048576000(0x3e800000, float:0.25)
            r5 = r1
            r1 = r0
            r0 = r5
        L10:
            com.google.android.material.bottomsheet.BottomSheetBehavior r2 = r6.getBehavior()
            int r2 = r2.getState()
            r3 = 4
            if (r2 != r3) goto L1f
            int r2 = r6.mPeekHeight
        L1d:
            float r2 = (float) r2
            goto L42
        L1f:
            com.google.android.material.bottomsheet.BottomSheetBehavior r2 = r6.getBehavior()
            int r2 = r2.getState()
            r3 = 6
            if (r2 != r3) goto L3b
            android.view.View r2 = r6.mCoordinatorLayout
            int r2 = r2.getHeight()
            float r2 = (float) r2
            com.google.android.material.bottomsheet.BottomSheetBehavior r3 = r6.getBehavior()
            float r3 = r3.getHalfExpandedRatio()
            float r2 = r2 * r3
            goto L42
        L3b:
            com.coui.appcompat.panel.COUIPanelPercentFrameLayout r2 = r6.mDesignBottomSheetFrameLayout
            int r2 = r2.getHeight()
            goto L1d
        L42:
            android.view.View r3 = r6.mCoordinatorLayout
            int r3 = r3.getHeight()
            int r4 = r6.mPeekHeight
            int r3 = r3 - r4
            float r3 = (float) r3
            int r6 = r6.mPeekHeight
            float r6 = (float) r6
            float r2 = r2 - r6
            r6 = 0
            int r4 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r4 == 0) goto L57
            float r2 = r2 / r3
            goto L59
        L57:
            r2 = 1065353216(0x3f800000, float:1.0)
        L59:
            float r2 = java.lang.Math.max(r6, r2)
            float r6 = java.lang.Math.max(r6, r2)
            float r0 = r0 - r1
            float r0 = r0 * r6
            float r1 = r1 + r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.panel.COUIBottomSheetDialog.getTranslationResponse():float");
    }

    private Drawable getTypedArrayDrawable(TypedArray typedArray, int i10, int i11) {
        Drawable drawable = typedArray != null ? typedArray.getDrawable(i10) : null;
        return drawable == null ? getContext().getResources().getDrawable(i11, getContext().getTheme()) : drawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBehaviorStateChange(View view, int i10) {
        if (i10 == 2) {
            if (needHideKeyboardWhenSettling()) {
                hideKeyboard();
            }
        } else if (i10 == 3) {
            this.mAdjustResizeEnable = true;
            this.mWindowInsetsAnimEnable = false;
        } else {
            if (i10 != 5) {
                return;
            }
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasAnimationFlag(int i10) {
        return (this.mAnimationFlag & i10) > 0;
    }

    private boolean hasEditText(ViewGroup viewGroup) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof EditText) || (childAt instanceof COUIInputView)) {
                return true;
            }
            if ((childAt instanceof ViewGroup) && hasEditText((ViewGroup) childAt)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean haveEnoughSpace() {
        View view;
        if (this.mDesignBottomSheetFrameLayout == null || (view = this.mAnchorView) == null) {
            return false;
        }
        Rect locationRectInScreen = getLocationRectInScreen(view);
        int measuredWidth = this.mDesignBottomSheetFrameLayout.getMeasuredWidth();
        int measuredHeight = this.mDesignBottomSheetFrameLayout.getMeasuredHeight();
        Rect locationRectInScreen2 = getLocationRectInScreen(((ViewGroup) this.mAnchorView.getRootView()).getChildAt(0));
        int navigationBarHeight = COUINavigationBarUtil.getNavigationBarHeight(getContext());
        int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_bottom_sheet_dialog_follow_hand_margin_bottom);
        int dimensionPixelOffset2 = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_bottom_sheet_dialog_follow_hand_margin_right);
        if ((locationRectInScreen.left - measuredWidth) - dimensionPixelOffset2 <= locationRectInScreen2.left && locationRectInScreen.right + measuredWidth + dimensionPixelOffset2 >= locationRectInScreen2.right && ((locationRectInScreen.top - measuredHeight) - this.mCoordinatorLayoutMinInsetsTop) - dimensionPixelOffset <= locationRectInScreen2.top && locationRectInScreen.bottom + measuredHeight + navigationBarHeight + dimensionPixelOffset >= locationRectInScreen2.bottom) {
            Log.d(TAG, "anchor view have no enoughSpace anchorContentViewLocationRect: " + locationRectInScreen2);
            this.mDesignBottomSheetFrameLayout.setHasAnchor(false);
            this.mDesignBottomSheetFrameLayout.setElevation(0.0f);
            this.mOutsideView.setAlpha(1.0f);
            return false;
        }
        Log.d(TAG, "anchor view haveEnoughSpace");
        this.mDesignBottomSheetFrameLayout.setHasAnchor(true);
        this.mDesignBottomSheetFrameLayout.setTop(0);
        this.mDesignBottomSheetFrameLayout.setBottom(measuredHeight);
        ShadowUtils.setElevationToView(this.mDesignBottomSheetFrameLayout, 3, getContext().getResources().getDimensionPixelOffset(com.support.panel.R$dimen.coui_bottom_sheet_dialog_elevation), r.a.c(getContext(), R$color.coui_panel_follow_hand_spot_shadow_color));
        this.mOutsideView.setAlpha(0.0f);
        setCanPullUp(false);
        getBehavior().setDraggable(false);
        return true;
    }

    private void hideKeyboard() {
        InputMethodManager inputMethodManager = this.mInputMethodManager;
        if (inputMethodManager == null || !inputMethodManager.isActive()) {
            return;
        }
        if (getWindow() != null) {
            this.mAdjustResizeEnable = false;
        }
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null) {
            this.mInputMethodManager.hideSoftInputFromWindow(cOUIPanelPercentFrameLayout.getWindowToken(), 0);
        }
    }

    private void initBehavior() {
        int i10;
        boolean z10;
        if (!(getBehavior() instanceof COUIBottomSheetBehavior)) {
            throw new IllegalArgumentException("Must use COUIBottomSheetBehavior, check value of bottom_sheet_behavior in strings.xml");
        }
        COUIBottomSheetBehavior cOUIBottomSheetBehavior = (COUIBottomSheetBehavior) getBehavior();
        cOUIBottomSheetBehavior.applyPhysics(this.mPhysicsFrequency, this.mPhysicsDampingRatio);
        cOUIBottomSheetBehavior.setGlobalDrag(this.mGlobalDrag);
        cOUIBottomSheetBehavior.setIsInTinyScreen(this.mIsInTinyScreen);
        cOUIBottomSheetBehavior.setPanelPeekHeight(this.mPeekHeight);
        cOUIBottomSheetBehavior.setPanelSkipCollapsed(this.mSkipCollapsed);
        cOUIBottomSheetBehavior.setIsHandlePanel(this.mIsHandlePanel);
        if (this.mIsHandlePanel) {
            if (COUIPanelMultiWindowUtils.isNormalLandScreen(getContext(), this.mConfiguration)) {
                i10 = 4;
                z10 = true;
            } else {
                i10 = 6;
                z10 = false;
            }
            cOUIBottomSheetBehavior.setFitToContents(z10);
            cOUIBottomSheetBehavior.setGestureInsetBottomIgnored(true);
            setIsNeedOutsideViewAnim(false);
        } else {
            i10 = 3;
        }
        int i11 = this.mFirstShowCollapsed ? 4 : i10;
        cOUIBottomSheetBehavior.setPanelState(i11);
        cOUIBottomSheetBehavior.addBottomSheetCallback(new COUIBottomSheetBehavior.COUIBottomSheetCallback() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.2
            @Override // com.coui.appcompat.panel.COUIBottomSheetBehavior.COUIBottomSheetCallback
            public void onSlide(View view, float f10) {
            }

            @Override // com.coui.appcompat.panel.COUIBottomSheetBehavior.COUIBottomSheetCallback
            public void onStateChanged(View view, int i12) {
                if (COUIBottomSheetDialog.DEBUG) {
                    Log.d(COUIBottomSheetDialog.TAG, "onStateChanged: newState=" + i12);
                }
                COUIBottomSheetDialog.this.handleBehaviorStateChange(view, i12);
            }
        });
        if (DEBUG) {
            Log.d(TAG, "initBehavior: peekHeight=" + this.mPeekHeight + " mSkipCollapsed=" + this.mSkipCollapsed + " mIsHandlePanel=" + this.mIsHandlePanel + " mFirstShowCollapsed=" + this.mFirstShowCollapsed + " state=" + i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCoordinateInsets(WindowInsets windowInsets) {
        View view = this.mCoordinatorLayout;
        if (view != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            this.mCoordinatorLayoutMinInsetsTop = (int) getContext().getResources().getDimension(com.support.panel.R$dimen.coui_bottom_sheet_margin_top_default);
            if (this.mIsHandlePanel) {
                this.mCoordinatorLayoutMinInsetsTop = (int) getContext().getResources().getDimension(com.support.panel.R$dimen.coui_handle_bottom_sheet_margin_top_default);
            }
            if (this.mIsInTinyScreen) {
                if (this.mIsFullScreenInTinyScreen) {
                    this.mCoordinatorLayoutMinInsetsTop = (int) getContext().getResources().getDimension(com.support.panel.R$dimen.coui_panel_min_padding_top_tiny_screen);
                } else {
                    this.mCoordinatorLayoutMinInsetsTop = (int) getContext().getResources().getDimension(com.support.panel.R$dimen.coui_panel_normal_padding_top_tiny_screen);
                }
            }
            layoutParams.topMargin = this.mCoordinatorLayoutMinInsetsTop;
            this.mCoordinatorLayout.setLayoutParams(layoutParams);
            COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
            if (cOUIPanelContentLayout != null) {
                cOUIPanelContentLayout.setNavigationMargin(this.mConfiguration, layoutParams.bottomMargin, windowInsets);
            }
        }
    }

    private void initDraggableConstraintLayoutSize() {
        setPanelWidth();
        setPanelHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initMaxHeight(WindowInsets windowInsets) {
        boolean z10 = this.mPanelHeight >= COUIPanelMultiWindowUtils.getPanelMaxHeight(getContext(), null, windowInsets, this.mIsHandlePanel);
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null) {
            cOUIPanelPercentFrameLayout.getLayoutParams().height = (this.mIsShowInMaxHeight || z10) ? -1 : -2;
        }
        COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
        if (cOUIPanelContentLayout != null) {
            if (this.mIsShowInMaxHeight || z10) {
                cOUIPanelContentLayout.getLayoutParams().height = -1;
            }
        }
    }

    private void initNavigationView() {
        if (unNeedNavigationCustomView()) {
            if (this.mNavigationCustomView == null || !(this.mContainerFrameLayout.getParent() instanceof FrameLayout)) {
                return;
            }
            FrameLayout frameLayout = (FrameLayout) this.mContainerFrameLayout.getParent();
            if (frameLayout.indexOfChild(this.mNavigationCustomView) != -1) {
                frameLayout.removeView(this.mNavigationCustomView);
            }
            this.mNavigationCustomView = null;
            return;
        }
        if (this.mNavigationCustomView == null) {
            this.mNavigationCustomView = new View(getContext());
        }
        setNavigationBarColor(getNavColor(null));
        if (this.mContainerFrameLayout.getParent() instanceof FrameLayout) {
            FrameLayout frameLayout2 = (FrameLayout) this.mContainerFrameLayout.getParent();
            if (frameLayout2.indexOfChild(this.mNavigationCustomView) == -1) {
                frameLayout2.addView(this.mNavigationCustomView, new FrameLayout.LayoutParams(-1, Math.max(0, COUINavigationBarUtil.getNavigationBarHeight(getContext())), 80));
            }
        }
    }

    private void initPhysics() {
        if (this.mAppearStiffness == PHYSICS_UNSET) {
            this.mAppearStiffness = 200.0f;
        }
        if (this.mAppearDampingRatio == PHYSICS_UNSET) {
            this.mAppearDampingRatio = DEFAULT_SPRING_DAMPING_RATIO;
        }
        this.mAppearSpringForce = new androidx.dynamicanimation.animation.g(0.0f).f(this.mAppearStiffness).d(this.mAppearDampingRatio);
        androidx.dynamicanimation.animation.f fVarX = new androidx.dynamicanimation.animation.f(new androidx.dynamicanimation.animation.e()).x(this.mAppearSpringForce);
        this.mAppearSpringAnim = fVarX;
        fVarX.b(this);
        this.mAppearSpringAnim.a(this);
    }

    private void initThemeResources(int i10) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUIBottomSheetDialog, com.support.panel.R$attr.couiBottomSheetDialogStyle, i10);
        this.mPanelDragViewDrawable = getTypedArrayDrawable(typedArrayObtainStyledAttributes, R$styleable.COUIBottomSheetDialog_panelDragViewIcon, R$drawable.coui_panel_drag_view);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIBottomSheetDialog_panelDragViewTintColor, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorControls));
        this.mPanelDragViewDrawableTintColor = color;
        this.mPanelDragViewDrawable.setTint(color);
        this.mPanelBackground = getTypedArrayDrawable(typedArrayObtainStyledAttributes, R$styleable.COUIBottomSheetDialog_panelBackground, R$drawable.coui_panel_bg_without_shadow);
        this.mPanelBackgroundTintColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIBottomSheetDialog_panelBackgroundTintColor, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorSurface));
        this.mHandleViewHasPressAnim = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIBottomSheetDialog_couiHandleViewHasPressAnim, true);
        this.mIsShowInMaxHeight = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIBottomSheetDialog_couiShowMaxHeight, true);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIBottomSheetDialog_couiIsHandlePanel, false);
        this.mIsHandlePanel = z10;
        if (z10 && this.mSkipCollapsed) {
            this.mSkipCollapsed = false;
        }
        typedArrayObtainStyledAttributes.recycle();
        Drawable drawable = this.mPanelBackground;
        if (drawable != null) {
            drawable.setTint(this.mPanelBackgroundTintColor);
        }
    }

    private void initTranslationAndScaleSpringAnimation() {
        if (this.mTranslationAndScaleSpringAnimation == null) {
            this.mTranslationAndScaleSpringAnimation = new COUISpringAnimation(new androidx.dynamicanimation.animation.e());
            COUISpringForce cOUISpringForce = new COUISpringForce();
            this.mSpringForceTranslationAndScale = cOUISpringForce;
            cOUISpringForce.setBounce(0.0f);
            this.mTranslationAndScaleSpringAnimation.setSpring(this.mSpringForceTranslationAndScale);
        }
    }

    private void initValueResources() {
        this.mPullUpMaxOffset = (int) getContext().getResources().getDimension(com.support.panel.R$dimen.coui_panel_pull_up_max_offset);
        this.mCoordinatorLayoutMinInsetsTop = (int) getContext().getResources().getDimension(com.support.panel.R$dimen.coui_panel_min_padding_top);
        this.mCoordinatorLayoutPaddingExtra = getContext().getResources().getDimensionPixelOffset(com.support.panel.R$dimen.coui_panel_normal_padding_top);
        this.mOutsideViewBackgroundAlpha = Color.alpha(getContext().getResources().getColor(com.support.appcompat.R$color.coui_color_mask));
        boolean zIsGestureNavigation = COUINavigationBarUtil.isGestureNavigation(getContext());
        this.mIsGestureNavigation = zIsGestureNavigation;
        if (zIsGestureNavigation) {
            this.mPeekHeight = getContext().getResources().getDimensionPixelOffset(com.support.panel.R$dimen.coui_panel_default_peek_height_in_gesture);
        } else {
            this.mPeekHeight = getContext().getResources().getDimensionPixelOffset(com.support.panel.R$dimen.coui_panel_default_peek_height);
        }
    }

    private void initView() {
        this.mContainerFrameLayout = (IgnoreWindowInsetsFrameLayout) findViewById(R$id.container);
        this.mOutsideView = findViewById(R$id.panel_outside);
        this.mCoordinatorLayout = findViewById(R$id.coordinator);
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = (COUIPanelPercentFrameLayout) findViewById(com.support.appcompat.R$id.design_bottom_sheet);
        this.mDesignBottomSheetFrameLayout = cOUIPanelPercentFrameLayout;
        cOUIPanelPercentFrameLayout.setIsHandlePanel(this.mIsHandlePanel);
        this.mPanelBarView = (COUIPanelBarView) findViewById(R$id.panel_drag_bar);
        this.mDesignBottomSheetFrameLayout.getLayoutParams().height = this.mIsShowInMaxHeight ? -1 : -2;
        if (isFollowHand()) {
            this.mDesignBottomSheetFrameLayout.post(new Runnable() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.3
                @Override // java.lang.Runnable
                public void run() {
                    if (COUIBottomSheetDialog.this.haveEnoughSpace()) {
                        ShadowUtils.setElevationToView(COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout, 3, COUIBottomSheetDialog.this.getContext().getResources().getDimensionPixelOffset(com.support.panel.R$dimen.coui_bottom_sheet_dialog_elevation), r.a.c(COUIBottomSheetDialog.this.getContext(), R$color.coui_panel_follow_hand_spot_shadow_color));
                        COUIBottomSheetDialog.this.setCanPullUp(false);
                        COUIBottomSheetDialog.this.getBehavior().setDraggable(false);
                    }
                }
            });
        }
        COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
        if (cOUIPanelContentLayout != null) {
            cOUIPanelContentLayout.setLayoutAtMaxHeight(this.mIsShowInMaxHeight);
        }
        this.mPulledUpView = this.mDesignBottomSheetFrameLayout;
        checkInitState();
        this.mOutsideView.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (COUIBottomSheetDialog.this.mCancelable && COUIBottomSheetDialog.this.isShowing() && COUIBottomSheetDialog.this.mCanceledOnTouchOutside) {
                    COUIBottomSheetDialog.this.cancel();
                }
            }
        });
        this.mDesignBottomSheetFrameLayout.setBackground(this.mPanelBackground);
        initNavigationView();
    }

    private void initWindow() {
        Window window = getWindow();
        if (window != null) {
            window.setDimAmount(0.0f);
            window.setLayout(-1, -1);
            window.setGravity(80);
        }
    }

    private void initWindowInsetsListener() {
        if (this.mShouldRegisterWindowInsetsListener && getWindow() != null && this.mWindowInsetsListener == null) {
            View decorView = getWindow().getDecorView();
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = new View.OnApplyWindowInsetsListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.5
                @Override // android.view.View.OnApplyWindowInsetsListener
                public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    if (view == null || view.getLayoutParams() == null) {
                        return windowInsets;
                    }
                    if (windowInsets.equals(COUIBottomSheetDialog.this.mApplyWindowInsets)) {
                        COUILog.d(COUIBottomSheetDialog.TAG, "Window inset is not change, return!");
                        return windowInsets;
                    }
                    COUIBottomSheetDialog.this.initCoordinateInsets(windowInsets);
                    COUIBottomSheetDialog.this.initMaxHeight(windowInsets);
                    if (COUIBottomSheetDialog.this.mInputMethodManager == null) {
                        COUIBottomSheetDialog cOUIBottomSheetDialog = COUIBottomSheetDialog.this;
                        cOUIBottomSheetDialog.mInputMethodManager = (InputMethodManager) cOUIBottomSheetDialog.getContext().getSystemService("input_method");
                    }
                    boolean z10 = COUIBottomSheetDialog.this.getContext().getResources().getBoolean(R$bool.is_coui_bottom_sheet_ime_adjust_in_constraint_layout);
                    ViewGroup viewGroup = (ViewGroup) COUIBottomSheetDialog.this.findViewById(com.support.appcompat.R$id.design_bottom_sheet);
                    ViewGroup viewGroup2 = (ViewGroup) COUIBottomSheetDialog.this.findViewById(R$id.coui_panel_content_layout);
                    if (z10) {
                        viewGroup = viewGroup2;
                    }
                    ViewGroup viewGroup3 = COUIBottomSheetDialog.this.mAdjustLayout;
                    COUIBottomSheetDialog cOUIBottomSheetDialog2 = COUIBottomSheetDialog.this;
                    if (viewGroup3 != (z10 ? cOUIBottomSheetDialog2.mDraggableConstraintLayout : cOUIBottomSheetDialog2.mDesignBottomSheetFrameLayout)) {
                        COUIViewMarginUtil.setMargin(COUIBottomSheetDialog.this.mAdjustLayout, 3, 0);
                    }
                    COUIBottomSheetDialog cOUIBottomSheetDialog3 = COUIBottomSheetDialog.this;
                    cOUIBottomSheetDialog3.mAdjustLayout = z10 ? cOUIBottomSheetDialog3.mDraggableConstraintLayout : cOUIBottomSheetDialog3.mDesignBottomSheetFrameLayout;
                    if (COUIBottomSheetDialog.this.mAdjustLayout != null) {
                        viewGroup = COUIBottomSheetDialog.this.mAdjustLayout;
                    }
                    ViewGroup viewGroup4 = viewGroup;
                    if (COUIBottomSheetDialog.this.mAdjustResizeEnable) {
                        COUIBottomSheetDialog.this.getAdjustResizeHelper().adjustResize(COUIBottomSheetDialog.this.getContext(), viewGroup4, windowInsets, COUIBottomSheetDialog.this.mCoordinatorLayout, COUIBottomSheetDialog.this.getFocusChange());
                    }
                    COUIBottomSheetDialog.this.largeScreenLimitMaxSize();
                    COUIBottomSheetDialog.this.setNavigationCustomViewHeight(windowInsets);
                    COUIBottomSheetDialog.this.mApplyWindowInsets = windowInsets;
                    view.onApplyWindowInsets(COUIBottomSheetDialog.this.mApplyWindowInsets);
                    COUIBottomSheetDialog cOUIBottomSheetDialog4 = COUIBottomSheetDialog.this;
                    cOUIBottomSheetDialog4.updatePanelMarginBottom(cOUIBottomSheetDialog4.mConfiguration, COUIBottomSheetDialog.this.mApplyWindowInsets);
                    return COUIBottomSheetDialog.this.mApplyWindowInsets;
                }
            };
            this.mWindowInsetsListener = onApplyWindowInsetsListener;
            decorView.setOnApplyWindowInsetsListener(onApplyWindowInsetsListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFadeInCenter() {
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        return cOUIPanelPercentFrameLayout != null && cOUIPanelPercentFrameLayout.getRatio() == 2.0f && (getBehavior() == null || !(getBehavior() == null || getBehavior().getState() == 4));
    }

    private boolean isFadeInCenterAllState() {
        return this.mDesignBottomSheetFrameLayout.getRatio() == 2.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFollowHand() {
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout;
        return this.mAnchorView != null && (cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout) != null && cOUIPanelPercentFrameLayout.getRatio() == 2.0f && this.mAnchorView.isAttachedToWindow();
    }

    private boolean isInMultiWindowMode() {
        WeakReference<Activity> weakReference = this.mActivityWeakReference;
        return (weakReference == null || weakReference.get() == null || !COUIPanelMultiWindowUtils.isInMultiWindowMode(this.mActivityWeakReference.get())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setFrameRate$0(AnimationVelocityCalculator animationVelocityCalculator, ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
        float fCalculator = animationVelocityCalculator.calculator(this.mDesignBottomSheetFrameLayout.getHeight(), valueAnimator);
        COUILog.d(TAG, "DynamicFrameRateManager.getSuggestFrameRate: v " + fCalculator + " frame " + DynamicFrameRateManager.getSuggestFrameRate(fCalculator, 2));
        DynamicFrameRateManager.setFrameRate(this.mDesignBottomSheetFrameLayout, ANIMATION_TYPE_ID, (int) fCalculator, (Bundle) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setFrameRate$1(COUIDynamicAnimation cOUIDynamicAnimation, float f10, float f11) {
        COUILog.d(TAG, "COUISpringAnimation DynamicFrameRateManager.getSuggestFrameRate: v " + f11 + " frame " + DynamicFrameRateManager.getSuggestFrameRate(f11, 2));
        DynamicFrameRateManager.setFrameRate(this.mDesignBottomSheetFrameLayout, ANIMATION_TYPE_ID, (int) f11, (Bundle) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void largeScreenLimitMaxSize() {
        int iMax;
        int iMin;
        if (this.mDesignBottomSheetFrameLayout == null) {
            return;
        }
        int i10 = getContext().getResources().getConfiguration().screenWidthDp;
        int i11 = getContext().getResources().getConfiguration().screenHeightDp;
        if (!this.isLargeScreenLimitMaxSize || !COUIResponsiveUtils.isLargePadWindow(getContext(), i10, i11)) {
            this.mDesignBottomSheetFrameLayout.restoreDefaultMaxSize();
            return;
        }
        if (COUIPanelMultiWindowUtils.isInMultiWindowMode(COUIPanelMultiWindowUtils.contextToActivity(getContext()))) {
            float f10 = i11;
            float f11 = i10;
            int iMin2 = Math.min(UIUtil.dip2px(getContext(), f10), UIUtil.dip2px(getContext(), f11));
            iMax = Math.max(UIUtil.dip2px(getContext(), f10), UIUtil.dip2px(getContext(), f11));
            iMin = iMin2;
        } else {
            iMin = Math.min(UIUtil.getScreenHeightRealSize(getContext()), UIUtil.getScreenWidthRealSize(getContext()));
            iMax = Math.max(UIUtil.getScreenHeightRealSize(getContext()), UIUtil.getScreenWidthRealSize(getContext()));
        }
        this.mDesignBottomSheetFrameLayout.setMaxSize((int) COUIResponsiveUtils.calculateWidth(iMax, iMin, this.mDesignBottomSheetFrameLayout.getGridNumber(), this.mDesignBottomSheetFrameLayout.getPaddingType(), this.mDesignBottomSheetFrameLayout.getPaddingSize(), getContext()), iMin - (this.mCoordinatorLayoutMinInsetsTop * 2));
    }

    private boolean needHideKeyboardWhenSettling() {
        return ((COUIBottomSheetBehavior) getBehavior()).isCanHideKeyboard();
    }

    private int normalizePoints(int i10, int i11) {
        return Math.max(0, Math.min(i10, i11));
    }

    private void offsetViewTo() {
        int[] iArrCalculateFinalLocationOnScreen = calculateFinalLocationOnScreen(this.mAnchorView);
        this.mDesignBottomSheetFrameLayout.setX(iArrCalculateFinalLocationOnScreen[0]);
        this.mDesignBottomSheetFrameLayout.setY(iArrCalculateFinalLocationOnScreen[1]);
        this.mCurrentParentViewTranslationY = this.mDesignBottomSheetFrameLayout.getY();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void outsideAlphaChange(float f10, boolean z10) {
        View viewFindFocus;
        InputMethodManager inputMethodManager;
        if (this.mOutsideView != null) {
            float outsideViewAlpha = getOutsideViewAlpha(f10);
            this.mCurrentOutsideAlpha = outsideViewAlpha;
            float f11 = this.mCurrentOutSideAlphaStateHidden;
            if (f11 <= 0.0f) {
                f11 = 1.0f;
            }
            View view = this.mOutsideView;
            if (!z10) {
                outsideViewAlpha = Math.max(0.0f, 1.0f - outsideViewAlpha) * f11;
            }
            view.setAlpha(outsideViewAlpha);
        }
        boolean z11 = isFollowHand() || isFadeInCenterAllState() || shouldHandlePanelUpdateNavBarColor();
        if (this.mOutsideView != null && COUIPanelMultiWindowUtils.isVirtualNavigation(getContext()) && z11 && !this.mIsInTinyScreen) {
            if (!z10) {
                f10 = 1.0f - f10;
            }
            setNavigationBarColorAlpha(f10);
        }
        COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
        if (cOUIPanelContentLayout == null || !this.mIsNeedShowKeyboard || (viewFindFocus = cOUIPanelContentLayout.findFocus()) == null || !z10 || (inputMethodManager = this.mInputMethodManager) == null) {
            return;
        }
        inputMethodManager.showSoftInput(viewFindFocus, 0);
    }

    private void refreshParams() {
        if (COUIPanelMultiWindowUtils.isVirtualNavigation(getContext())) {
            return;
        }
        resetParentViewStyle(getContext().getResources().getConfiguration());
        resetNavigationBarColor(null);
    }

    private void registerApplicationConfigChangeListener() {
        getContext().registerComponentCallbacks(this.mComponentCallbacks);
    }

    private void registerBehaviorPullUpListener() {
        if (getBehavior() instanceof COUIBottomSheetBehavior) {
            this.mPanelPullUpListener = this.mCanPullUp ? getPanelPullUpListener() : null;
            ((COUIBottomSheetBehavior) getBehavior()).setPullUpListener(this.mPanelPullUpListener);
        }
    }

    private void registerPreDrawListener() {
        View view = this.mOutsideView;
        if (view != null) {
            view.getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
    }

    private void releaseApplicationConfigChangeListener() {
        if (this.mComponentCallbacks != null) {
            getContext().unregisterComponentCallbacks(this.mComponentCallbacks);
        }
    }

    private void releaseApplyWindowInsetsListener() {
        Window window = getWindow();
        if (window != null) {
            window.getDecorView().setOnApplyWindowInsetsListener(null);
            this.mWindowInsetsListener = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseBehaviorPullUpListener() {
        if (getBehavior() instanceof COUIBottomSheetBehavior) {
            ((COUIBottomSheetBehavior) getBehavior()).setPullUpListener(null);
            this.mPanelPullUpListener = null;
        }
    }

    private void releaseResizeHelper() {
        COUIPanelAdjustResizeHelper cOUIPanelAdjustResizeHelper = this.mAdjustResizeHelper;
        if (cOUIPanelAdjustResizeHelper != null) {
            cOUIPanelAdjustResizeHelper.releaseData();
            this.mAdjustResizeHelper = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeOnPreDrawListener() {
        View view = this.mOutsideView;
        if (view != null) {
            view.getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
    }

    private void resetAnimationFlag() {
        this.mAnimationFlag = 0;
    }

    private void resetNavigationBarColor(Configuration configuration) {
        setNavigationBarColor(getNavColor(configuration));
    }

    private void resetParentViewStyle(Configuration configuration) {
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout == null) {
            return;
        }
        COUIViewMarginUtil.setMargin(cOUIPanelPercentFrameLayout, 3, 0);
    }

    private void resetWindowImeAnimFlags() {
        this.mAdjustResizeEnable = true;
        int i10 = 0;
        this.mIsNeedShowKeyboard = false;
        Window window = getWindow();
        getAdjustResizeHelper().setWindowType(window.getAttributes().type);
        int i11 = window.getAttributes().softInputMode & 15;
        if (i11 != 5 || isInMultiWindowMode() || this.mIsInWindowFloatingMode) {
            i10 = i11;
        } else {
            this.mIsNeedShowKeyboard = true;
        }
        window.setSoftInputMode(i10 | 16);
    }

    static int resolveDialogTheme(Context context, int i10) {
        if (((i10 >>> 24) & 255) >= 1) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.support.panel.R$attr.couiBottomSheetDialogStyle, typedValue, true);
        return typedValue.resourceId;
    }

    private void restoreScreenWidth() {
        if (this.mOriginWidth == -1) {
            return;
        }
        try {
            Resources resources = getContext().getResources();
            Configuration configuration = resources.getConfiguration();
            configuration.screenWidthDp = this.mOriginWidth;
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            Log.d(TAG, "restoreScreenWidth : PreferWidth=" + this.mPreferWidth + " ,OriginWidth=" + this.mOriginWidth);
            COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
            if (cOUIPanelPercentFrameLayout != null) {
                cOUIPanelPercentFrameLayout.delPreferWidth();
            }
        } catch (Exception unused) {
            Log.d(TAG, "restoreScreenWidth : failed to updateConfiguration");
        }
    }

    private boolean reversalEnterAnimation(final Animator.AnimatorListener animatorListener) {
        COUISpringAnimation cOUISpringAnimation;
        COUISpringAnimation cOUISpringAnimation2 = this.mTranslationAndScaleSpringAnimation;
        if (cOUISpringAnimation2 == null || !cOUISpringAnimation2.isRunning() || (cOUISpringAnimation = this.mAlphaSpringAnimation) == null || !cOUISpringAnimation.isRunning()) {
            return false;
        }
        this.mTranslationAndScaleSpringAnimation.animateToFinalPosition(this.mStartValueOfTranslateAnimation);
        this.mAlphaSpringAnimation.animateToFinalPosition(this.mStartValueOfTranslateAnimation);
        this.mTranslationAndScaleSpringAnimation.removeEndListener(this.mTranslationAndScaleEndListener);
        COUIDynamicAnimation.OnAnimationEndListener onAnimationEndListener = new COUIDynamicAnimation.OnAnimationEndListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.8
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
            public void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f10, float f11) {
                if (z10) {
                    animatorListener.onAnimationCancel(null);
                } else {
                    animatorListener.onAnimationEnd(null);
                }
                COUIBottomSheetDialog.this.mTranslationAndScaleSpringAnimation.removeEndListener(COUIBottomSheetDialog.this.mTranslationAndScaleEndListenerWhenBlock);
            }
        };
        this.mTranslationAndScaleEndListenerWhenBlock = onAnimationEndListener;
        this.mTranslationAndScaleSpringAnimation.addEndListener(onAnimationEndListener);
        return true;
    }

    private void saveActivityContextToGetMultiWindowInfo(Context context) {
        if (context instanceof Activity) {
            this.mActivityWeakReference = new WeakReference<>((Activity) context);
        }
    }

    private void setContentViewLocal(View view) {
        if (this.mIsShowInDialogFragment) {
            super.setContentView(view);
        } else {
            ensureDraggableContentLayout();
            this.mDraggableConstraintLayout.removeContentView();
            this.mDraggableConstraintLayout.addContentView(view);
            super.setContentView(this.mDraggableConstraintLayout);
        }
        this.mContentView = view;
    }

    private void setDefaultSpringStartEndValue() {
        this.mStartValueOfTranslateAnimation = 0.0f;
        this.mEndValueOfTranslateAnimation = 100.0f;
    }

    private void setFocusChangeFalseIfHasnotEdittext() {
        if (this.mFocusChange == null && hasEditText((ViewGroup) getWindow().getDecorView().getRootView())) {
            this.mFocusChange = Boolean.TRUE;
        }
    }

    private void setFrameRate(final ValueAnimator valueAnimator) {
        if (!this.mIsVSdk || this.mDesignBottomSheetFrameLayout == null) {
            return;
        }
        int i10 = this.mADFRFeatureType;
        if (i10 == 2) {
            final AnimationVelocityCalculator animationVelocityCalculator = new AnimationVelocityCalculator(valueAnimator);
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.d
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f7282a.lambda$setFrameRate$0(animationVelocityCalculator, valueAnimator, valueAnimator2);
                }
            });
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.14
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    COUILog.d(COUIBottomSheetDialog.TAG, "LEVEL_HIGH_PRECISION onAnimatorEnd: DynamicFrameRateManager.FRAME_RATE_END");
                    DynamicFrameRateManager.setFrameRate(COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout, COUIBottomSheetDialog.ANIMATION_TYPE_ID, -2, (Bundle) null);
                }
            });
        } else if (i10 == 1) {
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.15
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    COUILog.d(COUIBottomSheetDialog.TAG, "LEVEL_LOW_PRECISION onAnimatorEnd: DynamicFrameRateManager.FRAME_RATE_END");
                    DynamicFrameRateManager.setFrameRate(COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout, COUIBottomSheetDialog.ANIMATION_TYPE_ID, -2, (Bundle) null);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    COUILog.d(COUIBottomSheetDialog.TAG, "LEVEL_LOW_PRECISION onAnimatorStart: DynamicFrameRateManager.LOW_PRECISION_FRAME_RATE");
                    DynamicFrameRateManager.setFrameRate(COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout, COUIBottomSheetDialog.ANIMATION_TYPE_ID, -1, (Bundle) null);
                }
            });
        } else if (i10 == 0) {
            COUILog.d(TAG, "LEVEL_DEFAULT do nothing");
        }
    }

    private void setNavigation() {
        if (!this.mIsGestureNavigation) {
            getWindow().setDecorFitsSystemWindows(false);
            getWindow().setNavigationBarContrastEnforced(false);
        } else {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | ConfigPackage.FRAME_SIZE_1);
            getWindow().setNavigationBarContrastEnforced(false);
            setNavigationBarColor(0);
        }
    }

    private void setNavigationBarColor(int i10) {
        if (unNeedNavigationCustomView()) {
            getWindow().setNavigationBarColor(i10);
        } else {
            getWindow().setNavigationBarColor(0);
        }
        setNavigationCustomViewColor(i10);
        COUILog.d(TAG, "setNavigationBarColor color: " + Integer.toHexString(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNavigationBarColorAlpha(float f10) {
        int i10 = (int) (f10 * this.mOutsideViewBackgroundAlpha);
        if (i10 > 0) {
            setNavigationBarColor(Color.argb(i10, 0, 0, 0));
        } else {
            setNavigationBarColor(0);
            getWindow().setNavigationBarContrastEnforced(false);
        }
    }

    private void setNavigationCustomViewColor(int i10) {
        View view;
        if (unNeedNavigationCustomView() || (view = this.mNavigationCustomView) == null) {
            return;
        }
        view.setBackgroundColor(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNavigationCustomViewHeight(WindowInsets windowInsets) {
        if (unNeedNavigationCustomView() || windowInsets == null || this.mNavigationCustomView == null) {
            return;
        }
        int i10 = windowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom;
        this.mNavigationCustomView.getLayoutParams().height = Math.max(0, i10);
    }

    private void setPanelHeight() {
        COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
        if (cOUIPanelContentLayout != null) {
            ViewGroup.LayoutParams layoutParams = cOUIPanelContentLayout.getLayoutParams();
            int i10 = this.mPanelHeight;
            if (i10 != 0) {
                layoutParams.height = i10;
            }
            this.mDraggableConstraintLayout.setLayoutParams(layoutParams);
        }
        WindowInsets windowInsets = this.mApplyWindowInsets;
        if (windowInsets != null) {
            initMaxHeight(windowInsets);
        }
    }

    private void setPanelWidth() {
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null) {
            ViewGroup.LayoutParams layoutParams = cOUIPanelPercentFrameLayout.getLayoutParams();
            int i10 = this.mPanelWidth;
            if (i10 != 0) {
                layoutParams.width = i10;
            }
            this.mDesignBottomSheetFrameLayout.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPulledUpViewPaddingBottom(int i10) {
        View view = this.mPulledUpView;
        if (view != null) {
            view.setPadding(view.getPaddingLeft(), this.mPulledUpView.getPaddingTop(), this.mPulledUpView.getPaddingRight(), i10);
        }
    }

    private void setSpringStartPosition(float f10) {
        this.mAppearSpringAnim.m(f10);
    }

    private void setStatusBarTransparentAndFont(Window window) {
        if (window == null) {
            return;
        }
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        int i10 = systemUiVisibility | 1024;
        window.setStatusBarColor(0);
        window.addFlags(Integer.MIN_VALUE);
        decorView.setSystemUiVisibility(COUIDarkModeUtil.isNightMode(getContext()) ? i10 & (-8209) : systemUiVisibility | 1280);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldHandlePanelUpdateNavBarColor() {
        if (this.mIsHandlePanel) {
            return COUIPanelMultiWindowUtils.isNormalLandScreen(getContext(), this.mConfiguration);
        }
        return false;
    }

    private void snapToTop() {
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null) {
            this.mSnapStartBottom = cOUIPanelPercentFrameLayout.getBottom();
        }
        this.mIsAppearSpringAnimStared = true;
        this.mAppearSpringAnim.p();
    }

    private void startListeningForBackCallbacks(View view) {
        OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33 && (onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) != null) {
            OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: com.coui.appcompat.panel.b
                public final void onBackInvoked() {
                    this.f7280a.dismiss();
                }
            };
            this.mOnBackInvokedCallback = onBackInvokedCallback;
            onBackInvokedDispatcherFindOnBackInvokedDispatcher.registerOnBackInvokedCallback(0, onBackInvokedCallback);
        }
    }

    private void startReleaseAnim(Animator.AnimatorListener animatorListener) {
        if (animatorListener != null) {
            this.mPanelViewTranslationAnimationSet.addListener(animatorListener);
        }
        this.mPanelViewTranslationAnimationSet.start();
    }

    private void startReleaseAnimInTinyScreen(float f10, float f11, float f12, Animator.AnimatorListener animatorListener) {
        this.mPanelViewTranslationAnimationSet.playTogether(createPanelTranslateAnimation(f10, f11, this.mTranslateHidingDuration, new COUIOutEaseInterpolator()), createOutsideAlphaAnimation(false, DEFAULT_ALPHA_HIDING_ANIMATOR_DURATION, new COUIEaseInterpolator()));
        startReleaseAnim(animatorListener);
    }

    private void startShowingAnim(Animator.AnimatorListener animatorListener) {
        if (animatorListener != null) {
            this.mPanelViewTranslationAnimationSet.addListener(animatorListener);
        }
        this.mPanelViewTranslationAnimationSet.start();
    }

    private void startShowingAnimInTinyScreen(int i10, Animator.AnimatorListener animatorListener) {
        this.mPanelViewTranslationAnimationSet.playTogether(createOutsideAlphaAnimation(true, SHOW_HEIGHT_ANIM_DURATION_IN_TINY_SCREEN, (PathInterpolator) OUTSIDE_ALPHA_ANIM_INTERPOLATOR));
        setSpringStartPosition(this.mFirstShowCollapsed ? this.mPeekHeight : getContentViewHeightWithMargins() + i10);
        snapToTop();
        startShowingAnim(animatorListener);
    }

    private void stopCurrentRunningViewTranslationAnim() {
        AnimatorSet animatorSet = this.mPanelViewTranslationAnimationSet;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.mIsInterruptingAnim = true;
            this.mPanelViewTranslationAnimationSet.end();
        }
        COUISpringAnimation cOUISpringAnimation = this.mTranslationAndScaleSpringAnimation;
        if (cOUISpringAnimation != null && cOUISpringAnimation.isRunning()) {
            this.mTranslationAndScaleSpringAnimation.cancel();
        }
        COUISpringAnimation cOUISpringAnimation2 = this.mAlphaSpringAnimation;
        if (cOUISpringAnimation2 != null && cOUISpringAnimation2.isRunning()) {
            this.mAlphaSpringAnimation.cancel();
        }
        if (this.mIsInTinyScreen && this.mIsAppearSpringAnimStared) {
            this.mAppearSpringAnim.c();
        }
    }

    private void stopFeedbackAnimation() {
        u2.e eVar = this.mDisableFastCloseFeedbackSpring;
        if (eVar == null || eVar.g() == 0.0d) {
            return;
        }
        this.mDisableFastCloseFeedbackSpring.k();
        this.mDisableFastCloseFeedbackSpring = null;
    }

    private void stopListeningForBackCallbacks(View view) {
        OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) == null || (onBackInvokedCallback = this.mOnBackInvokedCallback) == null) {
            return;
        }
        onBackInvokedDispatcherFindOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackInvokedCallback);
        this.mOnBackInvokedCallback = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void superDismiss() {
        if (DEBUG) {
            Log.d(TAG, "superDismiss");
        }
        try {
            super.dismiss();
            OnAnimationListener onAnimationListener = this.mAnimationListener;
            if (onAnimationListener != null) {
                onAnimationListener.onDismissAnimationEnd();
            }
        } catch (Exception e10) {
            Log.e(TAG, e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void translateUpdate(float f10) {
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null) {
            cOUIPanelPercentFrameLayout.setTranslationY(f10);
            if (!this.mIsInterruptingAnim) {
                this.mCurrentParentViewTranslationY = f10;
            }
            this.mIsInterruptingAnim = false;
        }
    }

    private boolean unNeedNavigationCustomView() {
        return this.mIsGestureNavigation || this.mDesignBottomSheetFrameLayout == null;
    }

    private void updateBottomSheetCenterVertical() {
        View view = this.mCoordinatorLayout;
        if (view == null) {
            Log.w(TAG, "updateBottomSheetCenterVertical: directly return for mCoordinatorLayout is null");
            return;
        }
        if (this.mDesignBottomSheetFrameLayout == null) {
            Log.i(TAG, "updateBottomSheetCenterVertical: directly return for mDesignBottomSheetFrameLayout is null");
            return;
        }
        int measuredHeight = view.getMeasuredHeight();
        int iMax = (int) Math.max(0.0f, ((measuredHeight - (this.mDesignBottomSheetFrameLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams ? ((ViewGroup.MarginLayoutParams) r1).bottomMargin : 0)) / this.mDesignBottomSheetFrameLayout.getRatio()) - (this.mDesignBottomSheetFrameLayout.getHeight() / this.mDesignBottomSheetFrameLayout.getRatio()));
        if (this.mDesignBottomSheetFrameLayout.getBottom() + iMax <= measuredHeight) {
            this.mDesignBottomSheetFrameLayout.setY(iMax);
        }
    }

    private void updateFitToContents() {
        if (this.mIsHandlePanel) {
            COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
            if (cOUIPanelPercentFrameLayout == null) {
                Log.e(TAG, "updateFitToContents: mDesignBottomSheetFrameLayout is null");
            } else {
                COUIBottomSheetBehavior.from(cOUIPanelPercentFrameLayout).setFitToContents(COUIPanelMultiWindowUtils.isNormalLandScreen(getContext(), this.mConfiguration));
            }
        }
    }

    private void updateListeningForBackCallbacks() {
        if (this.mCancelable) {
            startListeningForBackCallbacks(this.mDesignBottomSheetFrameLayout);
        } else {
            stopListeningForBackCallbacks(this.mDesignBottomSheetFrameLayout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePanelMarginBottom(Configuration configuration, WindowInsets windowInsets) {
        if (windowInsets == null || configuration == null) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) this.mDesignBottomSheetFrameLayout.getLayoutParams())).bottomMargin = COUIPanelMultiWindowUtils.getPanelMarginBottom(getContext(), configuration, windowInsets, this.mIsHandlePanel);
    }

    public boolean canPullUp() {
        return this.mCanPullUp;
    }

    public void delPreferWidth() {
        restoreScreenWidth();
        this.mPreferWidth = -1;
        this.mOriginWidth = -1;
        Log.d(TAG, "delPreferWidth");
    }

    @Override // androidx.appcompat.app.o, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        stopFeedbackAnimation();
        dismiss(true);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        COUIPanelContentLayout cOUIPanelContentLayout;
        if (motionEvent.getAction() == 1 && (cOUIPanelContentLayout = this.mDraggableConstraintLayout) != null && cOUIPanelContentLayout.mIsTurnOnAnim) {
            cOUIPanelContentLayout.mIsTurnOnAnim = false;
            cOUIPanelContentLayout.dragBgEndAnim();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public COUIPanelAdjustResizeHelper getAdjustResizeHelper() {
        if (this.mAdjustResizeHelper == null) {
            this.mAdjustResizeHelper = new COUIPanelAdjustResizeHelper();
        }
        return this.mAdjustResizeHelper;
    }

    public boolean getCanPerformHapticFeedback() {
        return this.mCanPerformHapticFeedback;
    }

    public Button getCenterButton() {
        if (getWindow() != null) {
            return (Button) getWindow().findViewById(R.id.button3);
        }
        return null;
    }

    public View getContentView() {
        return this.mContentView;
    }

    public int getDialogHeight() {
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null) {
            return cOUIPanelPercentFrameLayout.getHeight();
        }
        return 0;
    }

    public int getDialogMaxHeight() {
        View view = this.mCoordinatorLayout;
        if (view != null) {
            return view.getMeasuredHeight();
        }
        return 0;
    }

    public COUIPanelContentLayout getDragableLinearLayout() {
        return this.mDraggableConstraintLayout;
    }

    public boolean getIsHandlePanel() {
        return this.mIsHandlePanel;
    }

    public boolean getIsInWindowFloatingMode() {
        return this.mIsInWindowFloatingMode;
    }

    public Button getLeftButton() {
        if (getWindow() != null) {
            return (Button) getWindow().findViewById(R.id.button2);
        }
        return null;
    }

    float getOutsideViewAlpha(float f10) {
        return !this.mIsInTinyScreen ? f10 : Math.max(0.0f, f10 - 0.5f) * 2.0f;
    }

    public int getPeekHeight() {
        return this.mPeekHeight;
    }

    public Button getRightButton() {
        if (getWindow() != null) {
            return (Button) getWindow().findViewById(R.id.button1);
        }
        return null;
    }

    @Override // android.app.Dialog
    public void hide() {
        COUIPanelContentLayout cOUIPanelContentLayout;
        if (!this.mIsShowInDialogFragment || (cOUIPanelContentLayout = this.mDraggableConstraintLayout) == null || cOUIPanelContentLayout.findFocus() == null) {
            super.hide();
        }
    }

    public void hideDragView() {
        COUIPanelBarView cOUIPanelBarView = this.mPanelBarView;
        if (cOUIPanelBarView != null) {
            cOUIPanelBarView.setVisibility(4);
        }
        COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
        if (cOUIPanelContentLayout == null || cOUIPanelContentLayout.getDrawLayout() == null) {
            return;
        }
        setHideDragViewHeight();
        this.mDraggableConstraintLayout.getDrawLayout().setVisibility(4);
        if (this.mDraggableConstraintLayout.getDragBgView() != null) {
            this.mDraggableConstraintLayout.getDragBgView().setVisibility(8);
        }
    }

    public boolean isFirstShowCollapsed() {
        return this.mFirstShowCollapsed;
    }

    public boolean isSkipCollapsed() {
        return this.mSkipCollapsed;
    }

    @Override // androidx.dynamicanimation.animation.c.q
    public void onAnimationEnd(androidx.dynamicanimation.animation.c cVar, boolean z10, float f10, float f11) {
        this.mIsAppearSpringAnimStared = false;
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null && this.mSnapStartBottom != -1) {
            cOUIPanelPercentFrameLayout.layout(cOUIPanelPercentFrameLayout.getLeft(), this.mDesignBottomSheetFrameLayout.getTop(), this.mDesignBottomSheetFrameLayout.getRight(), this.mSnapStartBottom);
        }
        this.mSnapStartBottom = -1;
        BottomSheetDialogAnimatorListener bottomSheetDialogAnimatorListener = this.mBottomSheetDialogAnimatorListener;
        if (bottomSheetDialogAnimatorListener != null) {
            bottomSheetDialogAnimatorListener.onBottomSheetDialogExpanded();
        }
    }

    @Override // androidx.dynamicanimation.animation.c.r
    public void onAnimationUpdate(androidx.dynamicanimation.animation.c cVar, float f10, float f11) {
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout == null || this.mSnapStartBottom == -1) {
            return;
        }
        if (f10 < 0.0f) {
            cOUIPanelPercentFrameLayout.layout(cOUIPanelPercentFrameLayout.getLeft(), this.mDesignBottomSheetFrameLayout.getTop(), this.mDesignBottomSheetFrameLayout.getRight(), (int) (this.mSnapStartBottom - f10));
        }
        this.mDesignBottomSheetFrameLayout.setTranslationY(f10);
        if (!this.mIsInterruptingAnim) {
            this.mCurrentParentViewTranslationY = this.mDesignBottomSheetFrameLayout.getTranslationY();
        }
        this.mIsInterruptingAnim = false;
    }

    @Override // com.google.android.material.bottomsheet.a, android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        enforceChangeScreenWidth();
        refreshParams();
        resetWindowImeAnimFlags();
        setStatusBarTransparentAndFont(getWindow());
        registerPreDrawListener();
        registerApplicationConfigChangeListener();
        registerBehaviorPullUpListener();
        initWindowInsetsListener();
        setNavigation();
        if (this.mDesignBottomSheetFrameLayout != null) {
            updateListeningForBackCallbacks();
        }
    }

    @Override // com.google.android.material.bottomsheet.a, androidx.appcompat.app.o, androidx.activity.q, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mConfiguration = getContext().getResources().getConfiguration();
        int identifier = getContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            this.mStatusBarHeight = getContext().getResources().getDimensionPixelSize(identifier);
        }
        if (this.mIsInTinyScreen) {
            initPhysics();
        }
        initBehavior();
        initWindow();
        initDraggableConstraintLayoutSize();
        if (this.mFrameRate && COUIVersionUtil.checkOPlusViewSubSDK(34, 10)) {
            this.mADFRFeatureType = DynamicFrameRateManager.getDynamicFrameRateType();
            this.mIsVSdk = true;
        }
    }

    @Override // com.google.android.material.bottomsheet.a, android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        releaseResizeHelper();
        releaseApplyWindowInsetsListener();
        cancelAnim(this.mPanelViewTranslationAnimationSet);
        cancelAnim(this.mTranslationAndScaleSpringAnimation);
        cancelAnim(this.mAlphaSpringAnimation);
        releaseApplicationConfigChangeListener();
        releaseBehaviorPullUpListener();
        restoreScreenWidth();
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null) {
            stopListeningForBackCallbacks(cOUIPanelPercentFrameLayout);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog
    public void onRestoreInstanceState(Bundle bundle) {
        this.mFocusChange = Boolean.valueOf(bundle.getBoolean(STATE_FOCUS_CHANGES, getFocusChange()));
        super.onRestoreInstanceState(bundle);
    }

    @Override // androidx.activity.q, android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putBoolean(STATE_FOCUS_CHANGES, getFocusChange());
        return bundleOnSaveInstanceState;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        if (z10) {
            setFocusChangeFalseIfHasnotEdittext();
        }
        super.onWindowFocusChanged(z10);
    }

    public void refresh() {
        if (this.mDraggableConstraintLayout == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUIBottomSheetDialog, 0, R$style.DefaultBottomSheetDialog);
        this.mPanelDragViewDrawable = getTypedArrayDrawable(typedArrayObtainStyledAttributes, R$styleable.COUIBottomSheetDialog_panelDragViewIcon, R$drawable.coui_panel_drag_view);
        this.mPanelDragViewDrawableTintColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIBottomSheetDialog_panelDragViewTintColor, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorControls));
        this.mPanelBackground = getTypedArrayDrawable(typedArrayObtainStyledAttributes, R$styleable.COUIBottomSheetDialog_panelBackground, R$drawable.coui_panel_bg_without_shadow);
        this.mPanelBackgroundTintColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIBottomSheetDialog_panelBackgroundTintColor, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorSurface));
        typedArrayObtainStyledAttributes.recycle();
        Drawable drawable = this.mPanelDragViewDrawable;
        if (drawable != null && this.mDraggableConstraintLayout != null) {
            drawable.setTint(this.mPanelDragViewDrawableTintColor);
            this.mDraggableConstraintLayout.setDragViewDrawable(this.mPanelDragViewDrawable);
            this.mDraggableConstraintLayout.refresh();
        }
        Drawable drawable2 = this.mPanelBackground;
        if (drawable2 == null || this.mDraggableConstraintLayout == null) {
            return;
        }
        drawable2.setTint(this.mPanelBackgroundTintColor);
        this.mDraggableConstraintLayout.setBackground(this.mIsShowInDialogFragment ? this.mPanelBackground : null);
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null) {
            cOUIPanelPercentFrameLayout.setBackground(this.mPanelBackground);
        }
    }

    public void setAnchorView(View view) {
        if (view != null) {
            Log.e(TAG, "setAnchorView: ---------");
            this.mAnchorView = view;
            getBehavior().setDraggable(false);
        }
    }

    public void setAnimationListener(OnAnimationListener onAnimationListener) {
        this.mAnimationListener = onAnimationListener;
    }

    public void setBottomButtonBar(boolean z10, String str, View.OnClickListener onClickListener, String str2, View.OnClickListener onClickListener2, String str3, View.OnClickListener onClickListener3) {
        ensureDraggableContentLayout();
        this.mDraggableConstraintLayout.setUpBottomBar(z10, str, onClickListener, str2, onClickListener2, str3, onClickListener3);
    }

    public void setBottomSheetDialogAnimatorListener(BottomSheetDialogAnimatorListener bottomSheetDialogAnimatorListener) {
        this.mBottomSheetDialogAnimatorListener = bottomSheetDialogAnimatorListener;
    }

    public void setCanPerformHapticFeedback(boolean z10) {
        this.mCanPerformHapticFeedback = z10;
    }

    public void setCanPullUp(boolean z10) {
        if (this.mCanPullUp != z10) {
            this.mCanPullUp = z10;
            if (getBehavior() instanceof COUIBottomSheetBehavior) {
                this.mPanelPullUpListener = this.mCanPullUp ? getPanelPullUpListener() : null;
                ((COUIBottomSheetBehavior) getBehavior()).setPullUpListener(this.mPanelPullUpListener);
            }
        }
    }

    @Override // com.google.android.material.bottomsheet.a, android.app.Dialog
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        if (this.mCancelable != z10) {
            this.mCancelable = z10;
            if (this.mDesignBottomSheetFrameLayout == null || getWindow() == null) {
                return;
            }
            updateListeningForBackCallbacks();
        }
    }

    @Override // com.google.android.material.bottomsheet.a, android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
        if (z10 && !this.mCancelable) {
            this.mCancelable = true;
            if (this.mDesignBottomSheetFrameLayout != null && getWindow() != null) {
                startListeningForBackCallbacks(this.mDesignBottomSheetFrameLayout);
            }
        }
        this.mCanceledOnTouchOutside = z10;
    }

    public void setCenterButton(String str, View.OnClickListener onClickListener) {
        ensureDraggableContentLayout();
        this.mDraggableConstraintLayout.setCenterButton(str, onClickListener);
    }

    @Override // com.google.android.material.bottomsheet.a, androidx.appcompat.app.o, androidx.activity.q, android.app.Dialog
    public void setContentView(int i10) {
        setContentView(getLayoutInflater().inflate(i10, (ViewGroup) null));
    }

    public void setDialogOffsetListener(DialogOffsetListener dialogOffsetListener) {
        this.mDialogOffsetListener = dialogOffsetListener;
    }

    public void setDisableSubExpand(boolean z10) {
        this.mDisableSubExpand = z10;
    }

    public void setDragableLinearLayout(COUIPanelContentLayout cOUIPanelContentLayout) {
        setDragableLinearLayout(cOUIPanelContentLayout, false);
    }

    public void setDraggable(boolean z10) {
        if (this.mIsDraggable != z10) {
            this.mIsDraggable = z10;
            getBehavior().setDraggable(this.mIsDraggable);
        }
    }

    @Deprecated
    public void setExecuteNavColorAnimAfterDismiss(boolean z10) {
        this.mIsExecuteNavColorAnimAfterDismiss = z10;
    }

    @Deprecated
    public void setFinalNavColorAfterDismiss(int i10) {
        this.mFinalNavColorAfterDismiss = i10;
    }

    public void setFirstShowCollapsed(boolean z10) {
        this.mFirstShowCollapsed = z10;
    }

    public void setFollowWindowChange(boolean z10) {
        this.mFocusChange = Boolean.valueOf(z10);
    }

    public void setGlobalDrag(boolean z10) {
        this.mGlobalDrag = z10;
    }

    public void setHandleViewHasPressAnim(boolean z10) {
        if (this.mHandleViewHasPressAnim != z10) {
            this.mHandleViewHasPressAnim = z10;
            COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
            if (cOUIPanelContentLayout == null) {
                return;
            }
            if (z10) {
                cOUIPanelContentLayout.setDragViewPressAnim(true);
            } else {
                cOUIPanelContentLayout.removeDragViewPressAnim();
            }
        }
    }

    public void setHeight(int i10) {
        this.mPanelHeight = i10;
        setPanelHeight();
    }

    public void setHideDragViewHeight(int i10) {
        COUIPanelContentLayout cOUIPanelContentLayout;
        this.mHideDragViewHeight = i10;
        if (this.mIsHandlePanel || (cOUIPanelContentLayout = this.mDraggableConstraintLayout) == null || cOUIPanelContentLayout.getDrawLayout() == null) {
            return;
        }
        setHideDragViewHeight();
    }

    public void setIsHandlePanel(boolean z10) {
        if (this.mIsHandlePanel != z10) {
            this.mIsHandlePanel = z10;
            if (this.mDraggableConstraintLayout == null) {
                return;
            }
            if (z10) {
                showDragView();
            } else {
                hideDragView();
            }
        }
    }

    public void setIsInTinyScreen(boolean z10, boolean z11) {
        this.mIsInTinyScreen = z10;
        this.mIsFullScreenInTinyScreen = z11;
    }

    public void setIsInWindowFloatingMode(boolean z10) {
        this.mIsInWindowFloatingMode = z10;
    }

    public void setIsNeedOutsideViewAnim(boolean z10) {
        this.mIsNeedOutsideViewAnim = z10;
    }

    public void setIsShowInMaxHeight(boolean z10) {
        this.mIsShowInMaxHeight = z10;
        int i10 = z10 ? -1 : -2;
        COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
        if (cOUIPanelContentLayout != null) {
            cOUIPanelContentLayout.setLayoutAtMaxHeight(z10);
        }
        COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
        if (cOUIPanelPercentFrameLayout != null) {
            ViewGroup.LayoutParams layoutParams = cOUIPanelPercentFrameLayout.getLayoutParams();
            layoutParams.height = i10;
            this.mDesignBottomSheetFrameLayout.setLayoutParams(layoutParams);
        }
    }

    public void setLeftButton(String str, View.OnClickListener onClickListener) {
        ensureDraggableContentLayout();
        this.mDraggableConstraintLayout.setLeftButton(str, onClickListener);
    }

    public void setNavColor(int i10) {
        this.mNavColor = i10;
        if (getWindow() != null) {
            setNavigationBarColor(getNavColor(null));
        }
    }

    public void setOutSideViewTouchListener(View.OnTouchListener onTouchListener) {
        if (this.mOutsideView == null) {
            this.mOutsideView = findViewById(R$id.panel_outside);
        }
        this.mOutSideViewTouchListener = onTouchListener;
        View view = this.mOutsideView;
        if (view != null) {
            view.setOnTouchListener(onTouchListener);
        }
    }

    public void setOutsideMaskColor(int i10) {
        View view = this.mOutsideView;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    public void setPanelBackground(Drawable drawable) {
        if (this.mDesignBottomSheetFrameLayout == null || drawable == null || this.mPanelBackground == drawable) {
            return;
        }
        this.mPanelBackground = drawable;
        COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
        if (cOUIPanelContentLayout != null) {
            if (!this.mIsShowInDialogFragment) {
                drawable = null;
            }
            cOUIPanelContentLayout.setBackground(drawable);
        }
        this.mDesignBottomSheetFrameLayout.setBackground(this.mPanelBackground);
    }

    public void setPanelBackgroundTintColor(int i10) {
        Drawable drawable;
        if (this.mDesignBottomSheetFrameLayout == null || (drawable = this.mPanelBackground) == null || this.mPanelBackgroundTintColor == i10) {
            return;
        }
        this.mPanelBackgroundTintColor = i10;
        drawable.setTint(i10);
        COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
        if (cOUIPanelContentLayout != null) {
            cOUIPanelContentLayout.setBackground(this.mIsShowInDialogFragment ? this.mPanelBackground : null);
        }
        this.mDesignBottomSheetFrameLayout.setBackground(this.mPanelBackground);
    }

    public void setPanelBarViewColor(int i10) {
        COUIPanelBarView cOUIPanelBarView = this.mPanelBarView;
        if (cOUIPanelBarView != null) {
            cOUIPanelBarView.setBarColor(i10);
        }
    }

    public void setPanelDismissTranslateDuration(float f10) {
        this.mTranslateHidingDuration = f10;
    }

    public void setPanelDragViewDrawable(Drawable drawable) {
        COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
        if (cOUIPanelContentLayout == null || drawable == null || this.mPanelDragViewDrawable == drawable) {
            return;
        }
        this.mPanelDragViewDrawable = drawable;
        cOUIPanelContentLayout.setDragViewDrawable(drawable);
    }

    public void setPanelDragViewDrawableTintColor(int i10) {
        Drawable drawable;
        if (this.mDraggableConstraintLayout == null || (drawable = this.mPanelDragViewDrawable) == null || this.mPanelDragViewDrawableTintColor == i10) {
            return;
        }
        this.mPanelDragViewDrawableTintColor = i10;
        drawable.setTint(i10);
        this.mDraggableConstraintLayout.setDragViewDrawable(this.mPanelDragViewDrawable);
    }

    public void setPeekHeight(int i10) {
        this.mPeekHeight = i10;
    }

    public void setPhysicsParams(float f10, float f11) {
        this.mAppearStiffness = f10;
        this.mAppearDampingRatio = f11;
    }

    public void setPreferWidth(int i10) {
        this.mPreferWidth = i10;
        Log.d(TAG, "setPreferWidth =：" + this.mPreferWidth);
    }

    public void setRegisterConfigurationChangeCallBack(boolean z10) {
        this.mRegisterConfigurationChangeCallBack = z10;
    }

    public void setRightButton(String str, View.OnClickListener onClickListener) {
        ensureDraggableContentLayout();
        this.mDraggableConstraintLayout.setRightButton(str, onClickListener);
    }

    public void setShouldRegisterWindowInsetsListener(boolean z10) {
        this.mShouldRegisterWindowInsetsListener = z10;
    }

    void setShowInDialogFragment(boolean z10) {
        this.mIsShowInDialogFragment = z10;
    }

    public void setSkipCollapsed(boolean z10) {
        this.mSkipCollapsed = z10;
    }

    public void setWidth(int i10) {
        this.mPanelWidth = i10;
        setPanelWidth();
    }

    public void showDragView() {
        COUIPanelBarView cOUIPanelBarView = this.mPanelBarView;
        if (cOUIPanelBarView != null) {
            cOUIPanelBarView.setVisibility(0);
        }
        COUIPanelContentLayout cOUIPanelContentLayout = this.mDraggableConstraintLayout;
        if (cOUIPanelContentLayout == null || cOUIPanelContentLayout.getDrawLayout() == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mDraggableConstraintLayout.getDrawLayout().getLayoutParams();
        marginLayoutParams.height = getContext().getResources().getDimensionPixelSize(com.support.panel.R$dimen.coui_panel_drag_view_height);
        marginLayoutParams.topMargin = getContext().getResources().getDimensionPixelSize(com.support.panel.R$dimen.coui_panel_drag_view_shadow_margin_top);
        this.mDraggableConstraintLayout.getDrawLayout().setLayoutParams(marginLayoutParams);
        this.mDraggableConstraintLayout.getDrawLayout().setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T typeCasting(Class<T> cls, Object obj) {
        if (obj == 0 || !cls.isInstance(obj)) {
            return null;
        }
        return obj;
    }

    public boolean updateFollowHandPanelLocation() {
        if (this.mDesignBottomSheetFrameLayout == null) {
            Log.e(TAG, "update follow hand panel while config change error.");
            return false;
        }
        boolean zIsFollowHand = isFollowHand();
        this.mDesignBottomSheetFrameLayout.setHasAnchor(zIsFollowHand);
        boolean zHaveEnoughSpace = haveEnoughSpace();
        if (zIsFollowHand && zHaveEnoughSpace) {
            this.mOutsideView.setAlpha(0.0f);
            this.mCurrentOutsideAlpha = 0.0f;
            offsetViewTo();
            return true;
        }
        updateBottomSheetCenterVertical();
        this.mDesignBottomSheetFrameLayout.setElevation(0.0f);
        this.mOutsideView.setAlpha(1.0f);
        this.mCurrentOutsideAlpha = 1.0f;
        this.mDesignBottomSheetFrameLayout.setTranslationY(0.0f);
        this.mDesignBottomSheetFrameLayout.setTranslationX(0.0f);
        return true;
    }

    public void updateLayoutWhileConfigChange(Configuration configuration) {
        enforceChangeScreenWidth(configuration);
        this.mConfiguration = configuration;
        this.mIsGestureNavigation = COUINavigationBarUtil.isGestureNavigation(getContext());
        getAdjustResizeHelper().resetInnerStatus();
        resetParentViewStyle(configuration);
        if (!this.mIsHandlePanel || COUIPanelMultiWindowUtils.isNormalScreen(getContext(), this.mConfiguration)) {
            resetNavigationBarColor(configuration);
        }
        setNavigation();
        if (this.mDesignBottomSheetFrameLayout != null) {
            largeScreenLimitMaxSize();
            this.mDesignBottomSheetFrameLayout.updateLayoutWhileConfigChange(configuration);
        }
        updateFitToContents();
        initNavigationView();
    }

    public COUIBottomSheetDialog(Context context, boolean z10, DialogInterface.OnCancelListener onCancelListener) {
        this(context, R$style.DefaultBottomSheetDialog);
        setCancelable(z10);
        setOnCancelListener(onCancelListener);
    }

    @Override // com.google.android.material.bottomsheet.a, androidx.appcompat.app.o, androidx.activity.q, android.app.Dialog
    public void setContentView(View view) {
        if (view == null) {
            throw new IllegalArgumentException("ContentView can't be null");
        }
        COUIThemeOverlay.getInstance().applyThemeOverlays(getContext());
        setContentViewLocal(view);
        initView();
    }

    public void setDragableLinearLayout(COUIPanelContentLayout cOUIPanelContentLayout, boolean z10) {
        this.mDraggableConstraintLayout = cOUIPanelContentLayout;
        if (!this.mIsHandlePanel) {
            hideDragView();
        }
        if (cOUIPanelContentLayout != null) {
            this.mPulledUpView = (ViewGroup) this.mDraggableConstraintLayout.getParent();
            cOUIPanelContentLayout.setLayoutAtMaxHeight(this.mIsShowInMaxHeight);
            if (this.mHandleViewHasPressAnim) {
                cOUIPanelContentLayout.setDragViewPressAnim(true);
            }
            cOUIPanelContentLayout.setDragViewDrawable(this.mPanelDragViewDrawable);
        }
        if (z10) {
            refresh();
        } else if (cOUIPanelContentLayout != null) {
            cOUIPanelContentLayout.setNavigationMargin(null, COUIViewMarginUtil.getMargin(this.mCoordinatorLayout, 3), this.mApplyWindowInsets);
        }
        initDraggableConstraintLayoutSize();
    }

    private void cancelAnim(COUISpringAnimation cOUISpringAnimation) {
        if (cOUISpringAnimation == null || !cOUISpringAnimation.isRunning()) {
            return;
        }
        cOUISpringAnimation.cancel();
    }

    public void dismiss(boolean z10) {
        if (isShowing() && z10 && !this.mIsExecutingDismissAnim) {
            hideKeyboard();
            if (getBehavior().getState() == 5) {
                dismissWithAlphaAnim();
                return;
            } else {
                dismissWithInterruptibleAnim();
                return;
            }
        }
        superDismiss();
    }

    private void setHideDragViewHeight() {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mDraggableConstraintLayout.getDrawLayout().getLayoutParams();
        int i10 = this.mHideDragViewHeight;
        if (i10 > 0) {
            marginLayoutParams.height = i10;
        } else {
            marginLayoutParams.height = getContext().getResources().getDimensionPixelSize(com.support.panel.R$dimen.coui_panel_drag_view_hide_height);
        }
        marginLayoutParams.topMargin = 0;
        this.mDraggableConstraintLayout.getDrawLayout().setLayoutParams(marginLayoutParams);
    }

    public COUIBottomSheetDialog(Context context, int i10, float f10, float f11) {
        this(context, i10);
        this.mPhysicsFrequency = f10;
        this.mPhysicsDampingRatio = f11;
    }

    public COUIBottomSheetDialog(Context context, int i10) {
        super(context, resolveDialogTheme(context, i10));
        this.mHandleViewHasPressAnim = true;
        this.mIsShowInDialogFragment = false;
        this.mCancelable = true;
        this.mCanceledOnTouchOutside = true;
        this.mCanPullUp = true;
        this.mCurrentSpringTotalOffset = 0;
        this.mCoordinatorLayoutMinInsetsTop = 0;
        this.mCoordinatorLayoutPaddingExtra = 0;
        this.mPeekHeight = 0;
        this.mSkipCollapsed = true;
        this.mFirstShowCollapsed = false;
        this.mCurrentParentViewTranslationY = 0.0f;
        this.mCurrentOutsideAlpha = 0.0f;
        this.mIsInterruptingAnim = false;
        this.mWindowInsetsListener = null;
        this.mPanelPullUpListener = null;
        this.mNavColor = Integer.MAX_VALUE;
        this.mWindowInsetsAnimEnable = false;
        this.mIsInWindowFloatingMode = false;
        this.mCanPerformHapticFeedback = false;
        this.mRegisterConfigurationChangeCallBack = true;
        this.mIsNeedShowKeyboard = false;
        this.mIsNeedOutsideViewAnim = true;
        this.mFocusChange = null;
        this.mIsDraggable = true;
        this.mTranslateHidingDuration = DEFAULT_TRANSLATE_HIDING_ANIMATOR_DURATION;
        this.mPanelBarView = null;
        this.mBottomSheetDialogAnimatorListener = null;
        this.mDisableSubExpand = false;
        this.mGlobalDrag = true;
        this.mPhysicsFrequency = PHYSICS_UNSET;
        this.mPhysicsDampingRatio = PHYSICS_UNSET;
        this.mAnchorView = null;
        this.mStatusBarHeight = 0;
        this.mSnapStartBottom = -1;
        this.mAppearStiffness = PHYSICS_UNSET;
        this.mAppearDampingRatio = PHYSICS_UNSET;
        this.mIsAppearSpringAnimStared = false;
        this.mShouldRegisterWindowInsetsListener = true;
        this.mPreferWidth = -1;
        this.mOriginWidth = -1;
        this.isLargeScreenLimitMaxSize = false;
        this.mIsHandlePanel = false;
        this.mIsGestureNavigation = true;
        this.mHideDragViewHeight = 0;
        this.mFrameRate = true;
        this.mAnimationFlag = 0;
        this.mCurrentOutSideAlphaStateHidden = 0.0f;
        this.mComponentCallbacks = new ComponentCallbacks() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.1
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
                if (COUIBottomSheetDialog.this.mRegisterConfigurationChangeCallBack) {
                    COUIBottomSheetDialog.this.updateLayoutWhileConfigChange(configuration);
                }
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }
        };
        this.mOnPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.22
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                COUIBottomSheetDialog.this.removeOnPreDrawListener();
                if (COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout == null) {
                    COUIBottomSheetDialog cOUIBottomSheetDialog = COUIBottomSheetDialog.this;
                    cOUIBottomSheetDialog.doParentViewTranslationShowingAnim(0, cOUIBottomSheetDialog.getPanelShowAnimListener());
                    return true;
                }
                int contentViewHeightWithMargins = COUIBottomSheetDialog.this.getContentViewHeightWithMargins();
                if (COUIBottomSheetDialog.this.mFirstShowCollapsed) {
                    contentViewHeightWithMargins = COUIBottomSheetDialog.this.mPeekHeight;
                }
                COUIPanelContentLayout cOUIPanelContentLayout = COUIBottomSheetDialog.this.mDraggableConstraintLayout;
                if ((cOUIPanelContentLayout == null || cOUIPanelContentLayout.findFocus() == null) && !COUIBottomSheetDialog.this.isFollowHand() && !COUIBottomSheetDialog.this.isFadeInCenter()) {
                    COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.setTranslationY(contentViewHeightWithMargins);
                }
                COUIBottomSheetDialog.this.mOutsideView.setAlpha(0.0f);
                if (COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout.getRatio() == 2.0f) {
                    COUIBottomSheetDialog cOUIBottomSheetDialog2 = COUIBottomSheetDialog.this;
                    cOUIBottomSheetDialog2.doParentViewTranslationShowingAnim(cOUIBottomSheetDialog2.mCoordinatorLayout.getHeight() / 2, COUIBottomSheetDialog.this.getPanelShowAnimListener());
                } else {
                    COUIBottomSheetDialog cOUIBottomSheetDialog3 = COUIBottomSheetDialog.this;
                    cOUIBottomSheetDialog3.doParentViewTranslationShowingAnim(0, cOUIBottomSheetDialog3.getPanelShowAnimListener());
                }
                return true;
            }
        };
        initThemeResources(i10);
        initValueResources();
        saveActivityContextToGetMultiWindowInfo(context);
    }

    private void setFrameRate(COUISpringAnimation cOUISpringAnimation) {
        if (!this.mIsVSdk || this.mDesignBottomSheetFrameLayout == null) {
            return;
        }
        int i10 = this.mADFRFeatureType;
        if (i10 == 2) {
            cOUISpringAnimation.addUpdateListener(new COUIDynamicAnimation.OnAnimationUpdateListener() { // from class: com.coui.appcompat.panel.c
                @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(COUIDynamicAnimation cOUIDynamicAnimation, float f10, float f11) {
                    this.f7281a.lambda$setFrameRate$1(cOUIDynamicAnimation, f10, f11);
                }
            });
            cOUISpringAnimation.addEndListener(new COUIDynamicAnimation.OnAnimationEndListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.16
                @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
                public void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f10, float f11) {
                    COUILog.d(COUIBottomSheetDialog.TAG, "COUISpringAnimation LEVEL_HIGH_PRECISION onAnimatorEnd: DynamicFrameRateManager.FRAME_RATE_END");
                    DynamicFrameRateManager.setFrameRate(COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout, COUIBottomSheetDialog.ANIMATION_TYPE_ID, -2, (Bundle) null);
                }
            });
        } else if (i10 == 1) {
            COUILog.d(TAG, "COUISpringAnimation LEVEL_LOW_PRECISION onAnimatorStart: DynamicFrameRateManager.LOW_PRECISION_FRAME_RATE");
            DynamicFrameRateManager.setFrameRate(this.mDesignBottomSheetFrameLayout, ANIMATION_TYPE_ID, -1, (Bundle) null);
            cOUISpringAnimation.addEndListener(new COUIDynamicAnimation.OnAnimationEndListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetDialog.17
                @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
                public void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f10, float f11) {
                    COUILog.d(COUIBottomSheetDialog.TAG, "COUISpringAnimation LEVEL_LOW_PRECISION onAnimatorEnd: DynamicFrameRateManager.FRAME_RATE_END");
                    DynamicFrameRateManager.setFrameRate(COUIBottomSheetDialog.this.mDesignBottomSheetFrameLayout, COUIBottomSheetDialog.ANIMATION_TYPE_ID, -2, (Bundle) null);
                }
            });
        } else if (i10 == 0) {
            COUILog.d(TAG, "COUISpringAnimation LEVEL_DEFAULT do nothing");
        }
    }

    public void doFeedbackAnimation() {
        if (this.mDesignBottomSheetFrameLayout != null) {
            AnimatorSet animatorSet = this.mPanelViewTranslationAnimationSet;
            if (animatorSet == null || !animatorSet.isRunning()) {
                COUISpringAnimation cOUISpringAnimation = this.mTranslationAndScaleSpringAnimation;
                if (cOUISpringAnimation == null || !cOUISpringAnimation.isRunning()) {
                    doFeedbackAnimation(this.mDesignBottomSheetFrameLayout);
                }
            }
        }
    }

    private void enforceChangeScreenWidth(Configuration configuration) {
        if (this.mPreferWidth == -1) {
            return;
        }
        try {
            Resources resources = getContext().getResources();
            this.mOriginWidth = configuration.screenWidthDp;
            configuration.screenWidthDp = this.mPreferWidth;
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            Log.d(TAG, "enforceChangeScreenWidth : OriginWidth=" + this.mOriginWidth + " ,PreferWidth:" + this.mPreferWidth);
            COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = this.mDesignBottomSheetFrameLayout;
            if (cOUIPanelPercentFrameLayout != null) {
                cOUIPanelPercentFrameLayout.setPreferWidth(this.mPreferWidth);
            }
        } catch (Exception unused) {
            Log.d(TAG, "enforceChangeScreenWidth : failed to updateConfiguration");
        }
    }

    public void setFrameRate(boolean z10) {
        this.mFrameRate = z10;
    }
}
