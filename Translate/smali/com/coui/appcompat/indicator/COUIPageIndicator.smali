.class public Lcom/coui/appcompat/indicator/COUIPageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/indicator/COUIIPagerIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;,
        Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;,
        Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;,
        Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorDotModel;,
        Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;
    }
.end annotation


# static fields
.field private static final COLOR_EVALUATOR:Landroid/animation/ArgbEvaluator;

.field private static final COMPACT_MOVE_FACTOR_THRESHOLD:F = 0.095f

.field private static final DEBUG:Z

.field private static final DEFAULT_COLOR_FACTOR_THRESHOLD:F = 0.05f

.field private static final DEFAULT_GONE_DOT_SIZE:F = 0.0f

.field private static final DEFAULT_HALF_OF_PROGRESS:F = 0.5f

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final DEFAULT_MAXIMUM_LARGE_DOT_NUMBER:I = 0x4

.field private static final DEFAULT_MAXIMUM_MEDIUM_DOT_NUMBER:I = 0x2

.field private static final DEFAULT_MINIMUM_VISIBLE_CHANGE:F = 0.005f

.field private static final DEFAULT_MOVE_FACTOR_THRESHOLD:F = 0.005f

.field private static final HALF_OF_PI_IN_DEGREE:F = 90.0f

.field private static final INDICATOR_DOT_GONE_LEVEL_SIZE:F = 9.0f

.field private static final INDICATOR_DOT_LARGE_LEVEL_SIZE:F = 3.0f

.field private static final INDICATOR_DOT_LARGE_LEVEL_SIZE_WHILE_ALL_DOTS_VISIBLE:F = 5.0f

.field private static final INDICATOR_DOT_LEVEL:I = 0x4

.field private static final INDICATOR_DOT_MEDIUM_LEVEL_SIZE:F = 5.0f

.field private static final INDICATOR_DOT_SMALL_LEVEL_SIZE:F = 7.0f

.field private static final INVALID_INDEX:I = -0x1

.field private static final MAX_VISIBLE_DOT_NUMBER:I = 0x6

.field private static final ONE_AND_A_HALF_OF_PI_IN_DEGREE:F = 270.0f

.field private static final PI_IN_DEGREE:F = 180.0f

.field private static final TAG:Ljava/lang/String; = "COUIPageIndicator"


# instance fields
.field private final mAccessibilityHelper:Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;

.field private mCompatTracePaint:Landroid/graphics/Paint;

.field private mDotColor:I

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotsInterval:F

.field private mDownTime:J

.field private mIndicatorDescriptionID:I

.field private mIsClickable:Z

.field private mMediumDotSize:F

.field private mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

.field private mMoveFactorThreshold:F

.field private mNormalDotSize:F

.field private mOnDotClickListener:Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

.field private mSmallDotSize:F

.field private final mStyle:I

.field private final mTouchPoint:[F

.field private mTraceColor:I

.field private mTracePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "COUIPageIndicator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->DEBUG:Z

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->COLOR_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/indicator/R$attr;->couiPageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/support/indicator/R$style;->Widget_COUI_COUIPageIndicator_Dark:I

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/support/indicator/R$style;->Widget_COUI_COUIPageIndicator:I

    .line 5
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTouchPoint:[F

    .line 8
    new-instance v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;

    invoke-direct {v0, p0, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mAccessibilityHelper:Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;

    const v1, 0x3ba3d70a    # 0.005f

    .line 9
    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mMoveFactorThreshold:F

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDownTime:J

    .line 11
    sget v1, Lcom/support/indicator/R$plurals;->coui_page_indicator_description:I

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mIndicatorDescriptionID:I

    if-eqz p2, :cond_0

    .line 12
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mStyle:I

    goto :goto_0

    .line 14
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mStyle:I

    :goto_0
    const/4 v1, 0x0

    .line 15
    invoke-static {p0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 16
    sget-object v2, Lcom/support/indicator/R$styleable;->COUIPageIndicator:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    sget p2, Lcom/support/indicator/R$styleable;->COUIPageIndicator_traceDotColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTraceColor:I

    .line 18
    sget p2, Lcom/support/indicator/R$styleable;->COUIPageIndicator_dotColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDotColor:I

    .line 19
    sget p2, Lcom/support/indicator/R$styleable;->COUIPageIndicator_dotSize:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mNormalDotSize:F

    .line 20
    sget p2, Lcom/support/indicator/R$styleable;->COUIPageIndicator_dotSizeMedium:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mMediumDotSize:F

    .line 21
    sget p2, Lcom/support/indicator/R$styleable;->COUIPageIndicator_dotSizeSmall:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mSmallDotSize:F

    .line 22
    sget p2, Lcom/support/indicator/R$styleable;->COUIPageIndicator_dotSpacing:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDotsInterval:F

    .line 23
    sget p2, Lcom/support/indicator/R$styleable;->COUIPageIndicator_dotClickable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mIsClickable:Z

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-direct {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->buildModel()V

    .line 26
    invoke-direct {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->initPaints()V

    .line 27
    invoke-static {p0, v0}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    .line 28
    invoke-static {p0, p3}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1000()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/indicator/COUIPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mMoveFactorThreshold:F

    return p0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1300()Landroid/animation/ArgbEvaluator;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->COLOR_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mCompatTracePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/indicator/COUIPageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mIndicatorDescriptionID:I

    return p0
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mIsClickable:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mOnDotClickListener:Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/indicator/COUIPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mNormalDotSize:F

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/indicator/COUIPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mMediumDotSize:F

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/indicator/COUIPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mSmallDotSize:F

    return p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDotsInterval:F

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/indicator/COUIPageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTraceColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/indicator/COUIPageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDotColor:I

    return p0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private buildModel()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-direct {v0, p0, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    return-void
.end method

.method private initPaints()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTraceColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public addDot()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getDotsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->addDot(I)V

    return-void
.end method

.method public callOnClick()Z
    .locals 5

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mIsClickable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mOnDotClickListener:Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTouchPoint:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getClickedDotIndex(FF)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;->onClick(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-super {p0}, Landroid/view/View;->callOnClick()Z

    move-result p0

    return p0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mAccessibilityHelper:Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public getDotsCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getDotsCount()I

    move-result p0

    return p0
.end method

.method public isLayoutRtl()Z
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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-virtual {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setCurrentPosition(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-static {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->access$002(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;I)I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    check-cast p1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->mDotsCount:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    iget v0, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->mCurrentPosition:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setCurrentPosition(IF)V

    sget-boolean p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRestoreInstanceState dotsCount = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->mDotsCount:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentPosition = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->mCurrentPosition:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIPageIndicator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getDotsCount()I

    move-result v0

    iput v0, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->mDotsCount:I

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getCurrentPosition()F

    move-result p0

    iput p0, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->mCurrentPosition:F

    sget-boolean p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSaveInstanceState dotsCount = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->mDotsCount:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentPosition = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;->mCurrentPosition:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUIPageIndicator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDownTime:J

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTouchPoint:[F

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTouchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->callOnClick()Z

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDownTime:J

    :cond_2
    :goto_0
    return v1
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/indicator/R$styleable;->COUIPageIndicator:[I

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/indicator/R$styleable;->COUIPageIndicator:[I

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    sget v0, Lcom/support/indicator/R$styleable;->COUIPageIndicator_traceDotColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTraceColor:I

    sget v0, Lcom/support/indicator/R$styleable;->COUIPageIndicator_dotColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDotColor:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTraceColor:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setTraceDotColor(I)V

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDotColor:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setPageIndicatorDotsColor(I)V

    return-void
.end method

.method public removeDot()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->removeDot()V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setCurrentPosition(IF)V

    return-void
.end method

.method public setCurrentPosition(IF)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setCurrentPosition(IFZ)V

    return-void
.end method

.method public setCurrentPosition(IFZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mModel:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->setCurrentPosition(IFZ)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDotCornerRadius(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDotSpacing(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDotStrokeWidth(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDotsCount(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->getDotsCount()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->addDot()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->removeDot()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIndicatorDescriptionID(I)V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mIndicatorDescriptionID:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mIndicatorDescriptionID:I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIndicatorDescriptionID indicatorDescriptionID error :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIPageIndicator"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mIsClickable:Z

    return-void
.end method

.method public setOnDotClickListener(Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mOnDotClickListener:Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

    return-void
.end method

.method public setPageIndicatorDotsColor(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDotColor:I

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTraceDotColor(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTraceColor:I

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public snapToPosition()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public stopTraceAnimator()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
