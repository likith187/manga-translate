.class public Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
.super Lcom/google/android/material/bottomsheet/a;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/c$r;
.implements Landroidx/dynamicanimation/animation/c$q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;,
        Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;,
        Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;,
        Lcom/coui/appcompat/panel/COUIBottomSheetDialog$AnimationType;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:F = 1.0f

.field private static final ALPHA_TRANSPARENT:F = 0.0f

.field private static final ANIMATION_TYPE_DIALOG_ALPHA:I = 0x8

.field public static final ANIMATION_TYPE_ID:I = 0x2775

.field private static final ANIMATION_TYPE_OUTSIDE_ALPHA:I = 0x2

.field private static final ANIMATION_TYPE_SCALE:I = 0x4

.field private static final ANIMATION_TYPE_TRANSLATION:I = 0x1

.field private static final DEBUG:Z

.field private static final DEFAULT_ALPHA_HIDE_SPRING_RESPONSE:F = 0.25f

.field private static final DEFAULT_ALPHA_HIDING_ANIMATOR_DURATION:F = 183.0f

.field private static final DEFAULT_ALPHA_SHOW_SPRING_RESPONSE:F = 0.3f

.field private static final DEFAULT_CENTER_HIDE_SPRING_RESPONSE:F = 0.3f

.field private static final DEFAULT_CENTER_SHOW_SPRING_RESPONSE:F = 0.3f

.field private static final DEFAULT_SPRING_DAMPING_RATIO:F = 0.7f

.field private static final DEFAULT_SPRING_FACTOR:I = 0x2710

.field private static final DEFAULT_SPRING_STIFFNESS:F = 200.0f

.field private static final DEFAULT_TRANSLATE_HIDING_ANIMATOR_DURATION:F = 333.0f

.field private static final DEFAULT_TRANSLATION_HIDE_SPRING_RESPONSE_LARGE:F = 0.3f

.field private static final DEFAULT_TRANSLATION_HIDE_SPRING_RESPONSE_SMALL:F = 0.25f

.field private static final DEFAULT_TRANSLATION_SHOW_SPRING_RESPONSE_LARGE:F = 0.35f

.field private static final DEFAULT_TRANSLATION_SHOW_SPRING_RESPONSE_SMALL:F = 0.3f

.field private static final DEFAULT_TRANSLATION_SPRING_BOUNCE:F = 0.0f

.field private static final DIALOG_SHOW_SCALE_DELTA:F = 0.2f

.field private static final DIALOG_SHOW_SCALE_START:F = 0.8f

.field private static final DISMISS_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ELEVATION_VALUE:F = 24.0f

.field private static final FINAL_POSITION:I = 0x64

.field private static final FLOAT_ONE:F = 1.0f

.field private static final FLOAT_POINT_FIVE:F = 0.5f

.field private static final HUNDRED:I = 0x64

.field private static final INT_TWO:I = 0x2

.field private static final NAV_COLOR_ANIM_DURATION:J = 0xc8L

.field private static final NO_ELEVATION_VALUE:F = 0.0f

.field private static final OUTSIDE_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final PHYSICS_UNSET:F = 1.4E-45f

.field private static final PULL_UP_FRICTION:F = 0.8f

.field private static final PULL_UP_REBOUND_BOUNCINESS:I = 0x6

.field private static final PULL_UP_REBOUND_SPEED:I = 0x2a

.field private static final SDK_SUB_VERSION:I = 0xa

.field private static final SHOW_HEIGHT_ANIM_DURATION_IN_TINY_SCREEN:F = 167.0f

.field private static final SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STATE_FOCUS_CHANGES:Ljava/lang/String; = "state_focus_changes"

.field private static final TAG:Ljava/lang/String; = "COUIBottomSheetDialog"

.field private static final THREE_POINT_EIGHT:D = 3.8

.field private static final TWENTY:D = 20.0

.field private static final UNSET_SIZE:I = -0x1

.field private static final ZERO:D


# instance fields
.field protected isLargeScreenLimitMaxSize:Z

.field private mADFRFeatureType:I

.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAdjustLayout:Landroid/view/ViewGroup;

.field private mAdjustResizeEnable:Z

.field private mAdjustResizeHelper:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

.field private mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mAlphaSpringEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

.field private mAlphaSpringUpdateListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;

.field private mAnchorView:Landroid/view/View;

.field private mAnimationFlag:I

.field private mAnimationListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;

.field private mAppearDampingRatio:F

.field private mAppearSpringAnim:Landroidx/dynamicanimation/animation/f;

.field private mAppearSpringForce:Landroidx/dynamicanimation/animation/g;

.field private mAppearStiffness:F

.field private mApplyWindowInsets:Landroid/view/WindowInsets;

.field private mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

.field private mCanPerformHapticFeedback:Z

.field private mCanPullUp:Z

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContainerFrameLayout:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

.field private mContentView:Landroid/view/View;

.field private mCoordinatorLayout:Landroid/view/View;

.field protected mCoordinatorLayoutMinInsetsTop:I

.field private mCoordinatorLayoutPaddingExtra:I

.field private mCurrentOutSideAlphaStateHidden:F

.field private mCurrentOutsideAlpha:F

.field private mCurrentParentViewTranslationY:F

.field private mCurrentSpringTotalOffset:I

.field private mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

.field private mDialogOffsetListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;

.field private mDisableFastCloseFeedbackSpring:Lu2/e;

.field private mDisableSubExpand:Z

.field protected mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

.field private mEndValueOfTranslateAnimation:F

.field private mFeedBackView:Landroid/view/View;

.field private mFinalNavColorAfterDismiss:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mFirstShowCollapsed:Z

.field private mFocusChange:Ljava/lang/Boolean;

.field private mFrameRate:Z

.field private mGlobalDrag:Z

.field private mHandleViewHasPressAnim:Z

.field private mHideDragViewHeight:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAppearSpringAnimStared:Z

.field private mIsDraggable:Z

.field private mIsEntering:Z

.field private mIsExecuteNavColorAnimAfterDismiss:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mIsExecutingDismissAnim:Z

.field private mIsFullScreenInTinyScreen:Z

.field private mIsGestureNavigation:Z

.field private mIsHandlePanel:Z

.field private mIsInTinyScreen:Z

.field private mIsInWindowFloatingMode:Z

.field private mIsInterruptingAnim:Z

.field private mIsNeedOutsideViewAnim:Z

.field private mIsNeedShowKeyboard:Z

.field private mIsShowInDialogFragment:Z

.field private mIsShowInMaxHeight:Z

.field private mIsVSdk:Z

.field private mNavColor:I

.field private mNavigationCustomView:Landroid/view/View;

.field private mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mOriginWidth:I

.field private mOutSideViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mOutsideView:Landroid/view/View;

.field private mOutsideViewBackgroundAlpha:F

.field private mPanelBackground:Landroid/graphics/drawable/Drawable;

.field private mPanelBackgroundTintColor:I

.field private mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

.field private mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

.field private mPanelDragViewDrawableTintColor:I

.field private mPanelHeight:I

.field private mPanelPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

.field private mPanelSpringBackAnim:Lu2/e;

.field private mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

.field private mPanelWidth:I

.field private mParentViewPaddingBottom:I

.field private mPeekHeight:I

.field private mPhysicsDampingRatio:F

.field private mPhysicsFrequency:F

.field private mPreferWidth:I

.field private mProgressWindowInsets:Landroid/view/WindowInsets;

.field private mPullUpMaxOffset:I

.field private mPulledUpView:Landroid/view/View;

.field private mRegisterConfigurationChangeCallBack:Z

.field private mShouldRegisterWindowInsetsListener:Z

.field private mSkipCollapsed:Z

.field private mSnapStartBottom:I

.field private mSpringForceAlpha:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

.field private mSpringForceTranslationAndScale:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

.field private mStartValueOfTranslateAnimation:F

.field private mStatusBarHeight:I

.field private mTranslateHidingDuration:F

.field private mTranslationAndScaleEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

.field private mTranslationAndScaleEndListenerWhenBlock:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

.field private mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mTranslationAndScaleUpdateListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;

.field private mWindowInsetsAnimEnable:Z

.field private mWindowInsetsLeft:I

.field private mWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

.field private mWindowInsetsTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->OUTSIDE_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->DISMISS_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-string v0, "COUIBottomSheetDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 8
    invoke-static {p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mHandleViewHasPressAnim:Z

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    .line 11
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCancelable:Z

    .line 12
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 13
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    .line 14
    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentSpringTotalOffset:I

    .line 15
    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    .line 16
    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutPaddingExtra:I

    .line 17
    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    .line 18
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    .line 19
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    const/4 v2, 0x0

    .line 20
    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentParentViewTranslationY:F

    .line 21
    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    .line 22
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInterruptingAnim:Z

    const/4 v3, 0x0

    .line 23
    iput-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 24
    iput-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    const v4, 0x7fffffff

    .line 25
    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavColor:I

    .line 26
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsAnimEnable:Z

    .line 27
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInWindowFloatingMode:Z

    .line 28
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanPerformHapticFeedback:Z

    .line 29
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mRegisterConfigurationChangeCallBack:Z

    .line 30
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsNeedShowKeyboard:Z

    .line 31
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsNeedOutsideViewAnim:Z

    .line 32
    iput-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFocusChange:Ljava/lang/Boolean;

    .line 33
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsDraggable:Z

    const v4, 0x43a68000    # 333.0f

    .line 34
    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslateHidingDuration:F

    .line 35
    iput-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

    .line 36
    iput-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    .line 37
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDisableSubExpand:Z

    .line 38
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mGlobalDrag:Z

    const/4 v4, 0x1

    .line 39
    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPhysicsFrequency:F

    .line 40
    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPhysicsDampingRatio:F

    .line 41
    iput-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnchorView:Landroid/view/View;

    .line 42
    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStatusBarHeight:I

    const/4 v3, -0x1

    .line 43
    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSnapStartBottom:I

    .line 44
    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearStiffness:F

    .line 45
    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearDampingRatio:F

    .line 46
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsAppearSpringAnimStared:Z

    .line 47
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mShouldRegisterWindowInsetsListener:Z

    .line 48
    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    .line 49
    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOriginWidth:I

    .line 50
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isLargeScreenLimitMaxSize:Z

    .line 51
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    .line 52
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsGestureNavigation:Z

    .line 53
    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mHideDragViewHeight:I

    .line 54
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFrameRate:Z

    .line 55
    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnimationFlag:I

    .line 56
    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutSideAlphaStateHidden:F

    .line 57
    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 58
    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$22;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 59
    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initThemeResources(I)V

    .line 60
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initValueResources()V

    .line 61
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->saveActivityContextToGetMultiWindowInfo(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IFF)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 6
    iput p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPhysicsFrequency:F

    .line 7
    iput p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPhysicsDampingRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/panel/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCancelable(Z)V

    .line 4
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mRegisterConfigurationChangeCallBack:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustLayout:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustResizeEnable:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getFocusChange()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->largeScreenLimitMaxSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigationCustomViewHeight(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->updatePanelMarginBottom(Landroid/content/res/Configuration;Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsExecutingDismissAnim:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsExecutingDismissAnim:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->handleBehaviorStateChange(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnimationListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->superDismiss()V

    return-void
.end method

.method static synthetic access$2300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->releaseBehaviorPullUpListener()V

    return-void
.end method

.method static synthetic access$2402(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutSideAlphaStateHidden:F

    return p1
.end method

.method static synthetic access$2500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleEndListenerWhenBlock:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleUpdateListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mEndValueOfTranslateAnimation:F

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->haveEnoughSpace()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStartValueOfTranslateAnimation:F

    return p0
.end method

.method static synthetic access$3100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hasAnimationFlag(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->translateUpdate(F)V

    return-void
.end method

.method static synthetic access$3300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsEntering:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringUpdateListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->outsideAlphaChange(FZ)V

    return-void
.end method

.method static synthetic access$3802(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsNeedShowKeyboard:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lu2/e;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lu2/e;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFeedBackView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->removeOnPreDrawListener()V

    return-void
.end method

.method static synthetic access$4200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getContentViewHeightWithMargins()I

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    return p0
.end method

.method static synthetic access$4400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    return p0
.end method

.method static synthetic access$4500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFollowHand()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFadeInCenter()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getPanelShowAnimListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;ILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doParentViewTranslationShowingAnim(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCancelable:Z

    return p0
.end method

.method static synthetic access$5000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->animationStart()V

    return-void
.end method

.method static synthetic access$5100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->animationEnd()V

    return-void
.end method

.method static synthetic access$5200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lu2/e;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelSpringBackAnim:Lu2/e;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mParentViewPaddingBottom:I

    return p0
.end method

.method static synthetic access$5302(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mParentViewPaddingBottom:I

    return p1
.end method

.method static synthetic access$5400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPulledUpView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPullUpMaxOffset:I

    return p0
.end method

.method static synthetic access$5600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setPulledUpViewPaddingBottom(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doSpringBackReboundAnim(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDialogOffsetListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsNeedOutsideViewAnim:Z

    return p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanceledOnTouchOutside:Z

    return p0
.end method

.method static synthetic access$6002(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    return p1
.end method

.method static synthetic access$6100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    return p0
.end method

.method static synthetic access$6200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->shouldHandlePanelUpdateNavBarColor()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideViewBackgroundAlpha:F

    return p0
.end method

.method static synthetic access$6400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigationBarColorAlpha(F)V

    return-void
.end method

.method static synthetic access$6500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelBarView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    return p0
.end method

.method static synthetic access$6700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentSpringTotalOffset:I

    return p0
.end method

.method static synthetic access$6702(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentSpringTotalOffset:I

    return p1
.end method

.method static synthetic access$700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mApplyWindowInsets:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mApplyWindowInsets:Landroid/view/WindowInsets;

    return-object p1
.end method

.method static synthetic access$800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initCoordinateInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initMaxHeight(Landroid/view/WindowInsets;)V

    return-void
.end method

.method private addAnimationFlag(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnimationFlag:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnimationFlag:I

    return-void
.end method

.method private animationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFollowHand()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFadeInCenter()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentParentViewTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanPerformHapticFeedback:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnimationListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;->onShowAnimationEnd()V

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFollowHand()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->haveEnoughSpace()Z

    :cond_3
    return-void
.end method

.method private animationStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnimationListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;->onShowAnimationStart()V

    :cond_1
    return-void
.end method

.method private calculateFinalLocationOnScreen(Landroid/view/View;)[I
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getLocationRectInScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-direct {v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getLocationRectInScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1}, Landroidx/core/view/m0;->C(Landroid/view/View;)Landroidx/core/view/a1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/core/view/a1;->m()I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsTop:I

    invoke-virtual {v1}, Landroidx/core/view/a1;->k()I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsLeft:I

    :cond_0
    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v5, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/dialog/R$dimen;->coui_bottom_sheet_dialog_follow_hand_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/dialog/R$dimen;->coui_bottom_sheet_dialog_follow_hand_margin_left:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v1

    iget v9, v3, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    div-int/lit8 v10, v1, 0x2

    sub-int/2addr v9, v10

    iget v10, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsLeft:I

    sub-int/2addr v9, v10

    invoke-direct {v0, v9, v8}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->normalizePoints(II)I

    move-result v8

    if-gt v8, v7, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    add-int v9, v8, v1

    add-int/2addr v9, v7

    iget v10, v4, Landroid/graphics/Rect;->right:I

    if-lt v9, v10, :cond_2

    sub-int/2addr v10, v7

    sub-int v8, v10, v1

    :cond_2
    :goto_0
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v9, v5

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    iget v12, v3, Landroid/graphics/Rect;->left:I

    iget v13, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v3, Landroid/graphics/Rect;->top:I

    iget v14, v4, Landroid/graphics/Rect;->top:I

    sub-int v14, v13, v14

    iget v15, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    sub-int/2addr v14, v15

    sub-int/2addr v14, v6

    move/from16 p1, v8

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v8

    if-ge v5, v14, :cond_3

    sub-int/2addr v13, v5

    sub-int/2addr v13, v15

    iget v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStatusBarHeight:I

    add-int/2addr v13, v1

    sub-int/2addr v13, v6

    iget v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsTop:I

    sub-int/2addr v13, v1

    invoke-direct {v0, v13, v10}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->normalizePoints(II)I

    move-result v1

    :goto_1
    move/from16 v8, p1

    goto :goto_3

    :cond_3
    if-ge v5, v9, :cond_4

    sub-int/2addr v8, v15

    add-int/2addr v8, v6

    invoke-direct {v0, v8, v10}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->normalizePoints(II)I

    move-result v1

    goto :goto_1

    :cond_4
    add-int/2addr v8, v13

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v8, v5

    iget v5, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsTop:I

    sub-int/2addr v8, v5

    invoke-direct {v0, v8, v10}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->normalizePoints(II)I

    move-result v5

    if-ge v1, v12, :cond_5

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v1

    sub-int v8, v6, v7

    :goto_2
    move v1, v5

    goto :goto_3

    :cond_5
    if-ge v1, v11, :cond_6

    iget v1, v3, Landroid/graphics/Rect;->right:I

    add-int v8, v1, v7

    goto :goto_2

    :cond_6
    move/from16 v8, p1

    goto :goto_2

    :goto_3
    sget-boolean v5, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->DEBUG:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateFinalLocationInScreen: \n anchorViewLocationRect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", \n anchorContentViewLocationRect = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", \n dialogViewLocalRect = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n -> final : x = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", y = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n -> insetTop: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsTop:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " maxY: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "COUIBottomSheetDialog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    filled-new-array {v8, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method private cancelAnim(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method private cancelAnim(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private checkInitState()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mContainerFrameLayout:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "design_bottom_sheet can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "panel_outside can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "coordinator can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "container can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createNavigationColorAnimation(I)Landroid/animation/ValueAnimator;
    .locals 6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v5, 0x1

    invoke-static {v5, v3, v4, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    :cond_0
    if-eq v2, p1, :cond_1

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$20;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$20;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/Window;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method private createOutsideAlphaAnimation(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    const-string p0, "COUIBottomSheetDialog"

    const-string p1, "StartAlphaValue == endAlphaValue, No need to perform transparency animation anymore"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    float-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$18;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;FFZ)V

    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$19;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$19;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2
.end method

.method private createPanelConstraintLayout()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/support/panel/R$layout;->coui_panel_view_layout_tiny:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/support/panel/R$layout;->coui_panel_view_layout:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mHandleViewHasPressAnim:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewPressAnim(Z)V

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->getMargin(Landroid/view/View;I)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mApplyWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, v2, v1, v3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setNavigationMargin(Landroid/content/res/Configuration;ILandroid/view/WindowInsets;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hideDragView()V

    :cond_3
    return-void
.end method

.method private createPanelTranslateAnimation(FFFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    float-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$13;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$13;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setFrameRate(Landroid/animation/ValueAnimator;)V

    return-object p1
.end method

.method private dismissWithAlphaAnim()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsEntering:Z

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->stopCurrentRunningViewTranslationAnim()V

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutSideAlphaStateHidden:F

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->resetAnimationFlag()V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doAlphaSpringAnimaion(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_0
    return-void
.end method

.method private dismissWithInterruptibleAnim()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doParentViewTranslationHidingAnim(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private doAlphaSpringAnimaion(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/e;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/e;-><init>()V

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Landroidx/dynamicanimation/animation/e;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSpringForceAlpha:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSpringForceAlpha:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hasAnimationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsEntering:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSpringForceAlpha:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSpringForceAlpha:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)V

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$11;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$11;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringUpdateListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringUpdateListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStartValueOfTranslateAnimation:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mEndValueOfTranslateAnimation:F

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private doFeedbackAnimation(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lu2/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFeedBackView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 2
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFeedBackView:Landroid/view/View;

    .line 3
    invoke-static {}, Lu2/j;->g()Lu2/j;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lu2/b;->c()Lu2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lu2/e;

    const-wide v0, 0x400e666666666666L    # 3.8

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 5
    invoke-static {v0, v1, v2, v3}, Lu2/f;->a(DD)Lu2/f;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lu2/e;->o(Lu2/f;)Lu2/e;

    .line 7
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lu2/e;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$21;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$21;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Lu2/e;->a(Lu2/h;)Lu2/e;

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lu2/e;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-virtual {p0, v0, v1}, Lu2/e;->n(D)Lu2/e;

    return-void
.end method

.method private doParentViewTranslationHidingAnim(Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->reversalEnterAnimation(Landroid/animation/Animator$AnimatorListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsEntering:Z

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->stopCurrentRunningViewTranslationAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->resetAnimationFlag()V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDialogMaxHeight()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "COUIBottomSheetDialog"

    const-string v0, "doParentViewTranslationHidingAnim return directly for dialogMaxHeight is 0, but call superDismiss"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->superDismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStartValueOfTranslateAnimation:F

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mEndValueOfTranslateAnimation:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslateHidingDuration:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->startReleaseAnimInTinyScreen(FFFLandroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFollowHand()Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setDefaultSpringStartEndValue()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->haveEnoughSpace()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFadeInCenter()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_6

    invoke-direct {p0, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setDefaultSpringStartEndValue()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentParentViewTranslationY:F

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStartValueOfTranslateAnimation:F

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v1

    if-ne v1, v4, :cond_7

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    :cond_7
    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mEndValueOfTranslateAnimation:F

    :goto_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doTranslationAndScaleSpringAnimaion(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doAlphaSpringAnimaion(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private doParentViewTranslationShowingAnim(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 8

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->stopCurrentRunningViewTranslationAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->resetAnimationFlag()V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDialogMaxHeight()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "COUIBottomSheetDialog"

    const-string p1, "doParentViewTranslationShowingAnim return directly for dialogMaxHeight is 0"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsEntering:Z

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getContentViewHeightWithMargins()I

    move-result v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    iget-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->startShowingAnimInTinyScreen(ILandroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFollowHand()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x8

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setDefaultSpringStartEndValue()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->haveEnoughSpace()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->offsetViewTo()V

    invoke-direct {p0, v5}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->updateBottomSheetCenterVertical()V

    invoke-direct {p0, v5}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFadeInCenter()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    :cond_5
    invoke-direct {p0, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v5}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setDefaultSpringStartEndValue()V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v2, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    :cond_7
    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    invoke-direct {p0, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->addAnimationFlag(I)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    if-eqz v0, :cond_8

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    int-to-float p1, p1

    goto :goto_0

    :cond_8
    add-int/2addr v1, p1

    int-to-float p1, v1

    :goto_0
    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStartValueOfTranslateAnimation:F

    iput v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mEndValueOfTranslateAnimation:F

    :goto_1
    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doTranslationAndScaleSpringAnimaion(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doAlphaSpringAnimaion(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private doSpringBackReboundAnim(I)V
    .locals 5

    invoke-static {}, Lu2/j;->g()Lu2/j;

    move-result-object v0

    invoke-virtual {v0}, Lu2/b;->c()Lu2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelSpringBackAnim:Lu2/e;

    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    const-wide/high16 v3, 0x4045000000000000L    # 42.0

    invoke-static {v1, v2, v3, v4}, Lu2/f;->a(DD)Lu2/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu2/e;->o(Lu2/f;)Lu2/e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentSpringTotalOffset:I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelSpringBackAnim:Lu2/e;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    invoke-virtual {v0, v1}, Lu2/e;->a(Lu2/h;)Lu2/e;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelSpringBackAnim:Lu2/e;

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lu2/e;->n(D)Lu2/e;

    return-void
.end method

.method private doTranslationAndScaleSpringAnimaion(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initTranslationAndScaleSpringAnimation()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hasAnimationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSpringForceTranslationAndScale:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getTranslationResponse()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hasAnimationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsEntering:Z

    const v1, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSpringForceTranslationAndScale:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSpringForceTranslationAndScale:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    :cond_2
    :goto_0
    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$9;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$9;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleUpdateListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleUpdateListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setFrameRate(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStartValueOfTranslateAnimation:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mEndValueOfTranslateAnimation:F

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private enforceChangeScreenWidth()V
    .locals 4

    .line 1
    const-string v0, "COUIBottomSheetDialog"

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 4
    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOriginWidth:I

    .line 5
    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    iput v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 6
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceChangeScreenWidth : OriginWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOriginWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,PreferWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v1, :cond_1

    .line 9
    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setPreferWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    const-string p0, "enforceChangeScreenWidth : failed to updateConfiguration"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private enforceChangeScreenWidth(Landroid/content/res/Configuration;)V
    .locals 3

    .line 11
    const-string v0, "COUIBottomSheetDialog"

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 13
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOriginWidth:I

    .line 14
    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enforceChangeScreenWidth : OriginWidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOriginWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,PreferWidth:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_1

    .line 18
    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setPreferWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    const-string p0, "enforceChangeScreenWidth : failed to updateConfiguration"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureDraggableContentLayout()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->createPanelConstraintLayout()V

    :cond_0
    return-void
.end method

.method private getContentViewHeightWithMargins()I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->getMargin(Landroid/view/View;I)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getFocusChange()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFocusChange:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private getLocationRectInScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p0, p1

    invoke-direct {v0, v1, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getNavColor(Landroid/content/res/Configuration;)I
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavColor:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$attr;->couiColorSurface:I

    invoke-static {p0, p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/panel/R$color;->coui_panel_navigation_bar_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/panel/R$color;->coui_panel_navigation_bar_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getPanelPullUpListener()Lcom/coui/appcompat/panel/COUIPanelPullUpListener;
    .locals 1

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    return-object v0
.end method

.method private getPanelShowAnimListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$23;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$23;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    return-object v0
.end method

.method private getTranslationResponse()F
    .locals 6

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsEntering:Z

    const v1, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_0

    const v0, 0x3eb33333    # 0.35f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    :goto_1
    int-to-float v2, v2

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getHalfExpandedRatio()F

    move-result v3

    mul-float/2addr v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    int-to-float p0, p0

    sub-float/2addr v2, p0

    const/4 p0, 0x0

    cmpl-float v4, v3, p0

    if-eqz v4, :cond_3

    div-float/2addr v2, v3

    goto :goto_3

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_3
    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sub-float/2addr v0, v1

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private getTypedArrayDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static synthetic h(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Lcom/oplus/dynamicframerate/AnimationVelocityCalculator;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->lambda$setFrameRate$0(Lcom/oplus/dynamicframerate/AnimationVelocityCalculator;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private handleBehaviorStateChange(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustResizeEnable:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsAnimEnable:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->needHideKeyboardWhenSettling()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hideKeyboard()V

    :cond_3
    :goto_0
    return-void
.end method

.method private hasAnimationFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnimationFlag:I

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasEditText(Landroid/view/ViewGroup;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/EditText;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/coui/appcompat/edittext/COUIInputView;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hasEditText(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v4

    :cond_3
    return v0
.end method

.method private haveEnoughSpace()Z
    .locals 12

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getLocationRectInScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getLocationRectInScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/dialog/R$dimen;->coui_bottom_sheet_dialog_follow_hand_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/dialog/R$dimen;->coui_bottom_sheet_dialog_follow_hand_margin_right:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v7

    iget v9, v4, Landroid/graphics/Rect;->left:I

    const/4 v10, 0x0

    const-string v11, "COUIBottomSheetDialog"

    if-gt v8, v9, :cond_2

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v2

    add-int/2addr v8, v7

    iget v2, v4, Landroid/graphics/Rect;->right:I

    if-lt v8, v2, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    sub-int/2addr v2, v7

    sub-int/2addr v2, v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-gt v2, v7, :cond_2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    add-int/2addr v0, v5

    add-int/2addr v0, v6

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anchor view have no enoughSpace anchorContentViewLocationRect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setHasAnchor(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v10}, Landroid/view/View;->setElevation(F)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return v1

    :cond_2
    :goto_0
    const-string v0, "anchor view haveEnoughSpace"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setHasAnchor(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBottom(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/panel/R$dimen;->coui_bottom_sheet_dialog_elevation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/panel/R$color;->coui_panel_follow_hand_spot_shadow_color:I

    invoke-static {v4, v5}, Lr/a;->c(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v0, v5, v3, v4}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanPullUp(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method private hideKeyboard()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustResizeEnable:Z

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static synthetic i(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->lambda$setFrameRate$1(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V

    return-void
.end method

.method private initBehavior()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPhysicsFrequency:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPhysicsDampingRatio:F

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->applyPhysics(FF)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mGlobalDrag:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setGlobalDrag(Z)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setIsInTinyScreen(Z)V

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelPeekHeight(I)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelSkipCollapsed(Z)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setIsHandlePanel(Z)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isNormalLandScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    move v5, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    move v5, v4

    :goto_0
    invoke-virtual {v0, v5}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setFitToContents(Z)V

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsNeedOutsideViewAnim(Z)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    iget-boolean v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$2;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->addBottomSheetCallback(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;)V

    sget-boolean v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initBehavior: peekHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSkipCollapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsHandlePanel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFirstShowCollapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " state="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUIBottomSheetDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use COUIBottomSheetBehavior, check value of bottom_sheet_behavior in strings.xml"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initCoordinateInsets(Landroid/view/WindowInsets;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_top_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_handle_bottom_sheet_margin_top_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    :cond_0
    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsFullScreenInTinyScreen:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_min_padding_top_tiny_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_normal_padding_top_tiny_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    :cond_2
    :goto_0
    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, p0, v0, p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setNavigationMargin(Landroid/content/res/Configuration;ILandroid/view/WindowInsets;)V

    :cond_3
    return-void
.end method

.method private initDraggableConstraintLayoutSize()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setPanelWidth()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setPanelHeight()V

    return-void
.end method

.method private initMaxHeight(Landroid/view/WindowInsets;)V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelHeight:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;Z)I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x2

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    :goto_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    if-nez p0, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    return-void
.end method

.method private initNavigationView()V
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->unNeedNavigationCustomView()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mContainerFrameLayout:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mContainerFrameLayout:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    :cond_3
    invoke-direct {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getNavColor(Landroid/content/res/Configuration;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigationBarColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mContainerFrameLayout:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mContainerFrameLayout:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x50

    invoke-direct {v3, v2, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    invoke-virtual {v0, p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method private initPhysics()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearStiffness:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearStiffness:F

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearDampingRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearDampingRatio:F

    :cond_1
    new-instance v0, Landroidx/dynamicanimation/animation/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/g;-><init>(F)V

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/g;->f(F)Landroidx/dynamicanimation/animation/g;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearDampingRatio:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/g;->d(F)Landroidx/dynamicanimation/animation/g;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearSpringForce:Landroidx/dynamicanimation/animation/g;

    new-instance v0, Landroidx/dynamicanimation/animation/f;

    new-instance v1, Landroidx/dynamicanimation/animation/e;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/e;-><init>()V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/f;-><init>(Landroidx/dynamicanimation/animation/e;)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearSpringForce:Landroidx/dynamicanimation/animation/g;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/f;->x(Landroidx/dynamicanimation/animation/g;)Landroidx/dynamicanimation/animation/f;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearSpringAnim:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/c;->b(Landroidx/dynamicanimation/animation/c$r;)Landroidx/dynamicanimation/animation/c;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearSpringAnim:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/c;->a(Landroidx/dynamicanimation/animation/c$q;)Landroidx/dynamicanimation/animation/c;

    return-void
.end method

.method private initThemeResources(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog:[I

    sget v2, Lcom/support/panel/R$attr;->couiBottomSheetDialogStyle:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelDragViewIcon:I

    sget v1, Lcom/support/panel/R$drawable;->coui_panel_drag_view:I

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getTypedArrayDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelDragViewTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorControls:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelBackground:I

    sget v1, Lcom/support/panel/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getTypedArrayDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelBackgroundTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSurface:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_couiHandleViewHasPressAnim:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mHandleViewHasPressAnim:Z

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_couiShowMaxHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_couiIsHandlePanel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-void
.end method

.method private initTranslationAndScaleSpringAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/e;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/e;-><init>()V

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Landroidx/dynamicanimation/animation/e;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSpringForceTranslationAndScale:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSpringForceTranslationAndScale:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    :cond_0
    return-void
.end method

.method private initValueResources()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_pull_up_max_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPullUpMaxOffset:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_normal_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutPaddingExtra:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_color_mask:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideViewBackgroundAlpha:F

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isGestureNavigation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsGestureNavigation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_default_peek_height_in_gesture:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_default_peek_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    sget v0, Lcom/support/panel/R$id;->container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mContainerFrameLayout:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    sget v0, Lcom/support/panel/R$id;->panel_outside:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    sget v0, Lcom/support/panel/R$id;->coordinator:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    sget v0, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setIsHandlePanel(Z)V

    sget v0, Lcom/support/panel/R$id;->panel_drag_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelBarView;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFollowHand()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setLayoutAtMaxHeight(Z)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPulledUpView:Landroid/view/View;

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->checkInitState()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initNavigationView()V

    return-void
.end method

.method private initWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method

.method private initWindowInsetsListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mShouldRegisterWindowInsetsListener:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isFadeInCenter()Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFadeInCenterAllState()Z
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFollowHand()Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInMultiWindowMode()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setFrameRate$0(Lcom/oplus/dynamicframerate/AnimationVelocityCalculator;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Lcom/oplus/dynamicframerate/AnimationVelocityCalculator;->calculator(ILandroid/animation/ValueAnimator;)F

    move-result p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/oplus/dynamicframerate/DynamicFrameRateManager;->getSuggestFrameRate(FI)I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DynamicFrameRateManager.getSuggestFrameRate: v "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " frame "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "COUIBottomSheetDialog"

    invoke-static {p3, p2}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    float-to-int p1, p1

    const/4 p2, 0x0

    const/16 p3, 0x2775

    invoke-static {p0, p3, p1, p2}, Lcom/oplus/dynamicframerate/DynamicFrameRateManager;->setFrameRate(Ljava/lang/Object;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private synthetic lambda$setFrameRate$1(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 1

    const/4 p1, 0x2

    invoke-static {p3, p1}, Lcom/oplus/dynamicframerate/DynamicFrameRateManager;->getSuggestFrameRate(FI)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "COUISpringAnimation DynamicFrameRateManager.getSuggestFrameRate: v "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " frame "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "COUIBottomSheetDialog"

    invoke-static {p2, p1}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    float-to-int p1, p3

    const/4 p2, 0x0

    const/16 p3, 0x2775

    invoke-static {p0, p3, p1, p2}, Lcom/oplus/dynamicframerate/DynamicFrameRateManager;->setFrameRate(Ljava/lang/Object;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private largeScreenLimitMaxSize()V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isLargeScreenLimitMaxSize:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargePadWindow(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightRealSize(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenWidthRealSize(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightRealSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenWidthRealSize(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/coui/appcompat/uiutil/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/coui/appcompat/uiutil/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v2

    :goto_0
    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    int-to-float v3, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getGridNumber()I

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getPaddingType()I

    move-result v6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getPaddingSize()I

    move-result v7

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FFIIILandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0, v0, v2}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setMaxSize(II)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->restoreDefaultMaxSize()V

    :goto_1
    return-void
.end method

.method private needHideKeyboardWhenSettling()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->isCanHideKeyboard()Z

    move-result p0

    return p0
.end method

.method private normalizePoints(II)I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private offsetViewTo()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->calculateFinalLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentParentViewTranslationY:F

    return-void
.end method

.method private outsideAlphaChange(FZ)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getOutsideViewAlpha(F)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutSideAlphaStateHidden:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sub-float v0, v1, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFollowHand()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFadeInCenterAllState()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->shouldHandlePanelUpdateNavBarColor()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isVirtualNavigation(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    sub-float p1, v1, p1

    :goto_4
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigationBarColorAlpha(F)V

    :cond_6
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsNeedShowKeyboard:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_7
    return-void
.end method

.method private refreshParams()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isVirtualNavigation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->resetParentViewStyle(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->resetNavigationBarColor(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method private registerApplicationConfigChangeListener()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method private registerBehaviorPullUpListener()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getPanelPullUpListener()Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/panel/COUIPanelPullUpListener;)V

    :cond_1
    return-void
.end method

.method private registerPreDrawListener()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private releaseApplicationConfigChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method private releaseApplyWindowInsetsListener()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    :cond_0
    return-void
.end method

.method private releaseBehaviorPullUpListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/panel/COUIPanelPullUpListener;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    :cond_0
    return-void
.end method

.method private releaseResizeHelper()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->releaseData()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    :cond_0
    return-void
.end method

.method private removeOnPreDrawListener()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private resetAnimationFlag()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnimationFlag:I

    return-void
.end method

.method private resetNavigationBarColor(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getNavColor(Landroid/content/res/Configuration;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigationBarColor(I)V

    return-void
.end method

.method private resetParentViewStyle(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->setMargin(Landroid/view/View;II)V

    return-void
.end method

.method private resetWindowImeAnimFlags()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustResizeEnable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsNeedShowKeyboard:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->setWindowType(I)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInWindowFloatingMode:Z

    if-nez v4, :cond_0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsNeedShowKeyboard:Z

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/lit8 p0, v1, 0x10

    invoke-virtual {v2, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lcom/support/panel/R$attr;->couiBottomSheetDialogStyle:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method private restoreScreenWidth()V
    .locals 4

    const-string v0, "COUIBottomSheetDialog"

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOriginWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOriginWidth:I

    iput v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreScreenWidth : PreferWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,OriginWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOriginWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->delPreferWidth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "restoreScreenWidth : failed to updateConfiguration"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private reversalEnterAnimation(Landroid/animation/Animator$AnimatorListener;)Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStartValueOfTranslateAnimation:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStartValueOfTranslateAnimation:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)V

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleEndListenerWhenBlock:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private saveActivityContextToGetMultiWindowInfo(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method private setContentViewLocal(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->ensureDraggableContentLayout()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->removeContentView()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->addContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-super {p0, v0}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mContentView:Landroid/view/View;

    return-void
.end method

.method private setDefaultSpringStartEndValue()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStartValueOfTranslateAnimation:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mEndValueOfTranslateAnimation:F

    return-void
.end method

.method private setFocusChangeFalseIfHasnotEdittext()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFocusChange:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hasEditText(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFocusChange:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method private setFrameRate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsVSdk:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mADFRFeatureType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/oplus/dynamicframerate/AnimationVelocityCalculator;

    invoke-direct {v0, p1}, Lcom/oplus/dynamicframerate/AnimationVelocityCalculator;-><init>(Landroid/animation/ValueAnimator;)V

    .line 4
    new-instance v1, Lcom/coui/appcompat/panel/d;

    invoke-direct {v1, p0, v0, p1}, Lcom/coui/appcompat/panel/d;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Lcom/oplus/dynamicframerate/AnimationVelocityCalculator;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 7
    const-string p0, "COUIBottomSheetDialog"

    const-string p1, "LEVEL_DEFAULT do nothing"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setFrameRate(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;)V
    .locals 4

    .line 8
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsVSdk:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_2

    .line 9
    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mADFRFeatureType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 10
    new-instance v0, Lcom/coui/appcompat/panel/c;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/c;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    .line 11
    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 12
    const-string v2, "COUIBottomSheetDialog"

    if-ne v0, v1, :cond_1

    .line 13
    const-string v0, "COUISpringAnimation LEVEL_LOW_PRECISION onAnimatorStart: DynamicFrameRateManager.LOW_PRECISION_FRAME_RATE"

    invoke-static {v2, v0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x2775

    invoke-static {v0, v3, v1, v2}, Lcom/oplus/dynamicframerate/DynamicFrameRateManager;->setFrameRate(Ljava/lang/Object;IILandroid/os/Bundle;)Z

    .line 15
    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$17;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$17;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 16
    const-string p0, "COUISpringAnimation LEVEL_DEFAULT do nothing"

    invoke-static {v2, p0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setHideDragViewHeight()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDrawLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mHideDragViewHeight:I

    if-lez v1, :cond_0

    .line 6
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_drag_view_hide_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDrawLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setNavigation()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsGestureNavigation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    or-int/lit16 v0, v0, 0x200

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-direct {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigationBarColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    :goto_0
    return-void
.end method

.method private setNavigationBarColor(I)V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->unNeedNavigationCustomView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigationCustomViewColor(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNavigationBarColor color: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIBottomSheetDialog"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setNavigationBarColorAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideViewBackgroundAlpha:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigationBarColor(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    :goto_0
    return-void
.end method

.method private setNavigationCustomViewColor(I)V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->unNeedNavigationCustomView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private setNavigationCustomViewHeight(Landroid/view/WindowInsets;)V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->unNeedNavigationCustomView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavigationCustomView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method private setPanelHeight()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelHeight:I

    if-eqz v1, :cond_0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mApplyWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initMaxHeight(Landroid/view/WindowInsets;)V

    :cond_2
    return-void
.end method

.method private setPanelWidth()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelWidth:I

    if-eqz v1, :cond_0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private setPulledUpViewPaddingBottom(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPulledUpView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPulledUpView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPulledUpView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private setSpringStartPosition(F)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearSpringAnim:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/c;->m(F)Landroidx/dynamicanimation/animation/c;

    return-void
.end method

.method private setStatusBarTransparentAndFont(Landroid/view/Window;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v2, v1, 0x400

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    and-int/lit16 p0, v2, -0x2011

    goto :goto_0

    :cond_1
    or-int/lit16 p0, v1, 0x500

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private shouldHandlePanelUpdateNavBarColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0, p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isNormalLandScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private snapToTop()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSnapStartBottom:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsAppearSpringAnimStared:Z

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearSpringAnim:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/f;->p()V

    return-void
.end method

.method private startListeningForBackCallbacks(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/panel/a;->a(Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/coui/appcompat/panel/b;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/b;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    const/4 p0, 0x0

    invoke-static {p1, p0, v0}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method private startReleaseAnim(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startReleaseAnimInTinyScreen(FFFLandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslateHidingDuration:F

    new-instance v1, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->createPanelTranslateAnimation(FFFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    const/4 v0, 0x0

    const/high16 v1, 0x43370000    # 183.0f

    invoke-direct {p0, v0, v1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->createOutsideAlphaAnimation(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-direct {p0, p4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->startReleaseAnim(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private startShowingAnim(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startShowingAnimInTinyScreen(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->OUTSIDE_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x1

    const/high16 v3, 0x43270000    # 167.0f

    invoke-direct {p0, v2, v3, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->createOutsideAlphaAnimation(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getContentViewHeightWithMargins()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setSpringStartPosition(F)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->snapToTop()V

    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->startShowingAnim(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private stopCurrentRunningViewTranslationAnim()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInterruptingAnim:Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsAppearSpringAnimStared:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearSpringAnim:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/c;->c()V

    :cond_3
    return-void
.end method

.method private stopFeedbackAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lu2/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu2/e;->g()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lu2/e;

    invoke-virtual {v0}, Lu2/e;->k()Lu2/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDisableFastCloseFeedbackSpring:Lu2/e;

    :cond_0
    return-void
.end method

.method private stopListeningForBackCallbacks(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/panel/a;->a(Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    :cond_2
    :goto_0
    return-void
.end method

.method private superDismiss()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->DEBUG:Z

    const-string v1, "COUIBottomSheetDialog"

    if-eqz v0, :cond_0

    const-string v0, "superDismiss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/o;->dismiss()V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnimationListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;->onDismissAnimationEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private translateUpdate(F)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInterruptingAnim:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentParentViewTranslationY:F

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInterruptingAnim:Z

    :cond_1
    return-void
.end method

.method private unNeedNavigationCustomView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsGestureNavigation:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateBottomSheetCenterVertical()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    const-string v1, "COUIBottomSheetDialog"

    if-nez v0, :cond_0

    const-string p0, "updateBottomSheetCenterVertical: directly return for mCoordinatorLayout is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-nez v2, :cond_1

    const-string p0, "updateBottomSheetCenterVertical: directly return for mDesignBottomSheetFrameLayout is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sub-int v1, v0, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    if-gt v2, v0, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    :cond_3
    return-void
.end method

.method private updateFitToContents()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-nez v0, :cond_1

    const-string p0, "COUIBottomSheetDialog"

    const-string v0, "updateFitToContents: mDesignBottomSheetFrameLayout is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->from(Landroid/view/View;)Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isNormalLandScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setFitToContents(Z)V

    return-void
.end method

.method private updateListeningForBackCallbacks()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCancelable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->startListeningForBackCallbacks(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->stopListeningForBackCallbacks(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updatePanelMarginBottom(Landroid/content/res/Configuration;Landroid/view/WindowInsets;)V
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    invoke-static {v0, p1, p2, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMarginBottom(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;Z)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method


# virtual methods
.method public canPullUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    return p0
.end method

.method public delPreferWidth()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->restoreScreenWidth()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOriginWidth:I

    const-string p0, "COUIBottomSheetDialog"

    const-string v0, "delPreferWidth"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->stopFeedbackAnimation()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsExecutingDismissAnim:Z

    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hideKeyboard()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismissWithAlphaAnim()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismissWithInterruptibleAnim()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->superDismiss()V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mIsTurnOnAnim:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mIsTurnOnAnim:Z

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->dragBgEndAnim()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doFeedbackAnimation()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doFeedbackAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public getAdjustResizeHelper()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAdjustResizeHelper:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    return-object p0
.end method

.method public getCanPerformHapticFeedback()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanPerformHapticFeedback:Z

    return p0
.end method

.method public getCenterButton()Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public getDialogHeight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDialogMaxHeight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    return-object p0
.end method

.method public getIsHandlePanel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    return p0
.end method

.method public getIsInWindowFloatingMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInWindowFloatingMode:Z

    return p0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getOutsideViewAlpha(F)F
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getPeekHeight()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    return p0
.end method

.method public getRightButton()Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hide()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public hideDragView()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDrawLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setHideDragViewHeight()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDrawLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragBgView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragBgView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isFirstShowCollapsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    return p0
.end method

.method public isSkipCollapsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    return p0
.end method

.method public onAnimationEnd(Landroidx/dynamicanimation/animation/c;ZFF)V
    .locals 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsAppearSpringAnimStared:Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    iget p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSnapStartBottom:I

    if-eq p3, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSnapStartBottom:I

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSnapStartBottom:I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;->onBottomSheetDialogExpanded()V

    :cond_1
    return-void
.end method

.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/c;FF)V
    .locals 3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_2

    iget p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSnapStartBottom:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-gez p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSnapStartBottom:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInterruptingAnim:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentParentViewTranslationY:F

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInterruptingAnim:Z

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/bottomsheet/a;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->enforceChangeScreenWidth()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->refreshParams()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->resetWindowImeAnimFlags()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setStatusBarTransparentAndFont(Landroid/view/Window;)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->registerPreDrawListener()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->registerApplicationConfigChangeListener()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->registerBehaviorPullUpListener()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initWindowInsetsListener()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigation()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->updateListeningForBackCallbacks()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "status_bar_height"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mStatusBarHeight:I

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initPhysics()V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initBehavior()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initWindow()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initDraggableConstraintLayoutSize()V

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFrameRate:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x22

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/coui/appcompat/version/COUIVersionUtil;->checkOPlusViewSubSDK(II)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/oplus/dynamicframerate/DynamicFrameRateManager;->getDynamicFrameRateType()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mADFRFeatureType:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsVSdk:Z

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->releaseResizeHelper()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->releaseApplyWindowInsetsListener()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelViewTranslationAnimationSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->cancelAnim(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslationAndScaleSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->cancelAnim(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAlphaSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->cancelAnim(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->releaseApplicationConfigChangeListener()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->releaseBehaviorPullUpListener()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->restoreScreenWidth()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->stopListeningForBackCallbacks(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/a;->onDetachedFromWindow()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "state_focus_changes"

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getFocusChange()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFocusChange:Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroidx/activity/q;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "state_focus_changes"

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getFocusChange()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setFocusChangeFalseIfHasnotEdittext()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public refresh()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog:[I

    const/4 v2, 0x0

    sget v3, Lcom/support/panel/R$style;->DefaultBottomSheetDialog:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelDragViewIcon:I

    sget v2, Lcom/support/panel/R$drawable;->coui_panel_drag_view:I

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getTypedArrayDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelDragViewTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorControls:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    sget v1, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelBackground:I

    sget v2, Lcom/support/panel/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getTypedArrayDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelBackgroundTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorSurface:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->refresh()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "COUIBottomSheetDialog"

    const-string v1, "setAnchorView: ---------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public setAnimationListener(Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAnimationListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnAnimationListener;

    return-void
.end method

.method public setBottomButtonBar(ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 8

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->ensureDraggableContentLayout()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setUpBottomBar(ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBottomSheetDialogAnimatorListener(Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    return-void
.end method

.method public setCanPerformHapticFeedback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanPerformHapticFeedback:Z

    return-void
.end method

.method public setCanPullUp(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanPullUp:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getPanelPullUpListener()Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/panel/COUIPanelPullUpListener;)V

    :cond_1
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/a;->setCancelable(Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCancelable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCancelable:Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->updateListeningForBackCallbacks()V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/a;->setCanceledOnTouchOutside(Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCancelable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCancelable:Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->startListeningForBackCallbacks(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCanceledOnTouchOutside:Z

    return-void
.end method

.method public setCenterButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->ensureDraggableContentLayout()V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setCenterButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->applyThemeOverlays(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentViewLocal(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initView()V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContentView can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDialogOffsetListener(Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDialogOffsetListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;

    return-void
.end method

.method public setDisableSubExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDisableSubExpand:Z

    return-void
.end method

.method public setDragableLinearLayout(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setDragableLinearLayout(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Z)V

    return-void
.end method

.method public setDragableLinearLayout(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Z)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    .line 3
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hideDragView()V

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPulledUpView:Landroid/view/View;

    .line 6
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setLayoutAtMaxHeight(Z)V

    .line 7
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mHandleViewHasPressAnim:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewPressAnim(Z)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->refresh()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 11
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayout:Landroid/view/View;

    const/4 v0, 0x3

    .line 12
    invoke-static {p2, v0}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->getMargin(Landroid/view/View;I)I

    move-result p2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mApplyWindowInsets:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1, p2, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setNavigationMargin(Landroid/content/res/Configuration;ILandroid/view/WindowInsets;)V

    .line 14
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initDraggableConstraintLayoutSize()V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsDraggable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsDraggable:Z

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsDraggable:Z

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public setExecuteNavColorAnimAfterDismiss(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsExecuteNavColorAnimAfterDismiss:Z

    return-void
.end method

.method public setFinalNavColorAfterDismiss(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFinalNavColorAfterDismiss:I

    return-void
.end method

.method public setFirstShowCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFirstShowCollapsed:Z

    return-void
.end method

.method public setFollowWindowChange(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFocusChange:Ljava/lang/Boolean;

    return-void
.end method

.method public setFrameRate(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mFrameRate:Z

    return-void
.end method

.method public setGlobalDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mGlobalDrag:Z

    return-void
.end method

.method public setHandleViewHasPressAnim(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mHandleViewHasPressAnim:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mHandleViewHasPressAnim:Z

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewPressAnim(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->removeDragViewPressAnim()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelHeight:I

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setPanelHeight()V

    return-void
.end method

.method public setHideDragViewHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mHideDragViewHeight:I

    .line 2
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDrawLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setHideDragViewHeight()V

    :cond_0
    return-void
.end method

.method public setIsHandlePanel(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->showDragView()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->hideDragView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIsInTinyScreen(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInTinyScreen:Z

    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsFullScreenInTinyScreen:Z

    return-void
.end method

.method public setIsInWindowFloatingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsInWindowFloatingMode:Z

    return-void
.end method

.method public setIsNeedOutsideViewAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsNeedOutsideViewAnim:Z

    return-void
.end method

.method public setIsShowInMaxHeight(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInMaxHeight:Z

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setLayoutAtMaxHeight(Z)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->ensureDraggableContentLayout()V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNavColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mNavColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getNavColor(Landroid/content/res/Configuration;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method

.method public setOutSideViewTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/support/panel/R$id;->panel_outside:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutSideViewTouchListener:Landroid/view/View$OnTouchListener;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public setOutsideMaskColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setPanelBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setPanelBackgroundTintColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackgroundTintColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setPanelBarViewColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelBarView;->setBarColor(I)V

    :cond_0
    return-void
.end method

.method public setPanelDismissTranslateDuration(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mTranslateHidingDuration:F

    return-void
.end method

.method public setPanelDragViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPanelDragViewDrawableTintColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawableTintColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPeekHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPeekHeight:I

    return-void
.end method

.method public setPhysicsParams(FF)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearStiffness:F

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mAppearDampingRatio:F

    return-void
.end method

.method public setPreferWidth(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreferWidth =\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPreferWidth:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIBottomSheetDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRegisterConfigurationChangeCallBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mRegisterConfigurationChangeCallBack:Z

    return-void
.end method

.method public setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->ensureDraggableContentLayout()V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setShouldRegisterWindowInsetsListener(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mShouldRegisterWindowInsetsListener:Z

    return-void
.end method

.method setShowInDialogFragment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsShowInDialogFragment:Z

    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mSkipCollapsed:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelWidth:I

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setPanelWidth()V

    return-void
.end method

.method public showDragView()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDrawLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDrawLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$dimen;->coui_panel_drag_view_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$dimen;->coui_panel_drag_view_shadow_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDrawLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDrawLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateFollowHandPanelLocation()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-nez v0, :cond_0

    const-string p0, "COUIBottomSheetDialog"

    const-string v0, "update follow hand panel while config change error."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isFollowHand()Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setHasAnchor(Z)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->haveEnoughSpace()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->offsetViewTo()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->updateBottomSheetCenterVertical()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mOutsideView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCurrentOutsideAlpha:F

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateLayoutWhileConfigChange(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->enforceChangeScreenWidth(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isGestureNavigation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsGestureNavigation:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->resetInnerStatus()V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->resetParentViewStyle(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mIsHandlePanel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isNormalScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->resetNavigationBarColor(Landroid/content/res/Configuration;)V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setNavigation()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->largeScreenLimitMaxSize()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDesignBottomSheetFrameLayout:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->updateLayoutWhileConfigChange(Landroid/content/res/Configuration;)V

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->updateFitToContents()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initNavigationView()V

    return-void
.end method
