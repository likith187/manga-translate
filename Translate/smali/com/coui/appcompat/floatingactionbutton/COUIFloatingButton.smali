.class public Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$COUIFloatingButtonBehavior;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$AutoDismissRunnable;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_ANIM_DELAY:I = 0x32

.field private static final ANIMATION_TYPE_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATION_TYPE_ROTATION:Ljava/lang/String; = "rotation"

.field private static final ANIMATION_TYPE_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final ANIMATION_TYPE_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final ANIMATION_TYPE_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field private static final DEFAULT_ALPHA_ANIMATION_MAX_VALUE:F = 1.0f

.field private static final DEFAULT_ALPHA_ANIMATION_MIN_VALUE:F = 0.0f

.field private static final DEFAULT_ANIMATION_EXPAND_END_VALUE:F = 1.1f

.field private static final DEFAULT_ANIMATION_EXPAND_START_VALUE:F = 1.0f

.field private static final DEFAULT_ANIMATION_NARROW_END_VALUE:F = 1.0f

.field private static final DEFAULT_ANIMATION_NARROW_START_VALUE:F = 1.1f

.field private static final DEFAULT_BUTTON_EXPAND_ANIMATION_DURATION:I = 0x42

.field private static final DEFAULT_BUTTON_LABEL_CLOSE_ALPHA_ANIMATION_DURATION:I = 0x15e

.field private static final DEFAULT_CLOSE_MENU_ALPHA_ANIMATION_END_VALUE:F = 0.0f

.field private static final DEFAULT_CLOSE_MENU_ALPHA_ANIMATION_START_VALUE:F = 1.0f

.field private static final DEFAULT_CLOSE_MENU_ANIMATION_DURATION_WITH_SLIDE_OUT:I = 0x96

.field private static final DEFAULT_CLOSE_MENU_NARROW_ANIMATION_END_VALUE:F = 0.6f

.field private static final DEFAULT_CLOSE_MENU_NARROW_ANIMATION_START_VALUE:F = 1.0f

.field private static final DEFAULT_COUI_FLOATING_BUTTON_SIZE:I = 0x38

.field private static final DEFAULT_DISABLE_ALPHA:F = 0.3f

.field private static final DEFAULT_ELEVATION_FLOATING_BUTTON:I = 0x18

.field private static final DEFAULT_ENABLE_ALPHA:F = 1.0f

.field private static final DEFAULT_ENLARGE_ANIMATION_DURATION:J = 0x15eL

.field private static final DEFAULT_ENLARGE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final DEFAULT_EXPAND_MENU_ALPHA_ANIMATION_END_VALUE:F = 1.0f

.field private static final DEFAULT_EXPAND_MENU_ALPHA_ANIMATION_START_VALUE:F = 0.0f

.field private static final DEFAULT_EXPAND_MENU_EXPAND_ANIMATION_END_VALUE:F = 1.0f

.field private static final DEFAULT_EXPAND_MENU_EXPAND_ANIMATION_START_VALUE:F = 0.6f

.field private static final DEFAULT_EXPAND_WAY:I = 0x0

.field private static final DEFAULT_LABEL_ALPHA_ANIMATION_DURATION:I = 0xc8

.field private static final DEFAULT_MAIN_FLOATING_BUTTON_ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_MARGIN_BOTTOM_FIRST_CHILD:I = 0x20

.field private static final DEFAULT_MARGIN_BOTTOM_NOT_FIRST_CHILD:I = 0x10

.field private static final DEFAULT_PRESS_FEEDBACK_ANIMATION_DURATION:I = 0xc8

.field private static final DEFAULT_PRESS_FEEDBACK_BRIGHTNESS_MAX_VALUE:F = 1.0f

.field private static final DEFAULT_PRESS_FEEDBACK_BRIGHTNESS_MIN_VALUE:F = 0.88f

.field private static final DEFAULT_PRESS_FEEDBACK_SCALE_MAX_VALUE:F = 1.0f

.field private static final DEFAULT_PRESS_FEEDBACK_SCALE_MIN_VALUE:F = 0.9f

.field private static final DEFAULT_PRESS_GUARANTEED_ANIMATION_VALUE:F = 0.98f

.field private static final DEFAULT_ROTATE_ANGLE:I = 0x2d

.field private static final DEFAULT_ROTATE_ANIMATION_DURATION:I = 0xfa

.field private static final DEFAULT_ROTATE_ANIMATION_DURATION_NO_ITEM:I = 0x12c

.field private static final DEFAULT_SCALE_ANIMATION_MAX_VALUE:F = 1.0f

.field private static final DEFAULT_SCALE_ANIMATION_MIN_VALUE:F = 0.6f

.field private static final DEFAULT_SCALE_PERCENT:F = 0.4f

.field private static final DEFAULT_SLIDE_IN_ANIMATION_DURATION:I = 0xc8

.field private static final DEFAULT_SLIDE_OUT_ANIMATION_DURATION:I = 0xfa

.field private static final DEFAULT_SLIDE_OUT_TRANSITION_ANIMATION_DURATION:I = 0x8c

.field private static final DEFAULT_SLIDING_THRESHOLD:I = 0xa

.field private static final DEFAULT_SPRING_ANIMATION_DAMPING_RATIO:F = 0.8f

.field private static final DEFAULT_SPRING_ANIMATION_START_VELOCITY:I = 0x0

.field private static final DEFAULT_SPRING_ANIMATION_STIFFNESS:I = 0x1f4

.field private static final DELAY_TIME_NO_ACTION_SLIDE_OUT:I = 0x1388

.field private static final DISABLED_STATE:[I

.field private static final MAIN_FAB_HORIZONTAL_MARGIN_IN_DP:I = 0xc

.field private static final MAIN_FAB_VERTICAL_MARGIN_IN_DP:I = 0x8

.field private static final MAX_COLOR_FLOATING_BUTTON_SIZE:I = 0x6

.field private static final MESSAGE_PAUSE_TIME_SLIDE_OUT:I = 0x1

.field private static final PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SDK_SUB_VERSION_2:I = 0x2

.field private static final SDK_VERSION_37:I = 0x25

.field private static final STATE_COLLAPSED:I = 0x1

.field private static final STATE_COLLAPSING:I = 0x4

.field private static final STATE_DISABLED:I = -0x1

.field private static final STATE_EXPANDED:I = 0x2

.field private static final STATE_EXPANDING:I = 0x3

.field private static final STATE_KEY_EXPANSION_MODE:Ljava/lang/String; = "expansionMode"

.field private static final STATE_KEY_IS_OPEN:Ljava/lang/String; = "isOpen"

.field private static final STATE_KEY_SUPER:Ljava/lang/String; = "superState"

.field private static final STATE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "COUIFloatingButton"

.field private static final TWO:F = 2.0f


# instance fields
.field private mAutoDismissRunnable:Ljava/lang/Runnable;

.field private mButtonSize:I

.field private mCloseMenuLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mCurrentProgress:F

.field private mCurrentWindowHeight:I

.field private mCurrentWindowHeightOffset:I

.field private mDisabledColor:I

.field private mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

.field private mFloatingButtonClickListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;

.field private mFloatingButtonLabelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatingButtonPixel:I

.field private mHideAnimator:Landroid/animation/ValueAnimator;

.field private final mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

.field private mIsAnimationInStart:Z

.field private mIsAnimationOutStart:Z

.field private mIsFloatingButtonExpandEnable:Z

.field private mIsNeedElevation:Z

.field private mIsNeedToDelayCancelScaleAnim:Z

.field private mIsNeedVibrate:Z

.field private mIsScaleAnimation:Z

.field private mLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mMainButtonGlobalRect:Landroid/graphics/Rect;

.field private final mMainButtonRect:Landroid/graphics/RectF;

.field private mMainButtonShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mMainFabCloseOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

.field private mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMainFloatingButtonX:F

.field private mMainFloatingButtonY:F

.field private mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

.field private mOnActionSelectedListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

.field private mOnActionSelectedProxyListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

.field private mOnChangeListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;

.field private mPressAnimationRecorder:Landroid/animation/ValueAnimator;

.field private mPressValue:F

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private mRotateAngle:F

.field private mRotateBackwardInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRotateForwardInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

.field private mSeamlessViewBundle:Landroid/os/Bundle;

.field private mState:I

.field private mStateBeforeDisable:I

.field private mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

.field private mStrokeEffectDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

.field private mTempOnActionSelectedListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

.field private mTranslateEnhancementRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->DISABLED_STATE:[I

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->DEFAULT_ENLARGE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonGlobalRect:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    invoke-direct {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    .line 6
    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStateBeforeDisable:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCurrentProgress:F

    .line 8
    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-direct {v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 12
    new-instance v2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 13
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 14
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCloseMenuLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 15
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mRotateForwardInterpolator:Landroid/view/animation/PathInterpolator;

    .line 16
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mRotateBackwardInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedElevation:Z

    .line 18
    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedVibrate:Z

    .line 19
    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsScaleAnimation:Z

    .line 20
    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 21
    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnActionSelectedProxyListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    .line 22
    invoke-direct {p0, p1, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonGlobalRect:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    invoke-direct {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    .line 28
    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStateBeforeDisable:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCurrentProgress:F

    .line 30
    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-direct {v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 34
    new-instance v2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 35
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 36
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCloseMenuLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 37
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mRotateForwardInterpolator:Landroid/view/animation/PathInterpolator;

    .line 38
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mRotateBackwardInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedElevation:Z

    .line 40
    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedVibrate:Z

    .line 41
    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsScaleAnimation:Z

    .line 42
    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 43
    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnActionSelectedProxyListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    .line 47
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonGlobalRect:Landroid/graphics/Rect;

    .line 48
    new-instance p3, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    invoke-direct {p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    const/4 p3, 0x0

    .line 49
    iput p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    .line 50
    iput p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStateBeforeDisable:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 51
    iput p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCurrentProgress:F

    .line 52
    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-direct {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3, v2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 56
    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 57
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 58
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCloseMenuLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 59
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mRotateForwardInterpolator:Landroid/view/animation/PathInterpolator;

    .line 60
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mRotateBackwardInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p3, 0x1

    .line 61
    iput-boolean p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedElevation:Z

    .line 62
    iput-boolean p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedVibrate:Z

    .line 63
    iput-boolean p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsScaleAnimation:Z

    .line 64
    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 65
    new-instance p3, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    iput-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnActionSelectedProxyListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->lambda$init$0(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnActionSelectedListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonClickListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->handleOnClickFloatingButton()V

    return-void
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mAutoDismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isLastFloatingButtonLabel(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setState(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isFirstFloatingButtonLabel(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mTempOnActionSelectedListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->narrowFloatingButton(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getTotalLabelHeight(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animatePress()V

    return-void
.end method

.method static synthetic access$800(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/state/COUIStateEffectDrawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animateNormal(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private animateNormal(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isEventInsideView(II)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->closeFloatingButtonMenu()V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p1, v2, v2, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setTouchEnterStateLocked(ZZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isEventInsideView(II)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p1, v2, v2, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setTouchEnterStateLocked(ZZZ)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method private animatePress()V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->performHapticFeedback()V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->hasFloatingButtonLabel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v0, v1, v1, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setTouchEnterStateLocked(ZZZ)V

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method private animationFloatingButtonMenuClose(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIIZ)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getTotalLabelHeight(I)I

    move-result v1

    if-eqz p5, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_0
    int-to-float v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const-string v0, "translationY"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelText()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v1, ""

    if-eq p2, v1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isRtlMode()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_2
    :goto_0
    new-instance p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    move v5, p5

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;IZLcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;I)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animationFloatingButtonMenuExpand(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;III)V
    .locals 14

    move-object v1, p0

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v4, Landroidx/dynamicanimation/animation/f;

    sget-object v0, Landroidx/dynamicanimation/animation/c;->n:Landroidx/dynamicanimation/animation/c$s;

    const/4 v2, 0x0

    move-object v5, p1

    invoke-direct {v4, p1, v0, v2}, Landroidx/dynamicanimation/animation/f;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;F)V

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/f;->u()Landroidx/dynamicanimation/animation/g;

    move-result-object v0

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/g;->f(F)Landroidx/dynamicanimation/animation/g;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/f;->u()Landroidx/dynamicanimation/animation/g;

    move-result-object v0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/g;->d(F)Landroidx/dynamicanimation/animation/g;

    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/c;->n(F)Landroidx/dynamicanimation/animation/c;

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x2

    new-array v6, v3, [F

    fill-array-data v6, :array_0

    const-string v8, "scaleX"

    invoke-static {v0, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v6

    new-array v9, v3, [F

    fill-array-data v9, :array_1

    const-string v10, "scaleY"

    invoke-static {v6, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v9

    new-array v11, v3, [F

    fill-array-data v11, :array_2

    invoke-static {v9, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v9

    new-array v11, v3, [F

    fill-array-data v11, :array_3

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v10

    new-array v11, v3, [F

    fill-array-data v11, :array_4

    const-string v12, "alpha"

    invoke-static {v10, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v11

    new-array v13, v3, [F

    fill-array-data v13, :array_5

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v12, v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0x15e

    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v12, 0x5

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v6, v12, v0

    aput-object v10, v12, v3

    const/4 v0, 0x3

    aput-object v8, v12, v0

    const/4 v0, 0x4

    aput-object v9, v12, v0

    invoke-virtual {v7, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move/from16 v0, p2

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, ""

    if-eq v0, v3, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    :cond_1
    :goto_0
    new-instance v8, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;

    move-object v0, v8

    move-object v1, p0

    move/from16 v2, p3

    move-object v3, v11

    move-object v5, p1

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;ILandroid/animation/ObjectAnimator;Landroidx/dynamicanimation/animation/f;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;I)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelHideAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private createMainFab()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 7

    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_item_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mButtonSize:I

    if-lez v2, :cond_0

    iput v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonPixel:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonPixel:I

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonPixel:I

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonPixel:I

    int-to-float v5, v4

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const v3, 0x800005

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->dpToPx(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->dpToPx(Landroid/content/Context;F)I

    const/4 p0, 0x0

    invoke-virtual {v2, v3, p0, v3, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget p0, Lcom/support/floatingactionbutton/R$id;->coui_floating_button_main_fab:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    return-object v0
.end method

.method private static dpToPx(Landroid/content/Context;F)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private findFloatingButtonItemByIndex(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getBrightnessColor(IF)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Lu/d;->k(I[F)V

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mTranslateEnhancementRatio:F

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    const/16 v1, 0xff

    if-nez p0, :cond_0

    const/4 p0, 0x2

    aget p1, v0, p0

    mul-float/2addr p1, p2

    aput p1, v0, p0

    invoke-static {v0}, Lu/d;->a([F)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lu/d;->a([F)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {p1, v0, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private getBrightnessValue(F)F
    .locals 2

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mTranslateEnhancementRatio:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    div-float p0, v1, p0

    goto :goto_0

    :cond_0
    const p0, 0x3f6147ae    # 0.88f

    :goto_0
    sub-float/2addr v1, p0

    mul-float/2addr v1, p1

    add-float/2addr p0, v1

    return p0
.end method

.method private getGlobalVisibleRectWithoutTransformation(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v2

    div-float/2addr v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result p1

    div-float/2addr p1, v1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonGlobalRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    iget v3, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getLayoutPosition(I)I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, p1

    return p0
.end method

.method private getScaleValue(F)F
    .locals 0

    const p0, 0x3dccccd0    # 0.100000024f

    mul-float/2addr p1, p0

    const p0, 0x3f666666    # 0.9f

    add-float/2addr p1, p0

    return p1
.end method

.method private getTotalLabelHeight(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x48

    add-int/lit8 p1, p1, 0x58

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->dpToPx(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleOnClickFloatingButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;->onMainActionSelected()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->closeFloatingButtonMenu()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->openFloatingButtonMenu()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->closeFloatingButtonMenu()V

    .line 3
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p0}, Landroidx/core/view/m0;->d(Landroid/view/View;)Landroidx/core/view/u0;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/core/view/u0;->f(F)Landroidx/core/view/u0;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/u0;->g(J)Landroidx/core/view/u0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/u0;->m()V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v0, 0x2

    sget-object v1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButton:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButton_fabNeedElevation:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedElevation:Z

    sget v1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButton_fabNeedVibrate:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedVibrate:Z

    sget v1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButton_fabButtonSize:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mButtonSize:I

    sget v1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButton_fabScaleAnimation:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsScaleAnimation:Z

    sget v1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButton_fabTranslateEnhancementRatio:I

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mTranslateEnhancementRatio:F

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->createMainFab()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$4;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    iget-boolean v4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedElevation:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_three:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/floatingactionbutton/R$color;->coui_floating_button_elevation_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToFloatingActionButton(Landroid/view/View;II)V

    :cond_0
    iget-object v4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v4, v5, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-direct {v1, p1, v2}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    iget-object v4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v7, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    invoke-virtual {v1, v4, v5, v7}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskRect(Landroid/graphics/RectF;FF)V

    new-instance v1, Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-direct {v1, p1}, Lcom/coui/appcompat/state/COUIStrokeDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStrokeEffectDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    iget-object v4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v6

    iget-object v7, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    invoke-virtual {v1, v4, v5, v7}, Lcom/coui/appcompat/state/COUIStrokeDrawable;->setStrokeRect(Landroid/graphics/RectF;FF)V

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonPixel:I

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStrokeEffectDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v6, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    new-array v7, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v7, v2

    aput-object v6, v7, v3

    new-instance v5, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-direct {v5, v7}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    iget-object v6, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v5, v6, v0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->enableScaleEffect(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v5, 0x800005

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v6, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/floatingactionbutton/a;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$AutoDismissRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$AutoDismissRunnable;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/floatingactionbutton/R$color;->coui_floating_button_disabled_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lt/h;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mDisabledColor:I

    :try_start_0
    sget p1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButton_fabExpandAnimationEnable:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsFloatingButtonExpandEnable:Z

    sget p1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButton_mainFloatingButtonSrc:I

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setMainFabDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setExpansionMode()V

    sget p1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButton_mainFloatingButtonBackgroundColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setMainFloatingButtonBackgroundColor(Landroid/content/res/ColorStateList;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsFloatingButtonExpandEnable:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setFloatingButtonExpandEnable(Z)V

    sget p1, Lcom/support/floatingactionbutton/R$styleable;->COUIFloatingButton_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :goto_2
    :try_start_1
    const-string p1, "COUIFloatingButton"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure setting FabWithLabelView icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private isEventInsideView(II)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getGlobalVisibleRectWithoutTransformation(Landroid/view/View;)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private isFirstFloatingButtonLabel(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->findFloatingButtonItemByIndex(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne p1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private isLastFloatingButtonLabel(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->findFloatingButtonItemByIndex(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRtlMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$init$0(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStrokeEffectDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->setFocusEntered()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStrokeEffectDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->setFocusExited()V

    :goto_0
    return-void
.end method

.method private narrowFloatingButton(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIZ)V
    .locals 7

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p4

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p4, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v1

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v3

    new-array v5, v0, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v3

    new-array v5, v0, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v4

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    const-string v6, "alpha"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p1

    new-array v5, v0, [F

    fill-array-data v5, :array_5

    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCloseMenuLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object p4, v5, v6

    const/4 p4, 0x1

    aput-object v1, v5, p4

    aput-object v4, v5, v0

    const/4 p4, 0x3

    aput-object v3, v5, p4

    const/4 p4, 0x4

    aput-object v2, v5, p4

    invoke-virtual {p2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$11;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$11;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private performHapticFeedback()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedVibrate:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private removeActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;Z)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p0

    return-object p0
.end method

.method private removeActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;Z)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;",
            "Ljava/util/Iterator<",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;",
            ">;Z)",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-object p3

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private setExpansionMode()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setOrientation(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    invoke-virtual {p0, v2, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->closeFloatingButtonMenu(ZI)V

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->removeAllActionItems()V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->addAllActionItems(Ljava/util/Collection;)Ljava/util/Collection;

    return-void
.end method

.method private setFloatingButtonPosition(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;I)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setState(I)Z
    .locals 6

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_6

    const/4 v3, 0x3

    if-eq v0, v2, :cond_4

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_a

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    goto :goto_0

    :cond_1
    if-ne p1, v5, :cond_a

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    goto :goto_0

    :cond_2
    if-eq p1, v4, :cond_3

    if-ne p1, v1, :cond_a

    :cond_3
    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    goto :goto_0

    :cond_4
    if-eq p1, v3, :cond_5

    if-eq p1, v1, :cond_5

    if-nez p1, :cond_a

    :cond_5
    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    goto :goto_0

    :cond_6
    if-eq p1, v1, :cond_7

    if-ne p1, v2, :cond_a

    :cond_7
    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    if-ne p1, v2, :cond_a

    :cond_9
    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    :cond_a
    :goto_0
    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    if-ne p1, p0, :cond_b

    goto :goto_1

    :cond_b
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static supportSeamlessAnimation()Z
    .locals 2

    const/16 v0, 0x25

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/coui/appcompat/version/COUIVersionUtil;->checkOPlusViewSubSDK(II)Z

    move-result v0

    return v0
.end method

.method private toggle(ZZIZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedElevation:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;->onMainActionSelected()Z

    :cond_1
    const/4 p1, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isOpen()Z

    move-result v0

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->visibilitySetup(ZZIZ)V

    invoke-direct {p0, p2, p4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->updateMainFabDrawable(ZZ)V

    :cond_4
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;->onToggleChanged(Z)V

    :cond_5
    return-void
.end method

.method private updateMainFabDrawable(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p0, p1, v0, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->rotateForward(Landroid/view/View;FZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->rotateBackward(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateMainFloatingButtonBackgroundColor()V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButtonBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->DISABLED_STATE:[I

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mDisabledColor:I

    invoke-virtual {v0, v2, p0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p0

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mDisabledColor:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    return-void
.end method

.method private visibilitySetup(ZZIZ)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_3

    iget-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    add-int/lit8 p4, v0, -0x1

    sub-int/2addr p4, p1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCurrentWindowHeight:I

    if-eqz v3, :cond_1

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isAllowLabelDisplay(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    if-eqz p2, :cond_2

    mul-int/lit8 v4, p1, 0x32

    invoke-direct {p0, p3, v4, p4, v3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonMenuExpand(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;III)V

    goto :goto_1

    :cond_0
    invoke-virtual {p3, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    if-eqz p2, :cond_2

    mul-int/lit8 v3, p1, 0x32

    invoke-direct {p0, p3, v3, p4, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonMenuExpand(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;III)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v3, p1, 0x32

    invoke-direct {p0, p3, v3, p4, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonMenuExpand(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;III)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-static {p0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$102(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Z)Z

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_2
    if-ge p1, v0, :cond_6

    iget-object v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    if-eqz p2, :cond_5

    mul-int/lit8 v5, p1, 0x32

    move-object v3, p0

    move v6, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonMenuClose(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIIZ)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p1, v2, v2, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setTouchEnterStateLocked(ZZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-static {p0, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$102(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Z)Z

    :goto_3
    return-void
.end method


# virtual methods
.method public addActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->addActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p0

    return-object p0
.end method

.method public addActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->addActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;IZ)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p0

    return-object p0
.end method

.method public addActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;IZ)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->addActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;IZI)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p0

    return-object p0
.end method

.method public addActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;IZI)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .locals 6

    .line 4
    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->replaceActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->createFabWithLabelView(Landroid/content/Context;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p1

    .line 7
    iget p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mButtonSize:I

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setMainButtonSize(I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setOrientation(I)V

    .line 9
    iget-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnActionSelectedProxyListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V

    .line 10
    invoke-virtual {p1, p4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    .line 11
    invoke-direct {p0, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getLayoutPosition(I)I

    move-result p3

    if-nez p2, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_item_first_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, p4, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 13
    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_item_normal_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, p4, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 15
    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 16
    :goto_0
    iget-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {p3, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/16 v4, 0x12c

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonMenuClose(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIIZ)V

    return-object p1
.end method

.method public addAllActionItems(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->addActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public animationFloatingButtonEnlarge()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0}, Landroidx/core/view/m0;->d(Landroid/view/View;)Landroidx/core/view/u0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/u0;->c()V

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->cancelHideAnimator()V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->DEFAULT_ENLARGE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$6;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public animationFloatingButtonShrink(Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0}, Landroidx/core/view/m0;->d(Landroid/view/View;)Landroidx/core/view/u0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/u0;->c()V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x0

    const/4 v4, 0x1

    aput v0, v2, v4

    const-string v0, "alpha"

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    const v5, 0x3f19999a    # 0.6f

    new-array v6, v1, [F

    aput v2, v6, v3

    aput v5, v6, v4

    const-string v2, "scaleX"

    invoke-static {v2, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v6, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    new-array v1, v1, [F

    aput v6, v1, v3

    aput v5, v1, v4

    const-string v3, "scaleY"

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->DEFAULT_ENLARGE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$7;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$7;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public animationFloatingButtonSlideIn(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonEnlarge()V

    return-void
.end method

.method public animationFloatingButtonSlideOut()Landroid/animation/ValueAnimator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonShrink(Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public closeFloatingButtonMenu()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v0, v1, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->toggle(ZZIZ)V

    return-void
.end method

.method public closeFloatingButtonMenu(Z)V
    .locals 2

    const/4 p1, 0x1

    const/16 v0, 0x12c

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1, p1, v0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->toggle(ZZIZ)V

    return-void
.end method

.method public closeFloatingButtonMenu(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->toggle(ZZIZ)V

    return-void
.end method

.method public closeFloatingButtonMenu(ZIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->toggle(ZZIZ)V

    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getChildFloatingButtonWithPosition(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p0

    return-object p0
.end method

.method public getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method public getMainFloatingButtonBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSeamlessViewBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mSeamlessImpl:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->getSeamlessViewBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public hasFloatingButtonLabel()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hide()V
    .locals 1

    .line 4
    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$5;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonShrink(Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public isAllowLabelDisplay(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getTotalLabelHeight(I)I

    move-result p1

    int-to-float p1, p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCurrentWindowHeight:I

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCurrentWindowHeightOffset:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public isAnimationRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$200(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;)Z

    move-result p0

    return p0
.end method

.method public isFloatingButtonHasChildItem()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$100(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;)Z

    move-result p0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mButtonSize:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_normal_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonPixel:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/floatingactionbutton/R$dimen;->coui_floating_button_large_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonPixel:I

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonPixel:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonPixel:I

    int-to-float v1, v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskRect(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStrokeEffectDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p0, v2

    invoke-virtual {p1, v0, v1, p0}, Lcom/coui/appcompat/state/COUIStrokeDrawable;->setStrokeRect(Landroid/graphics/RectF;FF)V

    :cond_1
    return-void
.end method

.method public openFloatingButtonMenu()V
    .locals 3

    const/16 v0, 0x12c

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, v2, v2, v0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->toggle(ZZIZ)V

    return-void
.end method

.method public openFloatingButtonMenu(Z)V
    .locals 3

    const/16 v0, 0x12c

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->toggle(ZZIZ)V

    return-void
.end method

.method public openFloatingButtonMenu(ZI)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->toggle(ZZIZ)V

    return-void
.end method

.method public removeActionItem(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 2
    const-string p0, "COUIFloatingButton"

    const-string p1, "The position cannot be greater than or equal to mFloatingButtonLabelList.size"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Z

    return-object p1
.end method

.method public removeActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->removeActionItemByPosition(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeActionItemByPosition(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p0

    return-object p0
.end method

.method public removeAllActionItems()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;Z)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeFloatingButtonItemWithWindowHeight(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->removeFloatingButtonItemWithWindowHeight(II)V

    return-void
.end method

.method public removeFloatingButtonItemWithWindowHeight(II)V
    .locals 3

    .line 2
    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCurrentWindowHeight:I

    .line 3
    iput p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mCurrentWindowHeightOffset:I

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isAllowLabelDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public replaceActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->replaceActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public replaceActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 6
    invoke-virtual {p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;Z)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    .line 7
    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p1

    invoke-direct {p0, p1, v0, v4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;Z)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    .line 8
    invoke-virtual {p0, p2, v2, v4, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->addActionItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;IZI)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public rotateBackward(Z)Landroid/animation/ObjectAnimator;
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    iget v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mRotateAngle:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v2, v3

    const-string v1, "rotation"

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mRotateBackwardInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x12c

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public rotateForward(Landroid/view/View;FZ)V
    .locals 3

    iput p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mRotateAngle:F

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    const-string p2, "rotation"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mRotateForwardInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    const-wide/16 p2, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x12c

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setAutoSlideInDisable()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mState:I

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStateBeforeDisable:I

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setState(I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mStateBeforeDisable:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setState(I)Z

    :goto_0
    return-void
.end method

.method public setFloatingButtonClickListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonClickListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;

    return-void
.end method

.method public setFloatingButtonExpandEnable(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$3;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIsFloatingButtonExpandEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsFloatingButtonExpandEnable:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setState(I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setState(I)Z

    :goto_0
    return-void
.end method

.method public setMainFabDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->updateMainFabDrawable(ZZ)V

    return-void
.end method

.method public setMainFloatingButtonBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-static {v0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$302(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-static {v0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$402(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;I)I

    iget-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsNeedElevation:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mMainFloatingButton:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_three:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/floatingactionbutton/R$color;->coui_floating_button_elevation_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-static {v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$400(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToFloatingActionButton(Landroid/view/View;III)V

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->updateMainFloatingButtonBackgroundColor()V

    return-void
.end method

.method public setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V
    .locals 2

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnActionSelectedListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mTempOnActionSelectedListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnActionSelectedProxyListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnChangeListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;

    return-void
.end method

.method public setScaleAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->mIsScaleAnimation:Z

    return-void
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonEnlarge()V

    return-void
.end method
