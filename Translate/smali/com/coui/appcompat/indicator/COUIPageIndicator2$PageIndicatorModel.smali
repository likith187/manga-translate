.class Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageIndicatorModel"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mCurrentOffset:F

.field private final mCurrentPosition:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private final mDots:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawHorizontalOffset:F

.field private mIndicatorCount:I

.field private mInterval:F

.field private final mInvertMatrix:Landroid/graphics/Matrix;

.field private mMaskOffset:F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMaxVisibleCount:I

.field private mMovingToEnd:Z

.field private final mPath:Landroid/graphics/Path;

.field private final mPathDown:Landroid/graphics/Path;

.field private final mPathLeft:Landroid/graphics/Path;

.field private final mPathRight:Landroid/graphics/Path;

.field private final mPathUp:Landroid/graphics/Path;

.field private final mScaleMaskIndex:[F

.field private final mScaleMaskSize:[F

.field private final mScaleSize:[F

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/f;

.field private final mTraceRectPath:Landroid/graphics/Path;

.field private mViewHost:Landroid/view/View;

.field private final mVisibleBounds:[F

.field private mVisibleOffset:F

.field private final mVisibleRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/view/View;)V
    .locals 12

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    const/4 v0, 0x6

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaxVisibleCount:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mTraceRectPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleRect:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleBounds:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathLeft:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathRight:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInvertMatrix:Landroid/graphics/Matrix;

    new-instance v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel$1;

    const-string v2, "currentPosition"

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel$1;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentPosition:Landroidx/dynamicanimation/animation/d;

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDrawHorizontalOffset:F

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleOffset:F

    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMovingToEnd:Z

    iput-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mViewHost:Landroid/view/View;

    const/4 p2, 0x4

    new-array v3, p2, [F

    iput-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    new-array v4, p2, [F

    iput-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleSize:[F

    const/high16 v5, 0x40400000    # 3.0f

    aput v5, v4, v1

    const/4 v5, 0x1

    const/high16 v6, 0x40a00000    # 5.0f

    aput v6, v4, v5

    const/high16 v7, 0x40e00000    # 7.0f

    aput v7, v4, v0

    const/4 v8, 0x3

    const/high16 v9, 0x41100000    # 9.0f

    aput v9, v4, v8

    aput v2, v3, v1

    aget v10, v4, v1

    sub-float/2addr v6, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float v6, v2, v6

    aput v6, v3, v5

    aget v11, v4, v5

    sub-float/2addr v7, v11

    div-float/2addr v7, v10

    sub-float/2addr v6, v7

    aput v6, v3, v0

    aget v4, v4, v0

    sub-float/2addr v9, v4

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    aput v6, v3, v8

    invoke-static {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v3

    div-float/2addr v3, v10

    aput v3, p2, v1

    invoke-static {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$200(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v1

    div-float/2addr v1, v10

    aput v1, p2, v5

    invoke-static {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$300(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v1

    div-float/2addr v1, v10

    aput v1, p2, v0

    aput v2, p2, v8

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    invoke-static {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$400(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result p1

    mul-float/2addr p1, v10

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInterval:F

    invoke-direct {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->initSpring()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->setCurrentPositionInternal(IF)V

    return-void
.end method

.method private configCanvas(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleBounds:[F

    aget v3, v3, v2

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDrawHorizontalOffset:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleBounds:[F

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v1

    div-float/2addr v1, v3

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleBounds:[F

    aget v2, v3, v2

    neg-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDrawHorizontalOffset:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draw rect bounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleBounds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " horizontalOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDrawHorizontalOffset:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUIPageIndicator2"

    invoke-static {p1, v0, p0}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private drawDots(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    if-eq v2, v3, :cond_0

    add-int/lit8 v4, v2, -0x1

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterX:F

    iget v4, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mRadius:F

    add-float v5, v3, v4

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleBounds:[F

    const/4 v7, 0x0

    aget v8, v6, v7

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_0

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, v6, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawDots: dot index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " dot radius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mRadius:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " dot location = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ") left = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleBounds:[F

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " right = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleBounds:[F

    aget v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "COUIPageIndicator2"

    invoke-static {v3, v5, v4}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$600(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->setFillColor(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$700(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->setFillColor(I)V

    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$800(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private drawTrace(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->getColorFactor()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$600(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$600(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathLeft:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1200()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v3}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$700(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$600(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1200()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v3}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$700(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$600(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathLeft:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$600(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathRight:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private getColorFactor()F
    .locals 3

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    div-float/2addr p0, v0

    return p0

    :cond_0
    const v1, 0x3f733333    # 0.95f

    cmpl-float v1, p0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_1

    sub-float/2addr v2, p0

    div-float/2addr v2, v0

    :cond_1
    return v2
.end method

.method private getMaskedSize(IF)F
    .locals 8

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleSize:[F

    aget p0, p0, p1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpg-float v2, p2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-gez v2, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMovingToEnd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleSize:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    sub-float v5, v0, v1

    mul-float/2addr v5, v4

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$900()Landroid/view/animation/PathInterpolator;

    move-result-object v4

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v6, v6, p1

    sub-float/2addr p2, v6

    invoke-virtual {v4, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v2, p0, v2

    aget p0, p0, p1

    sub-float/2addr v2, p0

    div-float/2addr p2, v2

    sub-float/2addr v3, p2

    mul-float/2addr v5, v3

    sub-float/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleSize:[F

    add-int/lit8 v1, p1, -0x1

    aget v2, v0, v1

    aget v0, v0, p1

    sub-float v3, v2, v0

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$900()Landroid/view/animation/PathInterpolator;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v5, v5, p1

    sub-float/2addr p2, v5

    invoke-virtual {v4, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr v3, p2

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget p2, p0, v1

    aget p0, p0, p1

    sub-float/2addr p2, p0

    div-float/2addr v3, p2

    add-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget v1, v2, v1

    add-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMovingToEnd:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleSize:[F

    add-int/lit8 v1, p1, -0x1

    aget v2, v0, v1

    aget v0, v0, p1

    sub-float v3, v2, v0

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$900()Landroid/view/animation/PathInterpolator;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v5, v5, p1

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget v6, v6, p1

    add-float/2addr v5, v6

    sub-float/2addr v5, p2

    invoke-virtual {v4, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr v3, p2

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v4, p2, p1

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget p1, p0, p1

    add-float/2addr v4, p1

    aget p1, p2, v1

    sub-float/2addr v4, p1

    aget p0, p0, v1

    sub-float/2addr v4, p0

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleSize:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    sub-float v5, v0, v1

    mul-float/2addr v5, v4

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$900()Landroid/view/animation/PathInterpolator;

    move-result-object v4

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v6, v6, p1

    iget-object v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget v7, v7, p1

    add-float/2addr v6, v7

    sub-float/2addr v6, p2

    invoke-virtual {v4, v6}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p2

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v6, v4, p1

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget p1, p0, p1

    add-float/2addr v6, p1

    aget p1, v4, v2

    sub-float/2addr v6, p1

    aget p0, p0, v2

    sub-float/2addr v6, p0

    div-float/2addr p2, v6

    sub-float/2addr v3, p2

    mul-float/2addr v5, v3

    sub-float/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private getMoveFactor()F
    .locals 7

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x3ee66666    # 0.45f

    const/high16 v5, 0x3f000000    # 0.5f

    if-lez v2, :cond_0

    cmpg-float v2, v0, v5

    if-gtz v2, :cond_0

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$900()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    :goto_0
    div-float/2addr v0, v3

    goto :goto_1

    :cond_0
    cmpl-float v2, v0, v5

    if-lez v2, :cond_1

    const v2, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$900()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    sub-float/2addr v2, v6

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1000(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1000(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1000(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v1

    sub-float v1, v5, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1000(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result p0

    sub-float v0, v5, p0

    :cond_3
    :goto_2
    return v0
.end method

.method private getRadius(I)F
    .locals 6

    int-to-float v0, p1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->getMaskedSize(IF)F

    move-result v2

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index, mMaskOffset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " level = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dot position = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " size = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " moving to end = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMovingToEnd:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIPageIndicator2"

    invoke-static {v3, p1, p0}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private initSpring()V
    .locals 3

    new-instance v0, Landroidx/dynamicanimation/animation/g;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/g;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/g;->d(F)Landroidx/dynamicanimation/animation/g;

    const v1, 0x44bb8000    # 1500.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/g;->f(F)Landroidx/dynamicanimation/animation/g;

    new-instance v1, Landroidx/dynamicanimation/animation/f;

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentPosition:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/f;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mSpringAnimation:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/f;->x(Landroidx/dynamicanimation/animation/g;)Landroidx/dynamicanimation/animation/f;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mSpringAnimation:Landroidx/dynamicanimation/animation/f;

    const v0, 0x3ba3d70a    # 0.005f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/c;->k(F)Landroidx/dynamicanimation/animation/c;

    return-void
.end method

.method private mapPoints([F)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method private setCurrentPositionInternal(IF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    int-to-float v3, v1

    add-float/2addr v3, v2

    iget v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    const-string v4, "COUIPageIndicator2"

    if-gtz v3, :cond_f

    if-gez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    int-to-float v3, v3

    iget v6, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    add-float/2addr v3, v6

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    iput v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    const/4 v6, 0x0

    aget v2, v2, v6

    iget-object v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget v7, v7, v6

    add-float v8, v2, v7

    iget v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    add-float/2addr v8, v9

    cmpl-float v8, v1, v8

    if-lez v8, :cond_1

    iput-boolean v5, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMovingToEnd:Z

    goto :goto_0

    :cond_1
    add-float v8, v2, v9

    cmpg-float v8, v1, v8

    if-gez v8, :cond_2

    iput-boolean v6, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMovingToEnd:Z

    :cond_2
    :goto_0
    add-float v8, v2, v7

    add-float/2addr v8, v9

    cmpl-float v8, v1, v8

    if-gtz v8, :cond_5

    float-to-double v10, v1

    add-float/2addr v2, v7

    float-to-double v7, v2

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    add-double/2addr v7, v12

    cmpl-double v2, v10, v7

    if-lez v2, :cond_3

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v2, v2, v6

    iget-object v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget v7, v7, v6

    add-float/2addr v2, v7

    iget v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    add-float/2addr v2, v7

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v2, v2, v6

    iget v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    add-float v8, v2, v7

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_4

    add-float v8, v2, v7

    cmpl-float v8, v1, v8

    if-lez v8, :cond_6

    float-to-double v8, v2

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    add-double/2addr v8, v12

    cmpg-double v2, v10, v8

    if-gez v2, :cond_6

    :cond_4
    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v2, v2, v6

    sub-float v2, v1, v2

    iget v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    sub-float/2addr v2, v7

    add-float/2addr v7, v2

    iput v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v2, v2, v6

    sub-float v2, v1, v2

    iget-object v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget v7, v7, v6

    sub-float/2addr v2, v7

    iget v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    sub-float/2addr v2, v7

    add-float/2addr v7, v2

    iput v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    :cond_6
    :goto_2
    cmpl-float v2, v3, v1

    if-lez v2, :cond_7

    float-to-double v7, v3

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v2, v2, v6

    iget-object v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget v9, v9, v6

    add-float/2addr v2, v9

    float-to-double v9, v2

    iget v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    cmpl-double v2, v7, v9

    if-ltz v2, :cond_7

    float-to-double v7, v1

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v2, v2, v6

    iget-object v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    aget v9, v9, v6

    add-float/2addr v2, v9

    float-to-double v9, v2

    iget v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    cmpg-double v2, v7, v9

    if-gtz v2, :cond_7

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    goto :goto_3

    :cond_7
    cmpg-float v2, v3, v1

    if-gez v2, :cond_8

    float-to-double v2, v3

    iget-object v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v7, v7, v6

    float-to-double v7, v7

    iget v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    cmpg-double v2, v2, v7

    if-gtz v2, :cond_8

    float-to-double v1, v1

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskIndex:[F

    aget v3, v3, v6

    float-to-double v7, v3

    iget v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    cmpl-double v1, v1, v7

    if-ltz v1, :cond_8

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    :cond_8
    :goto_3
    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v3, v7

    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleOffset:F

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    if-ge v1, v2, :cond_9

    iput v8, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleOffset:F

    :cond_9
    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleBounds:[F

    iget v8, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleOffset:F

    iget v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInterval:F

    mul-float v10, v8, v9

    aput v10, v3, v6

    const/high16 v11, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_a

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v1

    add-float/2addr v9, v1

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    int-to-float v1, v1

    mul-float/2addr v9, v1

    add-float/2addr v10, v9

    aput v10, v3, v5

    goto/16 :goto_5

    :cond_a
    cmpl-float v2, v8, v7

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v13, 0x40c00000    # 6.0f

    if-ltz v2, :cond_b

    add-int/lit8 v2, v1, -0x6

    int-to-float v2, v2

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_b

    mul-float/2addr v9, v13

    add-float/2addr v10, v9

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleSize:[F

    aget v2, v1, v6

    mul-float/2addr v2, v11

    mul-float/2addr v2, v12

    add-float/2addr v10, v2

    aget v1, v1, v5

    mul-float/2addr v1, v11

    mul-float/2addr v1, v11

    add-float/2addr v10, v1

    aput v10, v3, v5

    goto :goto_4

    :cond_b
    cmpg-float v2, v8, v7

    const/4 v7, 0x2

    if-gez v2, :cond_c

    mul-float v1, v9, v13

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleSize:[F

    aget v14, v2, v6

    mul-float v15, v14, v12

    mul-float/2addr v15, v11

    add-float/2addr v1, v15

    aget v15, v2, v5

    mul-float v16, v15, v11

    add-float v1, v1, v16

    aget v2, v2, v7

    mul-float/2addr v2, v11

    add-float/2addr v1, v2

    mul-float/2addr v9, v13

    mul-float/2addr v14, v12

    mul-float/2addr v14, v11

    add-float/2addr v9, v14

    mul-float/2addr v15, v11

    mul-float/2addr v15, v11

    add-float/2addr v9, v15

    add-float/2addr v10, v1

    sub-float/2addr v9, v1

    mul-float/2addr v9, v8

    add-float/2addr v10, v9

    aput v10, v3, v5

    goto :goto_4

    :cond_c
    add-int/lit8 v2, v1, -0x6

    int-to-float v2, v2

    cmpl-float v2, v8, v2

    if-lez v2, :cond_d

    mul-float v2, v9, v13

    iget-object v14, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleSize:[F

    aget v15, v14, v6

    mul-float v16, v15, v12

    mul-float v16, v16, v11

    add-float v2, v2, v16

    aget v16, v14, v5

    mul-float v17, v16, v11

    add-float v2, v2, v17

    aget v7, v14, v7

    mul-float/2addr v7, v11

    add-float/2addr v2, v7

    mul-float/2addr v9, v13

    mul-float/2addr v15, v12

    mul-float/2addr v15, v11

    add-float/2addr v9, v15

    mul-float v16, v16, v11

    mul-float v16, v16, v11

    add-float v9, v9, v16

    add-float/2addr v10, v9

    sub-float/2addr v2, v9

    int-to-float v1, v1

    sub-float/2addr v8, v1

    add-float/2addr v8, v13

    mul-float/2addr v2, v8

    add-float/2addr v10, v2

    aput v10, v3, v5

    :cond_d
    :goto_4
    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v1

    iget v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInterval:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v13

    mul-float/2addr v2, v13

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleSize:[F

    aget v7, v3, v6

    mul-float/2addr v7, v12

    mul-float/2addr v7, v11

    add-float/2addr v2, v7

    aget v3, v3, v5

    mul-float/2addr v3, v11

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v11

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDrawHorizontalOffset:F

    :goto_5
    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentPosition: mVisibleRectOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleOffset:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInterval:F

    div-float/2addr v1, v11

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    iget-object v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->getRadius(I)F

    move-result v4

    iput v4, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mRadius:F

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->setCenterX(F)V

    iget v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInterval:F

    iget v5, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mRadius:F

    mul-float/2addr v5, v11

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    iget-object v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleBounds:[F

    aget v4, v4, v6

    neg-float v4, v4

    iget v5, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDrawHorizontalOffset:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->setOffsetX(F)V

    invoke-virtual {v3}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->dump()V

    goto :goto_6

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->updatePath()V

    iget-object v0, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mViewHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_f
    :goto_7
    const-string v0, "Illegal current position"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePath()V
    .locals 35

    move-object/from16 v0, p0

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePath: mCurrentOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " dots size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "COUIPageIndicator2"

    invoke-static {v1, v5, v2}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    iget v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    iget v6, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    invoke-virtual {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getCenterX()F

    move-result v6

    invoke-virtual {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getCenterY()F

    move-result v7

    invoke-virtual {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getRadius()F

    move-result v1

    invoke-virtual {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getCenterX()F

    move-result v8

    invoke-virtual {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getCenterY()F

    move-result v9

    invoke-virtual {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getRadius()F

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->getColorFactor()F

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->getMoveFactor()F

    move-result v11

    iget v12, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    const/high16 v13, 0x3f000000    # 0.5f

    cmpg-float v14, v12, v13

    const/high16 v16, 0x40000000    # 2.0f

    if-gtz v14, :cond_1

    mul-float v14, v11, v16

    iget v15, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInterval:F

    add-float/2addr v15, v2

    add-float/2addr v15, v1

    mul-float/2addr v14, v15

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    mul-float v12, v11, v16

    iget v15, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInterval:F

    add-float/2addr v15, v2

    add-float/2addr v15, v1

    mul-float/2addr v12, v15

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    add-float v15, v6, v14

    sub-float v17, v13, v11

    mul-float v18, v1, v17

    mul-float v18, v18, v16

    add-float v13, v15, v18

    move/from16 v18, v10

    move/from16 v19, v11

    float-to-double v10, v7

    mul-float v20, v1, v1

    mul-float v21, v1, v16

    mul-float v21, v21, v17

    mul-float v21, v21, v16

    mul-float v21, v21, v1

    mul-float v21, v21, v17

    move/from16 v22, v15

    sub-float v15, v20, v21

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sub-double/2addr v10, v4

    double-to-float v4, v10

    sub-float v5, v8, v12

    mul-float v10, v2, v17

    mul-float v10, v10, v16

    sub-float v10, v5, v10

    move v15, v12

    float-to-double v11, v9

    mul-float v24, v2, v2

    mul-float v25, v2, v16

    mul-float v25, v25, v17

    mul-float v25, v25, v16

    mul-float v25, v25, v2

    mul-float v25, v25, v17

    move/from16 v26, v15

    sub-float v15, v24, v25

    move/from16 v24, v8

    move/from16 v25, v9

    float-to-double v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sub-double/2addr v11, v8

    double-to-float v8, v11

    add-float v9, v13, v10

    div-float v9, v9, v16

    sub-float v11, v9, v6

    sub-float/2addr v11, v14

    sub-float v12, v13, v6

    sub-float/2addr v12, v14

    mul-float/2addr v11, v12

    sub-float v20, v20, v11

    sub-float v11, v4, v7

    div-float v20, v20, v11

    add-float v11, v20, v7

    mul-float v12, v17, v16

    move v15, v10

    move/from16 v17, v11

    float-to-double v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    const-wide v27, 0x4066800000000000L    # 180.0

    mul-double v10, v10, v27

    const-wide v27, 0x400921fb54442d18L    # Math.PI

    div-double v10, v10, v27

    double-to-float v10, v10

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " startDot = ("

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move/from16 v20, v15

    const-string v15, ") endDot = ("

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v24

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v5

    move/from16 v5, v25

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ") colorFactor = "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v18

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " moveFactor = "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v19

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mDepartOffset = "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mPortOffset = "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v26

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ") control1 = ("

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ") control2 = ("

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v17

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move/from16 v17, v13

    const-string v13, ") control3 = ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") snapAngle = "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v12, v23

    invoke-static {v11, v12, v3}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPath:Landroid/graphics/Path;

    sub-float v11, v6, v1

    add-float v12, v15, v2

    move/from16 v18, v4

    iget-object v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v31

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/16 v29, 0x0

    move-object/from16 v27, v3

    move/from16 v28, v11

    move/from16 v30, v12

    move-object/from16 v32, v4

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mTraceRectPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mTraceRectPath:Landroid/graphics/Path;

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mTraceRectPath:Landroid/graphics/Path;

    invoke-virtual {v3, v12, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mTraceRectPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v4

    invoke-virtual {v3, v12, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mTraceRectPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v4

    invoke-virtual {v3, v11, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mTraceRectPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v3, v11, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    sub-float v4, v7, v1

    add-float v20, v6, v1

    add-float/2addr v1, v7

    const/high16 v33, 0x42b40000    # 90.0f

    const/16 v34, 0x0

    const/high16 v32, 0x43340000    # 180.0f

    move-object/from16 v27, v3

    move/from16 v29, v4

    move/from16 v30, v20

    move/from16 v31, v1

    invoke-virtual/range {v27 .. v34}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    move/from16 v23, v6

    move/from16 v6, v22

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    add-float v6, v11, v14

    add-float v14, v20, v14

    const/high16 v32, 0x43870000    # 270.0f

    move-object/from16 v27, v3

    move/from16 v28, v6

    move/from16 v30, v14

    move/from16 v33, v10

    invoke-virtual/range {v27 .. v34}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v3, v9, v5, v13, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    sub-float v8, v15, v2

    sub-float v13, v8, v26

    move/from16 v22, v1

    sub-float v1, v25, v2

    sub-float v24, v12, v26

    add-float v2, v25, v2

    const/high16 v26, 0x43870000    # 270.0f

    sub-float v32, v26, v10

    move-object/from16 v27, v3

    move/from16 v28, v13

    move/from16 v29, v1

    move/from16 v30, v24

    move/from16 v31, v2

    invoke-virtual/range {v27 .. v34}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v3, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    const/high16 v33, 0x42b40000    # 90.0f

    const/high16 v32, 0x43870000    # 270.0f

    move-object/from16 v27, v3

    move/from16 v28, v8

    move/from16 v30, v12

    invoke-virtual/range {v27 .. v34}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v3, v11, v15}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    move/from16 v15, v25

    invoke-virtual {v3, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    const/16 v32, 0x0

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v34}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    move/from16 v8, v21

    invoke-virtual {v3, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    const/high16 v32, 0x42b40000    # 90.0f

    move-object/from16 v27, v3

    move/from16 v28, v13

    move/from16 v30, v24

    move/from16 v33, v10

    invoke-virtual/range {v27 .. v34}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    mul-float v2, v15, v16

    sub-float/2addr v2, v5

    mul-float v7, v7, v16

    sub-float v7, v7, v18

    move/from16 v15, v17

    invoke-virtual {v1, v9, v2, v15, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v32, v2, v10

    move-object/from16 v27, v1

    move/from16 v28, v6

    move/from16 v29, v4

    move/from16 v30, v14

    move/from16 v31, v22

    invoke-virtual/range {v27 .. v34}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    move/from16 v7, v22

    move/from16 v2, v23

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    const/high16 v33, 0x42b40000    # 90.0f

    const/high16 v32, 0x42b40000    # 90.0f

    move-object/from16 v27, v1

    move/from16 v28, v11

    move/from16 v30, v20

    move/from16 v31, v7

    invoke-virtual/range {v27 .. v34}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v2

    invoke-virtual {v1, v11, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v2

    invoke-virtual {v1, v12, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathUp:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathLeft:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathRight:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathLeft:Landroid/graphics/Path;

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v30, v9, v2

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v31

    const/16 v29, 0x0

    move-object/from16 v27, v1

    move-object/from16 v32, v19

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathRight:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v31

    move-object/from16 v27, v1

    move/from16 v28, v9

    move/from16 v30, v12

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathLeft:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPathRight:Landroid/graphics/Path;

    iget-object v0, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method

.method private verifyMask(Z)V
    .locals 3

    const/4 v0, 0x6

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    :cond_1
    :goto_0
    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    const/high16 p1, 0x40a00000    # 5.0f

    aput p1, p0, v1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mScaleMaskSize:[F

    const/high16 p1, 0x40400000    # 3.0f

    aput p1, p0, v1

    :goto_1
    return-void
.end method


# virtual methods
.method public addDot(I)V
    .locals 3

    new-instance v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;-><init>(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$700(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->setFillColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->setCenterX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result p1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->setCenterY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->verifyMask(Z)V

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    invoke-direct {p0, p1, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->setCurrentPositionInternal(IF)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mViewHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDot: current index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "COUIPageIndicator2"

    invoke-static {p1, v1, p0}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->dump()V

    return-void
.end method

.method public dump()V
    .locals 3

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " dots count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " maskOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mMaskOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " visible rect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUIPageIndicator2"

    invoke-static {v0, v2, v1}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->dump()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getClickedDotIndex(FF)I
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mapPoints([F)V

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    invoke-virtual {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getBounds()Landroid/graphics/RectF;

    move-result-object v3

    aget v4, v0, v1

    aget v5, v0, p1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentPosition()F
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    add-float/2addr v0, p0

    return v0
.end method

.method public getDot(I)Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDotsCount()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    return p0
.end method

.method public getVisibleRect()Landroid/graphics/RectF;
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleRect:Landroid/graphics/RectF;

    const/4 v1, 0x6

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mInterval:F

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v3}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mVisibleRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->configCanvas(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->drawDots(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->drawTrace(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public removeDot()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mDots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    add-float/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    :cond_0
    invoke-direct {p0, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->verifyMask(Z)V

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->setCurrentPositionInternal(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mViewHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDot: current index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mCurrentOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mIndicatorCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "COUIPageIndicator2"

    invoke-static {v0, v1, p0}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentPosition(IFZ)V
    .locals 3

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPosition: position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " animate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUIPageIndicator2"

    invoke-static {v0, v2, v1}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mSpringAnimation:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->getCurrentPosition()F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/c;->m(F)Landroidx/dynamicanimation/animation/c;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->mSpringAnimation:Landroidx/dynamicanimation/animation/f;

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/f;->s(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->setCurrentPositionInternal(IF)V

    :goto_0
    return-void
.end method
