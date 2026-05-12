.class Lcom/coui/appcompat/cardview/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mCardRoundCornerRadius:F

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mIsSupportSmoothRoundCorner:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mWeight:F


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/coui/appcompat/cardview/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method

.method constructor <init>(Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mInsetForPadding:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mInsetForRadius:Z

    .line 5
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mIsSupportSmoothRoundCorner:Z

    .line 7
    iput p2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mRadius:F

    .line 8
    iput p3, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mWeight:F

    .line 9
    iput p4, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mCardRoundCornerRadius:F

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 11
    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 13
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 14
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mIsSupportSmoothRoundCorner:Z

    return-void
.end method

.method private createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private execute15SRC()Z
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->isAdaptedOn15()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->isAdaptedOn16()Z

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

.method private execute16SRC()Z
    .locals 2

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mCardRoundCornerRadius:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isAdaptedOn15()Z
    .locals 2

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mWeight:F

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAdaptedOn16()Z
    .locals 3

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mCardRoundCornerRadius:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mRadius:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mWeight:F

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUseSmoothRoundRect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mIsSupportSmoothRoundCorner:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->isWeightValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWeightValid()Z
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mWeight:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mInsetForPadding:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPadding:F

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mRadius:F

    iget-boolean v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPadding:F

    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mRadius:F

    iget-boolean v2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    return-void
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->execute16SRC()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oplus/graphics/OplusOutlineAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/oplus/graphics/OplusOutlineAdapter;-><init>(Landroid/graphics/Outline;I)V

    iget-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mCardRoundCornerRadius:F

    invoke-virtual {v0, p1, p0}, Lcom/oplus/graphics/OplusOutlineAdapter;->setSmoothRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->execute15SRC()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oplus/graphics/OplusOutline;

    invoke-direct {v0, p1}, Lcom/oplus/graphics/OplusOutline;-><init>(Landroid/graphics/Outline;)V

    iget-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mRadius:F

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mWeight:F

    invoke-virtual {v0, p1, v1, p0}, Lcom/oplus/graphics/OplusOutline;->setSmoothRoundRect(Landroid/graphics/Rect;FF)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mCardRoundCornerRadius:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mRadius:F

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :goto_1
    return-void
.end method

.method getPadding()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPadding:F

    return p0
.end method

.method public getRadius()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mRadius:F

    return p0
.end method

.method public getWeight()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mWeight:F

    return p0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    return v1

    :cond_2
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method setPadding(FZZ)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mInsetForPadding:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mInsetForRadius:Z

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mPadding:F

    iput-boolean p2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mInsetForPadding:Z

    iput-boolean p3, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mInsetForRadius:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setRadius(F)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mRadius:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setWeight(F)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mWeight:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->mWeight:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
