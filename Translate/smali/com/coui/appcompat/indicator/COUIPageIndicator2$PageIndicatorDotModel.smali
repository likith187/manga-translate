.class Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageIndicatorDotModel"
.end annotation


# instance fields
.field protected mBounds:Landroid/graphics/RectF;

.field protected mCenterX:F

.field protected mCenterY:F

.field protected mFillColor:I

.field protected mId:I

.field protected mOffsetX:F

.field protected mRadius:F


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mRadius:F

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterX:F

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterY:F

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mOffsetX:F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mBounds:Landroid/graphics/RectF;

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mId:I

    return-void
.end method

.method private updateBounds()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mOffsetX:F

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterX:F

    add-float v3, v1, v2

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mRadius:F

    sub-float/2addr v3, v4

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterY:F

    sub-float v5, p0, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    add-float/2addr p0, v4

    invoke-virtual {v0, v3, v5, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 4

    invoke-static {}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$500()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dot = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") bounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " offsetX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mOffsetX:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "COUIPageIndicator2"

    invoke-static {v0, v1, p0}, Lcom/coui/appcompat/log/COUILog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getCenterX()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterX:F

    return p0
.end method

.method public getCenterY()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterY:F

    return p0
.end method

.method public getFillColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mFillColor:I

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mId:I

    return p0
.end method

.method public getRadius()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mRadius:F

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mFillColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterX:F

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mRadius:F

    sub-float v3, v0, v1

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterY:F

    sub-float v4, p0, v1

    add-float v5, v0, v1

    add-float v6, p0, v1

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCenterX(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterX:F

    invoke-direct {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->updateBounds()V

    return-void
.end method

.method public setCenterY(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mCenterY:F

    invoke-direct {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->updateBounds()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mFillColor:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mId:I

    return-void
.end method

.method public setOffsetX(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mOffsetX:F

    invoke-direct {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->updateBounds()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->mRadius:F

    invoke-direct {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->updateBounds()V

    return-void
.end method
