.class public Lcom/coui/appcompat/searchview/COUISearchBar;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/CollapsibleActionView;
.implements Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;,
        Lcom/coui/appcompat/searchview/COUISearchBar$OnStateChangeListener;,
        Lcom/coui/appcompat/searchview/COUISearchBar$OnSearchBarBackgroundBoundsChangedListener;,
        Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;,
        Lcom/coui/appcompat/searchview/COUISearchBar$DefaultAnimatorListener;,
        Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;,
        Lcom/coui/appcompat/searchview/COUISearchBar$SearchViewState;,
        Lcom/coui/appcompat/searchview/COUISearchBar$SearchViewType;
    }
.end annotation


# static fields
.field private static final CLAMP_ANIMATION_PERCENT:F = 0.3f

.field private static final DEFAULT_BUTTON_ALPHA_CHANGE_DURATION:J = 0x15eL

.field private static final DEFAULT_BUTTON_ALPHA_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_EVALUATOR:Landroid/animation/ArgbEvaluator;

.field private static final DEFAULT_FADE_DURATION:J = 0x96L

.field private static final DEFAULT_MAX_LINES:I = 0x1

.field private static final DEFAULT_SEARCH_VIEW_BUTTON_ALPHA_FADE_IN_DURATION:J = 0x190L

.field private static final DEFAULT_SEARCH_VIEW_BUTTON_ALPHA_FADE_OUT_DURATION:J = 0xc8L

.field private static final DEFAULT_SEARCH_VIEW_BUTTON_ANIMATION_START_DELAY:J = 0x32L

.field private static final DEFAULT_SEARCH_VIEW_BUTTON_OFFSET_DURATION:J = 0x190L

.field private static final DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_DURATION:J = 0x1c2L

.field private static final DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_SEARCH_VIEW_SCALE_CHANGE_DURATION:J = 0x1c2L

.field private static final DEFAULT_SEARCH_VIEW_SCALE_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FLOAT_FOUR:F = 4.0f

.field private static final FLOAT_POINT_SEVEN_FIVE:F = 0.75f

.field private static final FLOAT_TWO:F = 2.0f

.field private static final NON_INSTANT_SEARCH_BUTTON_ALPHA_CHANGE_DURATION:J = 0x64L

.field private static final RESPONSIVE_WIDTH_TYPE_COMPAT:I = 0x0

.field private static final RESPONSIVE_WIDTH_TYPE_EXPANDED:I = 0x2

.field private static final RESPONSIVE_WIDTH_TYPE_MEDIUM:I = 0x1

.field public static final STATE_EDIT:I = 0x1

.field public static final STATE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "COUISearchBar"

.field public static final TYPE_INSTANT_SEARCH:I = 0x0

.field private static final TYPE_NAME:[Ljava/lang/String;

.field public static final TYPE_NON_INSTANT_SEARCH:I = 0x1

.field private static final WAY_AT_BEHIND:I = 0x1

.field private static final WAY_AT_FRONT:I = 0x2

.field private static final WAY_NONE:I


# instance fields
.field private mAddToToolbarWay:I

.field private mAnimatorHelper:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

.field private mAttrs:Landroid/util/AttributeSet;

.field private final mBackgroundRect:Landroid/graphics/Rect;

.field private mBackgroundScaleFraction:F

.field private mButtonOffsetAnimationDistance:I

.field private mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

.field private mClearTextDrawableResourceId:I

.field private mCollapsedMinHeight:I

.field private mCollapsingHeightPercent:F

.field private mDividerHeight:I

.field private final mDividerRect:Landroid/graphics/Rect;

.field private mDividerWidth:I

.field private final mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

.field private mDrawingProxyView:Landroid/view/View;

.field private mExtraHorizontalBackground:I

.field private mFunctionButtonEndGap:[I

.field private mFunctionButtonMaxWidth:I

.field private mFunctionButtonStartGap:I

.field private mFunctionalButton:Landroid/widget/TextView;

.field private mFunctionalButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

.field private mFunctionalButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

.field private mFunctionalButtonOffsetEnterAnimator:Landroid/animation/ValueAnimator;

.field private mFunctionalButtonOffsetExitAnimator:Landroid/animation/ValueAnimator;

.field private mGravityInToolBar:I

.field private mHasAddedToToolbar:Z

.field private mHideFunctionalButton:Z

.field private mHorizontalDividerColor:I

.field private mIconMaxHeight:I

.field private mIconMaxWidth:I

.field private mInitSearchBarHeight:I

.field private mInnerIconSize:I

.field private mInnerPrimaryButton:Landroid/widget/ImageView;

.field private mInnerSecondaryButton:Landroid/widget/ImageView;

.field private mInputMethodAnimationEnabled:Z

.field private mIsAtLeastR:Z

.field private mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

.field private mMenuItem:Landroid/view/MenuItem;

.field private mNavigationButtonStartGap:[I

.field private mNavigationButtonWidth:I

.field private mNavigationView:Landroid/widget/ImageView;

.field private mNonInstantSearchInnerGap:I

.field private mNormalBackgroundColor:I

.field private mNormalBackgroundHeight:I

.field private mOnAnimationListener:Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;

.field private mOnSearchBarBackgroundBoundsChangedListener:Lcom/coui/appcompat/searchview/COUISearchBar$OnSearchBarBackgroundBoundsChangedListener;

.field private mOnStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/searchview/COUISearchBar$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOuterButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

.field private mOuterButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

.field private mOuterButtonEndGap:[I

.field private mOuterButtonGap:I

.field private mOuterButtonOffsetEnterAnimator:Landroid/animation/ValueAnimator;

.field private mOuterButtonOffsetExitAnimator:Landroid/animation/ValueAnimator;

.field private mOuterButtonWidth:I

.field private mOuterPrimaryButton:Landroid/widget/ImageView;

.field private mOuterSecondaryButton:Landroid/widget/ImageView;

.field private mPressed:Z

.field private mPressedBackgroundColor:I

.field private mQuickDeleteButton:Landroid/widget/ImageView;

.field private mResponsiveHorizontalPadding:[I

.field private mResponsiveWidthSize:I

.field private mSearchBarContentDesc:Ljava/lang/String;

.field private mSearchBarHintTitleDesc:Ljava/lang/String;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchIconStartGap:I

.field private mSearchIconView:Landroid/widget/ImageView;

.field private mSearchViewOffsetEnterAnimator:Landroid/animation/ValueAnimator;

.field private mSearchViewOffsetExitAnimator:Landroid/animation/ValueAnimator;

.field private mSearchViewScaleEnterAnimator:Landroid/animation/ValueAnimator;

.field private mSearchViewScaleExitAnimator:Landroid/animation/ValueAnimator;

.field private mSearchViewSmoothEnterAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSearchViewSmoothExitAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSearchViewType:I

.field private mShowImeAnimDuration:I

.field private mShowImeInterpolator:Landroid/view/animation/Interpolator;

.field private mShrinkFraction:F

.field private volatile mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

.field private mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

.field private mStyle:I

.field private mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private mToolBarAnimationRunning:Z

.field private mUseResponsivePadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->DEFAULT_SEARCH_VIEW_SCALE_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->DEFAULT_BUTTON_ALPHA_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->DEFAULT_EVALUATOR:Landroid/animation/ArgbEvaluator;

    const-string v0, "TYPE_INSTANT_SEARCH"

    const-string v1, "TYPE_NON_INSTANT_SEARCH"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->TYPE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/toolbar/R$attr;->couiSearchBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lcom/support/toolbar/R$style;->Widget_COUI_COUISearchBar_Dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/support/toolbar/R$style;->Widget_COUI_COUISearchBar:I

    .line 5
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 7
    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    invoke-direct {v0}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerRect:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundScaleFraction:F

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    .line 12
    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAddToToolbarWay:I

    const/16 v2, 0x30

    .line 13
    iput v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mGravityInToolBar:I

    .line 14
    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mPressed:Z

    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mUseResponsivePadding:Z

    .line 16
    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mButtonOffsetAnimationDistance:I

    .line 17
    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStyle:I

    const/4 v3, -0x1

    .line 18
    iput v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mClearTextDrawableResourceId:I

    .line 19
    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCollapsingHeightPercent:F

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShrinkFraction:F

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAttrs:Landroid/util/AttributeSet;

    .line 22
    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInputMethodAnimationEnabled:Z

    .line 23
    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeAnimDuration:I

    .line 24
    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeInterpolator:Landroid/view/animation/Interpolator;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    .line 27
    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mHideFunctionalButton:Z

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->lambda$showInToolBar$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/searchview/COUISearchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureQuickDeleteButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewScaleEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewScaleEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1300()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->DEFAULT_SEARCH_VIEW_SCALE_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    return p0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/searchview/COUISearchBar;)I
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getOuterButtonCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$1700()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->DEFAULT_BUTTON_ALPHA_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButtonOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButtonOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->showButton(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewSmoothEnterAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewSmoothEnterAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/coui/appcompat/searchview/COUISearchBar;)Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOnAnimationListener:Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewOffsetExitAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewOffsetExitAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewScaleExitAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewScaleExitAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButtonOffsetExitAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButtonOffsetExitAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonOffsetExitAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonOffsetExitAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewSmoothExitAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewSmoothExitAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->functionalButtonShouldShow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/coui/appcompat/searchview/COUISearchBar;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/coui/appcompat/searchview/COUISearchBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->setOuterButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/coui/appcompat/searchview/COUISearchBar;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->notifyOnStateChange(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/coui/appcompat/searchview/COUISearchBar;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShrinkFraction:F

    return p1
.end method

.method static synthetic access$4100(Lcom/coui/appcompat/searchview/COUISearchBar;)Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/coui/appcompat/searchview/COUISearchBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIsAtLeastR:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/coui/appcompat/searchview/COUISearchBar;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeAnimDuration:I

    return p0
.end method

.method static synthetic access$4400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/coui/appcompat/searchview/COUISearchBar;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mButtonOffsetAnimationDistance:I

    return p0
.end method

.method static synthetic access$4600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/searchview/COUISearchBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInputMethodAnimationEnabled:Z

    return p0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/searchview/COUISearchBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBarAnimationRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/coui/appcompat/searchview/COUISearchBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->setToolBarChildVisibility(I)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->lambda$initDrawingProxyView$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/coui/appcompat/searchview/COUISearchBar;Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->lambda$setImeInsetsAnimationCallback$4(Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;)V

    return-void
.end method

.method private calculateRelativeTop(III)I
    .locals 0

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    return p1
.end method

.method private clampMarginValue(F)F
    .locals 0

    const p0, 0x3e99999a    # 0.3f

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private clampSearchViewHeight(F)F
    .locals 0

    const p0, 0x3f333333    # 0.7f

    div-float/2addr p1, p0

    const p0, 0x3edb6db8

    sub-float/2addr p1, p0

    return p1
.end method

.method private configImageViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    sub-int/2addr p3, p0

    div-int/lit8 p3, p3, 0x2

    const/4 p0, 0x0

    invoke-virtual {p1, p3, p0, p3, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private configResponsive()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->lambda$hideInToolBar$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method public static synthetic e(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->lambda$ensureQuickDeleteButton$1(Landroid/view/View;)V

    return-void
.end method

.method private ensureAddedToToolBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mHasAddedToToolbar:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mHasAddedToToolbar:Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->removeLast()V

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mGravityInToolBar:I

    iput v1, v0, Landroidx/appcompat/app/a$a;->gravity:I

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v1, p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSearchView(Landroid/view/View;Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private ensureImageView(Landroid/graphics/drawable/Drawable;ZZI)Landroid/widget/ImageView;
    .locals 1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p1, p4}, Lcom/coui/appcompat/rippleutil/COUIRippleDrawableUtil;->setIconPressRippleDrawable(Landroid/view/View;I)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private ensureNavigationView()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->getMaskRippleRadiusByType(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/rippleutil/COUIRippleDrawableUtil;->setIconPressRippleDrawable(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_action_bar_navigation_padding_start_material:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private ensureQuickDeleteButton()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mClearTextDrawableResourceId:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureImageView(Landroid/graphics/drawable/Drawable;ZZI)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/toolbar/R$string;->coui_search_clear_button_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-direct {p0, v1, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->configImageViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->showButton(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/coui/appcompat/searchview/c;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/c;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private functionalButtonShouldShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mHideFunctionalButton:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAnimatorHelper:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAnimatorHelper:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAnimatorHelper:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    return-object p0
.end method

.method private getInternalPaddingEnd()I
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mUseResponsivePadding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveHorizontalPadding:[I

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    aget p0, v0, p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    return p0
.end method

.method private getInternalPaddingStart()I
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mUseResponsivePadding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveHorizontalPadding:[I

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    aget p0, v0, p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    return p0
.end method

.method private getOuterButtonCount()I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getSearchEditOrAnimationLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIsAtLeastR:Z

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->initDrawingProxyView()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->initEdittext()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->loadHideFunctionButtonAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->initFunctionButton()V

    iput-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAttrs:Landroid/util/AttributeSet;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStyle:I

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStyle:I

    if-nez v0, :cond_1

    iput p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStyle:I

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_view_collapsed_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCollapsedMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_color_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mHorizontalDividerColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInitSearchBarHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_non_instant_search_inner_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNonInstantSearchInnerGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_normal_background_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNormalBackgroundHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_inner_search_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_inner_search_icon_start_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconStartGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_functional_button_divider_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_functional_button_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_outer_button_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_navigation_button_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationButtonWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_outer_button_gap_between_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_functional_button_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionButtonMaxWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_functional_button_start_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionButtonStartGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_functional_button_offset_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mButtonOffsetAnimationDistance:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_view_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIconMaxWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_view_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIconMaxHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_functional_button_end_gap_compat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/toolbar/R$dimen;->coui_search_bar_functional_button_end_gap_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/toolbar/R$dimen;->coui_search_bar_functional_button_end_gap_expanded:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionButtonEndGap:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_navigation_button_start_gap_compat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/toolbar/R$dimen;->coui_search_bar_navigation_button_start_gap_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/toolbar/R$dimen;->coui_search_bar_navigation_button_start_gap_expanded:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationButtonStartGap:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_outer_button_end_gap_compat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/toolbar/R$dimen;->coui_search_bar_outer_button_end_gap_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/toolbar/R$dimen;->coui_search_bar_outer_button_end_gap_expanded:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonEndGap:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_bar_responsive_horizontal_padding_compat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/toolbar/R$dimen;->coui_search_bar_responsive_horizontal_padding_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/toolbar/R$dimen;->coui_search_bar_responsive_horizontal_padding_expanded:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveHorizontalPadding:[I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->loadAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$color;->coui_search_view_selector_color_normal:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lt/h;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNormalBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$color;->coui_search_view_selector_color_pressed:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lt/h;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mPressedBackgroundColor:I

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->setButtonDividerColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    iget p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNormalBackgroundColor:I

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->setCurrentBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$string;->coui_search_edit_box_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchBarContentDesc:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$string;->support_abc_searchview_description_search:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchBarHintTitleDesc:Ljava/lang/String;

    return-void
.end method

.method private initDrawingProxyView()V
    .locals 5

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    new-instance v0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    invoke-virtual {v2}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->getNormalBackgroundPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskPath(Landroid/graphics/Path;)V

    new-instance v0, Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coui/appcompat/state/COUIStrokeDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    invoke-virtual {v2}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->getNormalBackgroundPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/COUIStrokeDrawable;->setStrokePath(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    new-instance v0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-direct {v0, v4}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    new-instance v0, Lcom/coui/appcompat/searchview/e;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/e;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private initEdittext()V
    .locals 4

    new-instance v0, Landroid/widget/EditText;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/toolbar/R$style;->Widget_COUI_EditText_SearchViewStyle:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    sget v1, Lcom/support/toolbar/R$id;->search_src_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAutofill(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchBar$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$1;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initFunctionButton()V
    .locals 5

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mHideFunctionalButton:Z

    if-eqz v0, :cond_0

    const-string p0, "COUISearchBar"

    const-string v0, "mHideFunctionalButton is true"

    invoke-static {p0, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$style;->couiTextAppearanceButton:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    sget v2, Lcom/support/toolbar/R$string;->coui_search_view_cancel:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/toolbar/R$color;->coui_searchview_cancel_button_color:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lt/h;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchBar$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$2;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isInMultiWindowMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isInsideBackground(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private isInsideFunctionButton(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideView(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method private isInsideInnerButton(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideView(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideView(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideView(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isInsideOuterButton(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideView(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideView(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideView(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isInsideView(Landroid/view/View;FF)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method private isRtl()Z
    .locals 1

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$ensureQuickDeleteButton$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideInToolBar$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->setToolBarAlpha(F)V

    return-void
.end method

.method private synthetic lambda$initDrawingProxyView$0(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setFocused(Z)V

    return-void
.end method

.method private synthetic lambda$setImeInsetsAnimationCallback$4(Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/view/m0;->F0(Landroid/view/View;Landroidx/core/view/z0$b;)V

    return-void
.end method

.method private synthetic lambda$showInToolBar$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->setToolBarAlpha(F)V

    return-void
.end method

.method private layoutBackground()V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingStart()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mExtraHorizontalBackground:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v2, v3

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingStart()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mExtraHorizontalBackground:I

    sub-int/2addr v2, v3

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v3

    :goto_3
    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOnSearchBarBackgroundBoundsChangedListener:Lcom/coui/appcompat/searchview/COUISearchBar$OnSearchBarBackgroundBoundsChangedListener;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-eq v3, v6, :cond_3

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-eq v0, v6, :cond_3

    iget v6, v5, Landroid/graphics/Rect;->right:I

    if-eq v2, v6, :cond_3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v5, :cond_3

    invoke-interface {v4, v3, v0, v2, v1}, Lcom/coui/appcompat/searchview/COUISearchBar$OnSearchBarBackgroundBoundsChangedListener;->onBackgroundBoundsChanged(IIII)V

    :cond_3
    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->updateBackgroundPath()V

    return-void
.end method

.method private layoutBackgroundArea()V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutBackground()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutSearchIcon()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutEditFrame()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutInnerButton()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutDivider(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutFunctionalButton(I)V

    :cond_0
    return-void
.end method

.method private layoutBackgroundLeft()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutNavigationButton()V

    :cond_0
    return-void
.end method

.method private layoutBackgroundRight()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionButtonStartGap:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionButtonStartGap:I

    add-int/2addr v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutFunctionalButton(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getOuterButtonCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutOuterButton()V

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutOuterButton()V

    :cond_2
    :goto_1
    return-void
.end method

.method private layoutDivider(I)I
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, p1, v2

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNonInstantSearchInnerGap:I

    sub-int v3, p1, v3

    move v5, v2

    move v2, p1

    move p1, v5

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, p1

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNonInstantSearchInnerGap:I

    add-int/2addr v3, p1

    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->setDividerRect(Landroid/graphics/Rect;)V

    return v3
.end method

.method private layoutEditFrame()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v2, v3, v0, v1, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v2, v1, v0, v3, p0}, Landroid/view/View;->layout(IIII)V

    :goto_2
    return-void
.end method

.method private layoutFunctionalButton(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p1, v2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v1, v2, v0, p1, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v1, p1, v0, v2, p0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private layoutInnerButton()I
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNonInstantSearchInnerGap:I

    sub-int/2addr v0, p0

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNonInstantSearchInnerGap:I

    add-int/2addr v0, p0

    :cond_7
    :goto_0
    return v0
.end method

.method private layoutNavigationButton()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationButtonStartGap:[I

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v2, v3, v0, v1, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationButtonStartGap:[I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v2, v1, v0, v3, p0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private layoutOuterButton()V
    .locals 6

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->isRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonGap:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v2, v3, v1, v0, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonGap:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/view/View;->layout(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method private layoutSearchIcon()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->calculateRelativeTop(III)I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconStartGap:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v2, v3, v0, v1, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconStartGap:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v2, v1, v0, v3, p0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget-object v0, Lcom/support/toolbar/R$styleable;->COUISearchBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_inputTextSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_inputTextSize:I

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_inputTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_inputTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_normalHintColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_normalHintColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_functionalButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->functionalButtonShouldShow()Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_functionalButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_functionalButtonTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->functionalButtonShouldShow()Z

    move-result p2

    if-eqz p2, :cond_4

    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_functionalButtonTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_couiSearchIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_couiSearchIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/toolbar/R$drawable;->coui_search_view_icon:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iget p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIconMaxWidth:I

    if-le p3, p4, :cond_6

    int-to-float p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p3, p4

    float-to-int p3, p3

    iget p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIconMaxHeight:I

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p4, v0

    float-to-int p4, p4

    invoke-direct {p0, p2, p3, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_6
    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    if-nez p3, :cond_7

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p3}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureImageView(Landroid/graphics/drawable/Drawable;ZZI)Landroid/widget/ImageView;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    sget p4, Lcom/support/toolbar/R$id;->animated_search_icon:I

    invoke-virtual {p3, p4}, Landroid/view/View;->setId(I)V

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_7
    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    iget p4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-direct {p0, p3, p2, p4}, Lcom/coui/appcompat/searchview/COUISearchBar;->configImageViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_searchHint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_searchHint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_8
    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_couiSearchClearSelector:I

    sget p3, Lcom/support/toolbar/R$drawable;->ic_edit_text_delete_search_view:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mClearTextDrawableResourceId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private loadHideFunctionButtonAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget-object v0, Lcom/support/toolbar/R$styleable;->COUISearchBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$styleable;->COUISearchBar_couiHideFunctionalButton:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mHideFunctionalButton:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureBackground(I)I
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureFunctionalButton()V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureView(Landroid/view/View;II)I

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->functionalButtonShouldShow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionButtonStartGap:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionButtonEndGap:[I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v0, v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShrinkFraction:F

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mExtraHorizontalBackground:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCollapsedMinHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNormalBackgroundHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundScaleFraction:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Float;->max(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureRect(Landroid/graphics/Rect;II)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCollapsedMinHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNormalBackgroundHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundScaleFraction:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Float;->max(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureRect(Landroid/graphics/Rect;II)V

    :cond_2
    :goto_1
    return p1
.end method

.method private measureDivider(I)I
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerWidth:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerHeight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureRect(Landroid/graphics/Rect;II)V

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNonInstantSearchInnerGap:I

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDividerWidth:I

    sub-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method private measureEditFrame(I)V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getSearchEditOrAnimationLayout()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNormalBackgroundHeight:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureView(Landroid/view/View;II)I

    return-void
.end method

.method private measureFunctionalButton()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionButtonMaxWidth:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureView(Landroid/view/View;II)I

    :cond_0
    return-void
.end method

.method private measureInnerButton(I)I
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureView(Landroid/view/View;II)I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureView(Landroid/view/View;II)I

    move-result v2

    sub-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureView(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_2
    if-eq v0, p1, :cond_3

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNonInstantSearchInnerGap:I

    sub-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method private measureInsideBackground(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureSearchIcon(I)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureInnerButton(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNonInstantSearchInnerGap:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureDivider(I)I

    move-result p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureInnerButton(I)I

    move-result p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureEditFrame(I)V

    return-void
.end method

.method private measureNavigationButton(I)I
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationButtonWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureView(Landroid/view/View;II)I

    move-result v0

    sub-int v0, p1, v0

    if-eq v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mUseResponsivePadding:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingStart()I

    move-result p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationButtonStartGap:[I

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    aget p0, p1, p0

    sub-int/2addr v0, p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p1
.end method

.method private measureOuterButton(I)I
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getOuterButtonCount()I

    move-result v0

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonWidth:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureView(Landroid/view/View;II)I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonWidth:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureView(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_2
    if-eq v0, p1, :cond_4

    iget-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mUseResponsivePadding:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingEnd()I

    move-result p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonEndGap:[I

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mResponsiveWidthSize:I

    aget p1, p1, v1

    sub-int/2addr v0, p1

    :cond_3
    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonGap:I

    sub-int/2addr v0, p0

    :cond_4
    return v0
.end method

.method private measureOutsideBackground()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureNavigationButton(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureOuterButton(I)I

    move-result p0

    return p0
.end method

.method private measureRect(Landroid/graphics/Rect;II)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method private measureSearchIcon(I)I
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->shouldLayoutOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureView(Landroid/view/View;II)I

    move-result v0

    sub-int v0, p1, v0

    if-eq v0, p1, :cond_0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconStartGap:I

    sub-int p1, v0, p0

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private measureView(Landroid/view/View;II)I
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method private notifyOnStateChange(II)V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchBar$OnStateChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar$OnStateChangeListener;->onStateChange(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeLast()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setMenuItem(Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mMenuItem:Landroid/view/MenuItem;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private setOuterButtonVisibility(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setToolBarAlpha(F)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setToolBarChildVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private shouldLayoutOut(Landroid/view/View;)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_1

    move p0, v1

    :cond_1
    return p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_3

    move p0, v1

    :cond_3
    return p0
.end method

.method private showButton(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showSoftInput()V
    .locals 7

    new-instance v6, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeAnimDuration:I

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeInterpolator:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    invoke-direct {v6, v2, v0, v1}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;-><init>(ZILandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeAnimDuration:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeInterpolator:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    :cond_0
    return-void
.end method

.method private updateAccessibilityImportance(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBackgroundPath()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->setBackgroundRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method private zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p2, p3, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method


# virtual methods
.method public addOnStateChangeListener(Lcom/coui/appcompat/searchview/COUISearchBar$OnStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOnStateChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOnStateChangeListeners:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changeState(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->changeStateWithAnimation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->changeStateImmediately(I)V

    :goto_0
    return-void
.end method

.method public changeStateImmediately(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeStateImmediately: same state , return. targetState = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUISearchBar"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->updateAccessibilityImportance(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->runStateChangeImmediately(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->runStateChangeImmediately(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public changeStateWithAnimation(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeStateWithAnimation: same state , return. targetState = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUISearchBar"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->updateAccessibilityImportance(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->runStateChangeAnimation(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->runStateChangeAnimation(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public controlImeShowAnim(ILandroid/view/animation/Interpolator;)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeAnimDuration:I

    iput-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCollapsingHeightPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideBackground(FF)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setHovered(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setHovered(Z)V

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideBackground(FF)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mPressed:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mPressed:Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideBackground(FF)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mPressed:Z

    if-eqz v0, :cond_5

    :cond_2
    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mPressed:Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideBackground(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideInnerButton(FF)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideFunctionButton(FF)Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mPressed:Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v2
.end method

.method public getFunctionalButton()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public getHintAnimationLayout()Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->setSearchEditText(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    return-object p0
.end method

.method public getInnerPrimaryButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getInnerSecondaryButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getInputMethodAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInputMethodAnimationEnabled:Z

    return p0
.end method

.method public getNavigationView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getOuterPrimaryButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getOuterSecondaryButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getQuickDeleteButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getSearchEditText()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public getSearchState()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getSearchViewAnimateHeightPercent()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCollapsingHeightPercent:F

    return p0
.end method

.method public hideInToolBar()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBarAnimationRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBarAnimationRunning:Z

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureAddedToToolBar()V

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAddToToolbarWay:I

    const-wide/16 v2, 0x96

    const/4 v4, 0x0

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchBar$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$4;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/searchview/d;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/d;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchBar$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$5;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onActionViewCollapsed()V
    .locals 0

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 0

    return-void
.end method

.method public onImeAnimStart()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->access$900(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewSmoothEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchBarContentDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchBarContentDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->getCurrentHintTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchBarHintTitleDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->getCurrentHintTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideInnerButton(FF)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideOuterButton(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutBackgroundLeft()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutBackgroundArea()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutBackgroundRight()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->configResponsive()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureOutsideBackground()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureBackground(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureInsideBackground(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;

    iget v0, v0, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;->mCollapsingHeightPercent:F

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->setSearchViewAnimateHeightPercent(F)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCollapsingHeightPercent:F

    iput p0, v1, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;->mCollapsingHeightPercent:F

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInsideBackground(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public openSoftInput(Z)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSoftInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUISearchBar"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIsAtLeastR:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeAnimDuration:I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->showSoftInput()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->show(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAttrs:Landroid/util/AttributeSet;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStyle:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/support/toolbar/R$style;->Widget_COUI_COUISearchBar_Dark:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/support/toolbar/R$style;->Widget_COUI_COUISearchBar:I

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->loadAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mClearTextDrawableResourceId:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->refresh(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public removeOnStateChangeListener(Lcom/coui/appcompat/searchview/COUISearchBar$OnStateChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOnStateChangeListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAtBehindToolBar(Lcom/coui/appcompat/toolbar/COUIToolbar;ILandroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mGravityInToolBar:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAddToToolbarWay:I

    invoke-direct {p0, p3}, Lcom/coui/appcompat/searchview/COUISearchBar;->setMenuItem(Landroid/view/MenuItem;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setAtFrontToolBar(Lcom/coui/appcompat/toolbar/COUIToolbar;ILandroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput p2, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mGravityInToolBar:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAddToToolbarWay:I

    invoke-direct {p0, p3}, Lcom/coui/appcompat/searchview/COUISearchBar;->setMenuItem(Landroid/view/MenuItem;)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureAddedToToolBar()V

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->functionalButtonShouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mQuickDeleteButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setExtraActivateMarginTop(I)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->access$502(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;I)I

    return-void
.end method

.method public setFunctionalButtonText(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->functionalButtonShouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHideFunctionalButton(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mHideFunctionalButton:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mHideFunctionalButton:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->initFunctionButton()V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mFunctionalButton:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setImeInsetsAnimationCallback()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIsAtLeastR:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1c2

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeAnimDuration:I

    sget-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mShowImeInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;

    invoke-direct {v0}, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;-><init>()V

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;->setImeAnimationListener(Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/coui/appcompat/searchview/b;

    invoke-direct {v2, p0, v0}, Lcom/coui/appcompat/searchview/b;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setInnerPrimaryButton(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIconMaxWidth:I

    if-le v0, v1, :cond_0

    int-to-float v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIconMaxHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureImageView(Landroid/graphics/drawable/Drawable;ZZI)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-direct {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->configImageViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return-void
.end method

.method public setInnerSecondaryButton(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIconMaxWidth:I

    if-le v0, v1, :cond_0

    int-to-float v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mIconMaxHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureImageView(Landroid/graphics/drawable/Drawable;ZZI)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-direct {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->configImageViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return-void
.end method

.method public setInputMethodAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInputMethodAnimationEnabled:Z

    return-void
.end method

.method public setNavigationViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureNavigationView()V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNavigationView:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setOnAnimationListener(Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOnAnimationListener:Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;

    return-void
.end method

.method public setOnSearchBarBackgroundBoundsChangedListener(Lcom/coui/appcompat/searchview/COUISearchBar$OnSearchBarBackgroundBoundsChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOnSearchBarBackgroundBoundsChangedListener:Lcom/coui/appcompat/searchview/COUISearchBar$OnSearchBarBackgroundBoundsChangedListener;

    return-void
.end method

.method public setOuterPrimaryButton(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonWidth:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureImageView(Landroid/graphics/drawable/Drawable;ZZI)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonWidth:I

    invoke-direct {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->configImageViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    :cond_2
    :goto_0
    return-void
.end method

.method public setOuterSecondaryButton(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonWidth:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureImageView(Landroid/graphics/drawable/Drawable;ZZI)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterButtonWidth:I

    invoke-direct {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->configImageViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    :cond_2
    :goto_0
    return-void
.end method

.method public setSearchAnimateType(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSearchAnimateType to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/coui/appcompat/searchview/COUISearchBar;->TYPE_NAME:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed in STATE_EDIT"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUISearchBar"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchViewType:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSearchBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNormalBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNormalBackgroundColor:I

    const v2, 0x10100a7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mPressedBackgroundColor:I

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->getCurrentBackgroundColor()I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNormalBackgroundColor:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->setCurrentBackgroundColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setSearchViewAnimateHeightPercent(F)V
    .locals 7

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCollapsingHeightPercent:F

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->clampSearchViewHeight(F)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mBackgroundScaleFraction:F

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->getInternalPaddingEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->clampMarginValue(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mExtraHorizontalBackground:I

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInitSearchBarHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float/2addr v0, v2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f400000    # 0.75f

    sub-float v0, p1, v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerPrimaryButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerSecondaryButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterPrimaryButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mOuterSecondaryButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mDrawingProxyDrawable:Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    sget-object v3, Lcom/coui/appcompat/searchview/COUISearchBar;->DEFAULT_EVALUATOR:Landroid/animation/ArgbEvaluator;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->clampMarginValue(F)F

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mHorizontalDividerColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mNormalBackgroundColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->setCurrentBackgroundColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    if-eqz v0, :cond_7

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->pauseHintsAnimation()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->resumeHintsAnimation()V

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->configResponsive()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureOutsideBackground()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureBackground(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->measureInsideBackground(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutBackgroundLeft()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutBackgroundArea()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->layoutBackgroundRight()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_2
    return-void
.end method

.method public setSearchViewIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mSearchIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mInnerIconSize:I

    invoke-direct {p0, v0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->configImageViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setUseResponsivePadding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mUseResponsivePadding:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public showInToolBar()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBarAnimationRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mToolBarAnimationRunning:Z

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->ensureAddedToToolBar()V

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->mAddToToolbarWay:I

    const-wide/16 v2, 0x96

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->changeStateImmediately(I)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->setToolBarChildVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/searchview/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/a;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchBar$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$3;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
