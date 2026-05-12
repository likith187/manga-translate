.class public Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/c;
.implements Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnCancelButtonClickListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AddToolBarWay;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchViewState;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchViewType;
    }
.end annotation


# static fields
.field private static final CLAMP_ANIMATION_PERCENT:F = 0.3f

.field private static final DEBUG:Z = true

.field private static final DEFAULT_BUTTON_ALPHA_CHANGE_DURATION:J = 0x15eL

.field private static final DEFAULT_BUTTON_ALPHA_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_BUTTON_MOVE_DURATION:J = 0x1c2L

.field private static final DEFAULT_FADE_DURATION:J = 0x96L

.field private static final DEFAULT_PRESS_FEEDBACK_DURATION:J = 0x96L

.field private static final DEFAULT_PRESS_FEEDBACK_EVALUATOR:Landroid/animation/ArgbEvaluator;

.field private static final DEFAULT_PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_DURATION:J = 0x1c2L

.field private static final DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_SEARCH_VIEW_SCALE_CHANGE_DURATION:J = 0x1c2L

.field private static final DEFAULT_SEARCH_VIEW_SCALE_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FLOAT_POINT_FIVE:F = 0.5f

.field private static final FLOAT_TWO:F = 2.0f

.field private static final NON_INSTANT_SEARCH_BUTTON_ALPHA_CHANGE_DURATION:J = 0x64L

.field public static final STATE_EDIT:I = 0x1

.field public static final STATE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "COUISearchViewAnimate"

.field public static final TYPE_INSTANT_SEARCH:I = 0x0

.field private static final TYPE_NAME:[Ljava/lang/String;

.field public static final TYPE_NON_INSTANT_SEARCH:I = 0x1

.field private static final WAY_AT_BEHIND:I = 0x1

.field private static final WAY_AT_FRONT:I = 0x2

.field private static final WAY_NONE:I


# instance fields
.field private mAddToToolbarWay:I

.field private volatile mAnimatorHelper:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

.field private mAtToolbarFrontStateChangeListener:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;

.field private mBackgroundEndGap:I

.field private mBackgroundStartGap:I

.field private mButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

.field private mButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

.field private mButtonDivider:Landroid/widget/ImageView;

.field private final mButtonHitRect:Landroid/graphics/RectF;

.field private final mButtonLocation:[I

.field private mCancelButtonLargeStartMargin:I

.field private mCancelButtonSmallStartMargin:I

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mCollapsedMinHeight:I

.field private mCollapsingHeightPercent:F

.field private mContext:Landroid/content/Context;

.field private mCurrentBackgroundColor:I

.field private mDivideBackground:Z

.field private final mEvaluator:Landroid/animation/ArgbEvaluator;

.field private mExtraY:I

.field private mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

.field private mGravity:I

.field private mGravityInToolBar:I

.field private mHasAddedToToolbar:Z

.field private mHorizontalDividerColor:I

.field private mInitSearchViewAnimateHeight:I

.field private mInitSearchViewWrapperHeight:I

.field private mInputMethodAnimationEnabled:Z

.field private mIsAtLeastR:Z

.field private final mLocation:[I

.field private mMainIcon:Landroid/widget/ImageView;

.field private mMainIconRect:Landroid/graphics/Rect;

.field private mMenuItem:Landroid/view/MenuItem;

.field private mNeedUpdateNormalRectPath:Z

.field private mNeedUpdatePressFeedbackRectPath:Z

.field private mNormalBackgroundColor:I

.field private final mNormalBackgroundPath:Landroid/graphics/Path;

.field private mNormalBackgroundRect:Landroid/graphics/RectF;

.field private final mNormalPaint:Landroid/graphics/Paint;

.field private mOnAnimationListener:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

.field private mOnCancelButtonClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnCancelButtonClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDispatchKeyEventPreImeListener:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;

.field private mOnStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

.field private final mPressFeedbackBackgroundPath:Landroid/graphics/Path;

.field private mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

.field private final mPressFeedbackPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mPressedBackgroundColor:I

.field private mRect:Landroid/graphics/Rect;

.field private mSearchIcon:Landroid/widget/ImageView;

.field private mSearchIconCanAnimate:Z

.field private mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

.field private mSearchViewOffsetEnterAnimator:Landroid/animation/ValueAnimator;

.field private mSearchViewOffsetExitAnimator:Landroid/animation/ValueAnimator;

.field private mSearchViewScaleEnterAnimator:Landroid/animation/ValueAnimator;

.field private mSearchViewScaleExitAnimator:Landroid/animation/ValueAnimator;

.field private mSearchViewShrinkWidth:I

.field private mSearchViewSmoothEnterAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSearchViewSmoothExitAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSearchViewType:I

.field private mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mShouldClearFocus:Z

.field private mShowImeAnimDuration:I

.field private mShowImeInterpolator:Landroid/view/animation/Interpolator;

.field private mStartY:I

.field public mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStyle:I

.field private mSubIcon:Landroid/widget/ImageView;

.field private mSubIconRect:Landroid/graphics/Rect;

.field private mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private mToolBarAnimationRunning:Z

.field private mTopOffset:I

.field private final mWrapperBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TYPE_INSTANT_SEARCH"

    const-string v1, "TYPE_NON_INSTANT_SEARCH"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->TYPE_NAME:[Ljava/lang/String;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_SEARCH_VIEW_SCALE_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_BUTTON_ALPHA_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_PRESS_FEEDBACK_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/toolbar/R$attr;->couiSearchViewAnimateStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lcom/support/toolbar/R$style;->Widget_COUI_COUISearchViewAnimate_Dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/support/toolbar/R$style;->Widget_COUI_COUISearchViewAnimate:I

    .line 5
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundPath:Landroid/graphics/Path;

    .line 8
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundPath:Landroid/graphics/Path;

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackPaint:Landroid/graphics/Paint;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalPaint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 11
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonLocation:[I

    .line 12
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mLocation:[I

    .line 13
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonHitRect:Landroid/graphics/RectF;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mWrapperBounds:Landroid/graphics/Rect;

    .line 16
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x30

    .line 17
    iput v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mGravityInToolBar:I

    .line 18
    iput v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAddToToolbarWay:I

    .line 19
    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIconCanAnimate:Z

    .line 20
    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShouldClearFocus:Z

    .line 21
    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mInputMethodAnimationEnabled:Z

    .line 22
    iput v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mTopOffset:I

    .line 23
    iput v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mExtraY:I

    .line 24
    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    iput v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCollapsingHeightPercent:F

    .line 26
    iput-boolean v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mDivideBackground:Z

    .line 27
    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdatePressFeedbackRectPath:Z

    .line 28
    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdateNormalRectPath:Z

    .line 29
    iput v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeAnimDuration:I

    const/4 v2, 0x0

    .line 30
    iput-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeInterpolator:Landroid/view/animation/Interpolator;

    .line 31
    iput-boolean v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressed:Z

    .line 32
    new-instance v2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$1;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iput-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAtToolbarFrontStateChangeListener:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;

    const/16 v2, 0x10

    .line 33
    iput v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mGravity:I

    .line 34
    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p0, v3}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 36
    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mIsAtLeastR:Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->inflateView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->loadAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 40
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 41
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 42
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initAnimator()V

    const/4 p1, 0x3

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 44
    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setSearchAnimateType(I)V

    .line 45
    new-instance p1, Landroid/view/TouchDelegate;

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-direct {p1, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 47
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$2;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->lambda$initSearchViewEnterAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setSearchAutoCompleteFocus()V

    return-void
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setToolBarChildVisibility(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setSearchAutoCompleteUnFocus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShouldClearFocus:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShouldClearFocus:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mWrapperBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mOnAnimationListener:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->notifyOnStateChange(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mIsAtLeastR:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeAnimDuration:I

    return p0
.end method

.method static synthetic access$2500(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewSmoothEnterAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewSmoothExitAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    return p0
.end method

.method static synthetic access$3100(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewShrinkWidth:I

    return p0
.end method

.method static synthetic access$3102(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewShrinkWidth:I

    return p1
.end method

.method static synthetic access$3200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mTopOffset:I

    return p0
.end method

.method static synthetic access$3202(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mTopOffset:I

    return p1
.end method

.method static synthetic access$3300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mStartY:I

    return p0
.end method

.method static synthetic access$3302(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mStartY:I

    return p1
.end method

.method static synthetic access$3400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->updateBackgroundRect()V

    return-void
.end method

.method static synthetic access$3502(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mDivideBackground:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mExtraY:I

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->changeStateWithOutAnimation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getShrinkWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setToolBarAlpha(F)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->lambda$initSearchViewEnterAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->lambda$setImeInsetsAnimationCallback$2(Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;)V

    return-void
.end method

.method private changeStateWithOutAnimation(I)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "COUISearchViewAnimate"

    if-ne v0, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeStateWithOutAnimation: same state , return. targetState = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateWithOutAnimation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getShrinkWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->access$1500(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->access$1600(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    const-string v3, ""

    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->access$1700(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->access$1800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
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

.method private clampProgress(FFF)F
    .locals 0

    sub-float p0, p2, p1

    div-float/2addr p3, p0

    sub-float p0, p1, p2

    div-float/2addr p1, p0

    add-float/2addr p3, p1

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p3, p0}, Ljava/lang/Float;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Float;->max(FF)F

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

.method private ensureAddedToToolBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mHasAddedToToolbar:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mHasAddedToToolbar:Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->removeLast()V

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mGravityInToolBar:I

    iput v1, v0, Landroidx/appcompat/app/a$a;->gravity:I

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v1, p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSearchView(Landroid/view/View;Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private ensureList(Ljava/util/List;)Ljava/util/List;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method private getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAnimatorHelper:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAnimatorHelper:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAnimatorHelper:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAnimatorHelper:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    return-object p0
.end method

.method private getOriginWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mBackgroundStartGap:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mBackgroundEndGap:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getShrinkWidth()I
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCancelButtonLargeStartMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCancelButtonSmallStartMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mBackgroundEndGap:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result p0

    return p0
.end method

.method private inflateView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    sget p2, Lcom/support/toolbar/R$layout;->coui_search_view_animate_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/support/toolbar/R$id;->animated_search_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    sget p1, Lcom/support/toolbar/R$id;->animated_search_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/searchview/COUISearchView;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    sget p1, Lcom/support/toolbar/R$id;->animated_cancel_button:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    sget p1, Lcom/support/toolbar/R$id;->button_divider:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    sget p1, Lcom/support/toolbar/R$id;->coui_search_view_wrapper:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private initAnimator()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initSearchViewEnterAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initSearchViewExitAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initButtonEnterAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initButtonExitAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initSmoothEnterAnimatorSet()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initSmoothExitAnimatorSet()V

    return-void
.end method

.method private initButtonEnterAnimator()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    const-wide/16 v2, 0x64

    if-nez v1, :cond_0

    const-wide/16 v4, 0x15e

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_BUTTON_ALPHA_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$13;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$13;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initButtonExitAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    if-nez v1, :cond_0

    const-wide/16 v1, 0x15e

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x64

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_BUTTON_ALPHA_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$18;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$18;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initSearchViewEnterAnimator()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/searchview/r;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/searchview/r;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewScaleEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewScaleEnterAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_SEARCH_VIEW_SCALE_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewScaleEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/searchview/s;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/s;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewScaleEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$12;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$12;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initSearchViewExitAnimator()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewOffsetExitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewOffsetExitAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewOffsetExitAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewScaleExitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewScaleExitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewScaleExitAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initSmoothEnterAnimatorSet()V
    .locals 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewSmoothEnterAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewSmoothEnterAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewOffsetEnterAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewScaleEnterAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonAlphaEnterAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p0, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private initSmoothExitAnimatorSet()V
    .locals 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewSmoothExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewSmoothExitAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewOffsetExitAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewScaleExitAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonAlphaExitAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p0, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private isInButton(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonHitRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method private isInIcon(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIconRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIconRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIconRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIconRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isInMultiWindowMode()Z
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mContext:Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isInView(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    float-to-int p1, p1

    int-to-float p1, p1

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

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

.method private isRtl()Z
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

.method private synthetic lambda$initSearchViewEnterAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mStartY:I

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mExtraY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mTopOffset:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mTopOffset:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$initSearchViewEnterAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getShrinkWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewShrinkWidth:I

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewShrinkWidth:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setImeInsetsAnimationCallback$2(Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/view/m0;->F0(Landroid/view/View;Landroidx/core/view/z0$b;)V

    return-void
.end method

.method private loadAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mStyle:I

    if-nez v0, :cond_1

    iput p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mStyle:I

    goto :goto_0

    :cond_0
    iput p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mStyle:I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_view_background_end_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mBackgroundEndGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_view_background_start_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mBackgroundStartGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_view_cancel_margin_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCancelButtonSmallStartMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_view_cancel_margin_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCancelButtonLargeStartMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_view_collapsed_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCollapsedMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_view_wrapper_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mInitSearchViewWrapperHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$dimen;->coui_search_view_animate_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mInitSearchViewAnimateHeight:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundRect:Landroid/graphics/RectF;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundRect:Landroid/graphics/RectF;

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mRect:Landroid/graphics/Rect;

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIconRect:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIconRect:Landroid/graphics/Rect;

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIconRect:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIconRect:Landroid/graphics/Rect;

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$color;->coui_search_view_selector_color_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/toolbar/R$color;->coui_search_view_selector_color_pressed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressedBackgroundColor:I

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundColor:I

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCurrentBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_color_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mHorizontalDividerColor:I

    sget-object v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/toolbar/R$dimen;->coui_search_view_input_text_size:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    sget v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_inputTextSize:I

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    int-to-float p4, p4

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p4}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/toolbar/R$dimen;->coui_search_view_auto_complete_padding_end:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p4, v1, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    sget v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_inputTextColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    sget v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_couiSearchIcon:I

    invoke-static {p1, p2, v0}, Li4/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p4, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_normalHintColor:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    sget p4, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_couiSearchViewAnimateType:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    sget p4, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_searchHint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_7

    sget p4, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_searchHint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_7
    sget p4, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_functionalButtonTextColor:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    sget v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_functionalButtonTextColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    sget p4, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_functionalButtonText:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_9

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    sget v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_functionalButtonText:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    sget v0, Lcom/support/toolbar/R$string;->coui_search_view_cancel:I

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p4}, Landroid/widget/TextView;->getTextSize()F

    move-result p4

    const/4 v0, 0x2

    invoke-static {p4, p3, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p4, v1, p3}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-static {p3}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    sget p3, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_buttonDivider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_a

    sget p3, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_buttonDivider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_a

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    sget p3, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_searchBackground:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p4, p3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    sget p4, Lcom/support/toolbar/R$id;->search_main_icon_btn:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIcon:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    sget p4, Lcom/support/toolbar/R$id;->search_sub_icon_btn:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIcon:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIcon:Landroid/widget/ImageView;

    sget p4, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_couiSearchViewMainIcon:I

    invoke-static {p1, p2, p4}, Li4/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIcon:Landroid/widget/ImageView;

    sget p4, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_couiSearchViewSubIcon:I

    invoke-static {p1, p2, p4}, Li4/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    sget p3, Lcom/support/toolbar/R$id;->search_close_btn:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    sget p1, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_couiSearchClearSelector:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    if-eqz p3, :cond_b

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    sget p1, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_android_gravity:I

    const/16 p3, 0x10

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "gravity "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "COUISearchViewAnimate"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setGravity(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private notifyCancelButton()Z
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnCancelButtonClickListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnCancelButtonClickListener;->onClickCancel()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private notifyOnStateChange(II)V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

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

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;->onStateChange(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onClickStateEdit()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->runStateChangeAnimation(I)V

    return-void
.end method

.method private onClickStateNormal()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->runStateChangeAnimation(I)V

    return-void
.end method

.method private playPressAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCurrentBackgroundColor:I

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressedBackgroundColor:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "currentBackgroundColor"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_PRESS_FEEDBACK_EVALUATOR:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private playReleaseAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCurrentBackgroundColor:I

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundColor:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "currentBackgroundColor"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_PRESS_FEEDBACK_EVALUATOR:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private removeLast()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setCurrentBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCurrentBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setMenuItem(Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMenuItem:Landroid/view/MenuItem;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private setRelativeVerticalGravity(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_4

    instance-of v0, p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    and-int/lit8 p2, p2, 0x70

    const/16 v0, 0x10

    const/16 v1, 0xf

    if-eq p2, v0, :cond_3

    const/16 v0, 0x30

    if-eq p2, v0, :cond_2

    const/16 v0, 0x50

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method private setSearchAutoCompleteFocus()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private setSearchAutoCompleteUnFocus()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method private setToolBarAlpha(F)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

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

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

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

.method private showSoftInput()V
    .locals 7

    new-instance v6, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeAnimDuration:I

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeInterpolator:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    invoke-direct {v6, v2, v0, v1}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;-><init>(ZILandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeAnimDuration:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeInterpolator:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    :cond_0
    return-void
.end method

.method private static state2String(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "state edit"

    return-object p0

    :cond_1
    const-string p0, "state normal"

    return-object p0
.end method

.method private updateBackgroundRect()V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mDivideBackground:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdatePressFeedbackRectPath:Z

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdateNormalRectPath:Z

    goto/16 :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_3
    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_5
    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdatePressFeedbackRectPath:Z

    :goto_3
    return-void
.end method

.method private updateBounds()V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonHitRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonLocation:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v3, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mLocation:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonLocation:[I

    aget v5, v5, v4

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mLocation:[I

    aget v4, v6, v4

    sub-int/2addr v5, v4

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updatePath()V
    .locals 10

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v1, v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isRtl()Z

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdateNormalRectPath:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundRect:Landroid/graphics/RectF;

    xor-int/lit8 v6, v1, 0x1

    xor-int/lit8 v8, v1, 0x1

    move v4, v0

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v8}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    iput-boolean v9, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdateNormalRectPath:Z

    :cond_0
    iget-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdatePressFeedbackRectPath:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mDivideBackground:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    xor-int/lit8 v5, v1, 0x1

    xor-int/lit8 v7, v1, 0x1

    move v4, v0

    move v6, v1

    move v8, v1

    invoke-static/range {v2 .. v8}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move v4, v0

    invoke-static/range {v2 .. v8}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    :goto_0
    iput-boolean v9, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdatePressFeedbackRectPath:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public addOnCancelButtonClickListener(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnCancelButtonClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnStateChangeListener(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public changeStateImmediately(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeStateImmediately: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->state2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUISearchViewAnimate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public changeStateWithAnimation(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

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

    const-string p1, "COUISearchViewAnimate"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->onClickStateEdit()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->onClickStateNormal()V

    :cond_2
    :goto_0
    return-void
.end method

.method public controlImeShowAnim(ILandroid/view/animation/Interpolator;)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeAnimDuration:I

    iput-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mOnDispatchKeyEventPreImeListener:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;->onDispatchKeyEventPreIme(Landroid/view/KeyEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isInView(FF)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressed:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressed:Z

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->playReleaseAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isInView(FF)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressed:Z

    if-eqz v0, :cond_5

    :cond_2
    iput-boolean v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressed:Z

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->playReleaseAnimation()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isInView(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isInButton(FF)Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressed:Z

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->playPressAnimation()V

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v2
.end method

.method public getAnimatorDuration()J
    .locals 2

    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method public getCancelIconAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    return p0
.end method

.method public getFunctionalButton()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    return-object p0
.end method

.method public getGravity()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mGravity:I

    return p0
.end method

.method public getInputMethodAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mInputMethodAnimationEnabled:Z

    return p0
.end method

.method public getMainIconView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getSearchState()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getSearchView()Lcom/coui/appcompat/searchview/COUISearchView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    return-object p0
.end method

.method public getSearchViewAnimateHeightPercent()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCollapsingHeightPercent:F

    return p0
.end method

.method public getSubIconView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public hideInToolBar()V
    .locals 5

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->ensureAddedToToolBar()V

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAddToToolbarWay:I

    const-wide/16 v2, 0x96

    const/4 v4, 0x0

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$8;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$8;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

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

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$9;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$9;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$10;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$10;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mInputMethodAnimationEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->openSoftInput(Z)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isIconCanAnimate()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIconCanAnimate:Z

    return p0
.end method

.method public onActionViewCollapsed()V
    .locals 0

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdateNormalRectPath:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNeedUpdatePressFeedbackRectPath:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->updatePath()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mDivideBackground:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCurrentBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCurrentBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onImeAnimStart()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewSmoothEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isInIcon(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->isInButton(FF)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->updateBackgroundRect()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->updateBounds()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mBackgroundEndGap:I

    mul-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;

    iget v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;->mCollapsingHeightPercent:F

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setSearchViewAnimateHeightPercent(F)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCollapsingHeightPercent:F

    iput p0, v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;->mCollapsingHeightPercent:F

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressFeedbackBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public openSoftInput(Z)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

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

    const-string v2, "COUISearchViewAnimate"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setSearchAutoCompleteFocus()V

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mIsAtLeastR:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeAnimDuration:I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->showSoftInput()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mStyle:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mStyle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "attr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate:[I

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mStyle:I

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "style"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate:[I

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mStyle:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/toolbar/R$color;->coui_search_view_selector_color_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/toolbar/R$color;->coui_search_view_selector_color_pressed:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressedBackgroundColor:I

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundColor:I

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCurrentBackgroundColor:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    sget v2, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_inputTextColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_couiSearchIcon:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v2, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_couiSearchIcon:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    sget v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_normalHintColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v2}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    sget v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_searchBackground:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    sget v2, Lcom/support/toolbar/R$id;->search_close_btn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    sget v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_couiSearchClearSelector:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    sget v0, Lcom/support/toolbar/R$styleable;->COUISearchViewAnimate_buttonDivider:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-static {v0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewShrinkWidth:I

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getShrinkWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewShrinkWidth:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewShrinkWidth:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method public removeHintViewLayoutOnClickListener()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setAtBehindToolBar(Lcom/coui/appcompat/toolbar/COUIToolbar;ILandroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mGravityInToolBar:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAddToToolbarWay:I

    invoke-direct {p0, p3}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setMenuItem(Landroid/view/MenuItem;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShouldClearFocus:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->changeStateImmediately(I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setAtFrontToolBar(Lcom/coui/appcompat/toolbar/COUIToolbar;ILandroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mGravityInToolBar:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAddToToolbarWay:I

    invoke-direct {p0, p3}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setMenuItem(Landroid/view/MenuItem;)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->ensureAddedToToolBar()V

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAtToolbarFrontStateChangeListener:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->addOnStateChangeListener(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;)V

    return-void
.end method

.method public setCancelButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCancelDividerImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCloseBtnBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCloseBtnImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setExtraActivateMarginTop(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mExtraY:I

    return-void
.end method

.method public setFunctionalButtonText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x10

    :cond_1
    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mGravity:I

    :cond_2
    return-void
.end method

.method public setHintTextViewHintTextColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setHintTextViewTextColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setHintViewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setHintViewLayoutOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setIconCanAnimate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIconCanAnimate:Z

    return-void
.end method

.method public setImeInsetsAnimationCallback()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mIsAtLeastR:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1c2

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeAnimDuration:I

    sget-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->DEFAULT_SEARCH_VIEW_OFFSET_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mShowImeInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;

    invoke-direct {v0}, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;-><init>()V

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;->setImeAnimationListener(Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    new-instance v2, Lcom/coui/appcompat/searchview/t;

    invoke-direct {v2, p0, v0}, Lcom/coui/appcompat/searchview/t;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setInputHintTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    return-void
.end method

.method public setInputMethodAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mInputMethodAnimationEnabled:Z

    return-void
.end method

.method public setInputTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setMainIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mMainIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnAnimationListener(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mOnAnimationListener:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    return-void
.end method

.method public setOnDispatchKeyEventPreImeListener(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mOnDispatchKeyEventPreImeListener:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnDispatchKeyEventPreImeListener;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSearchAnimateType(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSearchAnimateType to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->TYPE_NAME:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed in STATE_EDIT"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUISearchViewAnimate"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    const/16 v0, 0x8

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCancelButtonLargeStartMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCancelButtonSmallStartMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getOriginWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getShrinkWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSearchBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundColor:I

    const v2, 0x10100a7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mPressedBackgroundColor:I

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCurrentBackgroundColor:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundColor:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCurrentBackgroundColor:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setSearchViewAnimateHeightPercent(F)V
    .locals 6

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCollapsingHeightPercent:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCollapsedMinHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mInitSearchViewWrapperHeight:I

    int-to-float v3, v3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->clampSearchViewHeight(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Float;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->clampMarginValue(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->clampMarginValue(F)F

    move-result v5

    sub-float v5, v4, v5

    mul-float/2addr v2, v5

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mInitSearchViewAnimateHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr v4, p1

    mul-float/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v2, p1, v2

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->clampMarginValue(F)F

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mHorizontalDividerColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mNormalBackgroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mCurrentBackgroundColor:I

    return-void
.end method

.method public setSearchViewBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setSearchViewIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSubIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public showInToolBar()V
    .locals 7

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->ensureAddedToToolBar()V

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mAddToToolbarWay:I

    const-wide/16 v2, 0x96

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v1, v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setAlpha(F)V

    iget v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mSearchViewType:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-ne v6, v0, :cond_2

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mFunctionalButton:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$5;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    invoke-direct {p0, v5}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setToolBarChildVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$6;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$6;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$7;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$7;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setSearchAutoCompleteUnFocus()V

    iget-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mInputMethodAnimationEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->openSoftInput(Z)V

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
