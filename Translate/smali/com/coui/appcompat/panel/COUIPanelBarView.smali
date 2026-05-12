.class public Lcom/coui/appcompat/panel/COUIPanelBarView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final ANIMATOR_DURATION:J = 0xa7L

.field private static final ANIMATOR_RESPONSE_THRESHOLD:I = 0x5


# instance fields
.field private continuousMove:I

.field private directTo:I

.field private mBarColor:I

.field private mBarHeight:I

.field private mBarMarginTop:I

.field private mBarWidth:I

.field private mCurrentPosition:I

.field private mIsBeingDragged:Z

.field private mIsFixed:Z

.field private mMaxOffset:F

.field private mOffset:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mSpecialThreshold:I

.field private mTopLeftPointX:F

.field private mTopLeftPointY:F

.field private mTopMiddlePointX:F

.field private mTopMiddlePointY:F

.field private mTopRightPointX:F

.field private mTopRightPointY:F

.field private translationAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsFixed:Z

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsBeingDragged:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    .line 5
    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointX:F

    .line 6
    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointY:F

    .line 7
    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointX:F

    .line 8
    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointY:F

    .line 9
    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointX:F

    .line 10
    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointY:F

    .line 11
    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    .line 12
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->continuousMove:I

    .line 13
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mCurrentPosition:I

    .line 14
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mSpecialThreshold:I

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->directTo:I

    .line 16
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsFixed:Z

    .line 19
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsBeingDragged:Z

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    .line 21
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointX:F

    .line 22
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointY:F

    .line 23
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointX:F

    .line 24
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointY:F

    .line 25
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointX:F

    .line 26
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointY:F

    .line 27
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    .line 28
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->continuousMove:I

    .line 29
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mCurrentPosition:I

    .line 30
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mSpecialThreshold:I

    const/4 p2, -0x1

    .line 31
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->directTo:I

    .line 32
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsFixed:Z

    .line 35
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsBeingDragged:Z

    const/4 p3, 0x0

    .line 36
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    .line 37
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointX:F

    .line 38
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointY:F

    .line 39
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointX:F

    .line 40
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointY:F

    .line 41
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointX:F

    .line 42
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointY:F

    .line 43
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    .line 44
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->continuousMove:I

    .line 45
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mCurrentPosition:I

    .line 46
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mSpecialThreshold:I

    const/4 p2, -0x1

    .line 47
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->directTo:I

    .line 48
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsFixed:Z

    .line 51
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsBeingDragged:Z

    const/4 p3, 0x0

    .line 52
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    .line 53
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointX:F

    .line 54
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointY:F

    .line 55
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointX:F

    .line 56
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointY:F

    .line 57
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointX:F

    .line 58
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointY:F

    .line 59
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    .line 60
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->continuousMove:I

    .line 61
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mCurrentPosition:I

    .line 62
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mSpecialThreshold:I

    const/4 p2, -0x1

    .line 63
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->directTo:I

    .line 64
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawBar(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelBarView;->setPoint()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointX:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointX:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointX:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_bar_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mBarWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mBarHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_bar_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mBarMarginTop:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_drag_bar_max_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_normal_padding_top_tiny_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mSpecialThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/panel/R$color;->coui_panel_bar_view_color:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lt/h;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mBarColor:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mBarHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mBarColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private playResetAnimator()V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsFixed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v2, v3

    const-string v1, "barOffset"

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    mul-float/2addr v4, v3

    div-float/2addr v2, v4

    const/high16 v3, 0x43270000    # 167.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->directTo:I

    :cond_1
    return-void
.end method

.method private playTowardsDownAnimator()V
    .locals 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsFixed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v0

    const-string v1, "barOffset"

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    mul-float/2addr v4, v3

    div-float/2addr v2, v4

    const/high16 v3, 0x43270000    # 167.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->directTo:I

    :cond_1
    return-void
.end method

.method private playTowardsUpAnimator()V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsFixed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    neg-float v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    const-string v0, "barOffset"

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mMaxOffset:F

    mul-float/2addr v3, v2

    div-float/2addr v1, v3

    const/high16 v2, 0x43270000    # 167.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->translationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->directTo:I

    :cond_1
    return-void
.end method

.method private setBarOffset(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setPoint()V
    .locals 7

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mBarHeight:I

    int-to-float v3, v2

    div-float/2addr v3, v1

    iput v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointX:F

    int-to-float v3, v2

    div-float/2addr v3, v1

    sub-float/2addr v3, v0

    iput v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopLeftPointY:F

    iget v4, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mBarWidth:I

    int-to-float v5, v4

    div-float/2addr v5, v1

    int-to-float v6, v2

    div-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointX:F

    int-to-float v5, v2

    div-float/2addr v5, v1

    add-float/2addr v5, v0

    iput v5, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopMiddlePointY:F

    int-to-float v0, v4

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointX:F

    iput v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mTopRightPointY:F

    return-void
.end method

.method private startAnimator()V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->continuousMove:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->directTo:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelBarView;->playTowardsDownAnimator()V

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mOffset:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->directTo:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mCurrentPosition:I

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mSpecialThreshold:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelBarView;->playTowardsUpAnimator()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mBarMarginTop:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelBarView;->drawBar(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public releaseDrag()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelBarView;->playResetAnimator()V

    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mBarColor:I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIsBeingDragged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsBeingDragged:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsBeingDragged:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelBarView;->releaseDrag()V

    :cond_0
    return-void
.end method

.method public setIsFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsFixed:Z

    return-void
.end method

.method public setPanelOffset(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mIsFixed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->continuousMove:I

    mul-int v1, v0, p1

    if-lez v1, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->continuousMove:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->continuousMove:I

    :goto_0
    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mCurrentPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mCurrentPosition:I

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->continuousMove:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->continuousMove:I

    if-lez p1, :cond_2

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mCurrentPosition:I

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->mSpecialThreshold:I

    if-ge p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelBarView;->startAnimator()V

    :cond_2
    return-void
.end method
