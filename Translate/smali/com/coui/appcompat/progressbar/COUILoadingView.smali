.class public Lcom/coui/appcompat/progressbar/COUILoadingView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/progressbar/COUILoadingView$LoadingAnimUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_TYPE:I = 0x1

.field private static final LARGE_POINT_END_ALPHA:F = 1.0f

.field private static final LARGE_POINT_START_ALPHA:F = 0.215f

.field public static final LARGE_TYPE:I = 0x2

.field private static final MEDIUM_POINT_END_ALPHA:F = 0.4f

.field private static final MEDIUM_POINT_START_ALPHA:F = 0.1f

.field public static final MEDIUM_TYPE:I = 0x1

.field private static final ONE_CIRCLE_DEGREE:I = 0x168

.field private static final ONE_CYCLE_DURATION:I = 0x1e0

.field private static final ONE_THOUSAND_MILLISECOND:F = 1000.0f

.field public static final ORIGINAL_ANGLE:I = -0x5a

.field private static final PROGRESS_POINT_COUNT:I = 0x6

.field private static final SEMI_CIRCLE:I = 0xb4

.field public static final SMALL_TYPE:I = 0x0

.field public static final SWIPT_ANGEL:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "COUILoadingView"

.field private static final TWO:I = 0x2


# instance fields
.field private mAccessDescription:Ljava/lang/String;

.field private mAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mArcRadius:F

.field private mArcRect:Landroid/graphics/RectF;

.field private mBackGroundPaint:Landroid/graphics/Paint;

.field private mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field private mCurrentDegree:F

.field private mCurrentStepProgress:F

.field private mEndAlpha:F

.field private mHalfHeight:F

.field private mHalfStrokeWidth:F

.field private mHalfWidth:F

.field private mHeight:I

.field private mIsAnimationCreated:Z

.field private mIsAnimationStarted:Z

.field private mLoadingType:I

.field private mLoadingViewBgCircleColor:I

.field private mLoadingViewColor:I

.field private mPointsAlpha:[F

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mStartAlpha:F

.field private mStepDegree:F

.field private mStrokeDefaultWidth:I

.field private mStrokeLargeWidth:I

.field private mStrokeMediumWidth:I

.field private mStrokeWidth:F

.field private mStyle:I

.field private mTouchHelper:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/progressbar/R$attr;->couiLoadingViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget p3, Lcom/support/progressbar/R$attr;->couiLoadingViewStyle:I

    sget v0, Lcom/support/progressbar/R$style;->Widget_COUI_COUILoadingView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/progressbar/COUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x6

    .line 5
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mPointsAlpha:[F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mWidth:I

    .line 7
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHeight:I

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingType:I

    const/high16 v2, 0x42700000    # 60.0f

    .line 9
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStepDegree:F

    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mAccessDescription:Ljava/lang/String;

    const v2, 0x3dcccccd    # 0.1f

    .line 11
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStartAlpha:F

    const v3, 0x3ecccccd    # 0.4f

    .line 12
    iput v3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mEndAlpha:F

    .line 13
    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationCreated:Z

    .line 14
    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationStarted:Z

    .line 15
    new-instance v4, Lcom/coui/appcompat/progressbar/COUILoadingView$1;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/progressbar/COUILoadingView$1;-><init>(Lcom/coui/appcompat/progressbar/COUILoadingView;)V

    iput-object v4, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    if-eqz p2, :cond_0

    .line 16
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStyle:I

    goto :goto_0

    .line 18
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStyle:I

    .line 19
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 21
    sget-object v4, Lcom/support/progressbar/R$styleable;->COUILoadingView:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/progressbar/R$dimen;->coui_loading_view_default_length:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 23
    sget p4, Lcom/support/progressbar/R$styleable;->COUILoadingView_couiLoadingViewWidth:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mWidth:I

    .line 24
    sget p4, Lcom/support/progressbar/R$styleable;->COUILoadingView_couiLoadingViewHeight:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHeight:I

    .line 25
    sget p3, Lcom/support/progressbar/R$styleable;->COUILoadingView_couiLoadingViewType:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingType:I

    .line 26
    sget p3, Lcom/support/progressbar/R$styleable;->COUILoadingView_couiLoadingViewColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingViewColor:I

    .line 27
    sget p3, Lcom/support/progressbar/R$styleable;->COUILoadingView_couiLoadingViewBgCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingViewBgCircleColor:I

    .line 28
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$dimen;->coui_circle_loading_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeDefaultWidth:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$dimen;->coui_circle_loading_medium_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeMediumWidth:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$dimen;->coui_circle_loading_large_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeLargeWidth:I

    .line 32
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeDefaultWidth:I

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeWidth:F

    .line 33
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingType:I

    if-ne v1, p3, :cond_1

    .line 34
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeMediumWidth:I

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeWidth:F

    .line 35
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStartAlpha:F

    .line 36
    iput v3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mEndAlpha:F

    goto :goto_1

    :cond_1
    const/4 p4, 0x2

    if-ne p4, p3, :cond_2

    int-to-float p2, p2

    .line 37
    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeWidth:F

    const p2, 0x3e5c28f6    # 0.215f

    .line 38
    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStartAlpha:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 39
    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mEndAlpha:F

    .line 40
    :cond_2
    :goto_1
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mWidth:I

    shr-int/2addr p2, v1

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mCenterX:F

    .line 41
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHeight:I

    shr-int/2addr p2, v1

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mCenterY:F

    .line 42
    new-instance p2, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mTouchHelper:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

    .line 43
    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->setCOUIViewTalkBalkInteraction(Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;)V

    .line 44
    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mTouchHelper:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

    invoke-static {p0, p2}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    .line 45
    invoke-static {p0, v1}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    .line 46
    sget p2, Lcom/support/progressbar/R$string;->coui_loading_view_access_string:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mAccessDescription:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->initProgressPaint()V

    .line 48
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->initBackgroundPaint()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/progressbar/COUILoadingView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/progressbar/COUILoadingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->cancelAnimations()V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/progressbar/COUILoadingView;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/progressbar/COUILoadingView;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/progressbar/COUILoadingView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mAccessDescription:Ljava/lang/String;

    return-object p0
.end method

.method private cancelAnimations()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private createAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/progressbar/COUILoadingView$LoadingAnimUpdateListener;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/progressbar/COUILoadingView$LoadingAnimUpdateListener;-><init>(Lcom/coui/appcompat/progressbar/COUILoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private destroyAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHalfWidth:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mArcRadius:F

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initArcRect()V
    .locals 6

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHalfStrokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHalfWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHalfHeight:F

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHalfWidth:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHalfStrokeWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mArcRadius:F

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHalfWidth:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mArcRadius:F

    sub-float v3, v1, v2

    sub-float v4, v1, v2

    add-float v5, v1, v2

    add-float/2addr v1, v2

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mArcRect:Landroid/graphics/RectF;

    return-void
.end method

.method private initBackgroundPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingViewBgCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeWidth:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private initProgressPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingViewColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private startAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->createAnimator()V

    iput-boolean v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationCreated:Z

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationStarted:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->startAnimations()V

    iput-boolean v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationStarted:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->destroyAnimator()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationCreated:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationStarted:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    rem-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mCurrentStepProgress:F

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUILoadingView;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHalfWidth:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHalfHeight:F

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mArcRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->initArcRect()V

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mArcRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mCurrentStepProgress:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float v3, v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    sub-float v0, v1, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x42700000    # 60.0f

    mul-float v4, v1, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mArcRect:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->initArcRect()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mWidth:I

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->initArcRect()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationCreated:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->createAnimator()V

    iput-boolean p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationCreated:Z

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationStarted:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->startAnimations()V

    iput-boolean p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationStarted:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->cancelAnimations()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mIsAnimationStarted:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->startAnimations()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->cancelAnimations()V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/progressbar/R$styleable;->COUILoadingView:[I

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/progressbar/R$styleable;->COUILoadingView:[I

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    sget v0, Lcom/support/progressbar/R$styleable;->COUILoadingView_couiLoadingViewColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingViewColor:I

    sget v0, Lcom/support/progressbar/R$styleable;->COUILoadingView_couiLoadingViewBgCircleColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingViewBgCircleColor:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->initProgressPaint()V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->initBackgroundPaint()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mHeight:I

    return-void
.end method

.method public setLoadingType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingType:I

    return-void
.end method

.method public setLoadingViewBgCircleColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingViewBgCircleColor:I

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->initBackgroundPaint()V

    return-void
.end method

.method public setLoadingViewColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mLoadingViewColor:I

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->initProgressPaint()V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->mWidth:I

    return-void
.end method
