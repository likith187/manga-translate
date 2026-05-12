.class public Lcom/coui/appcompat/roundRect/COUIRoundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;
    }
.end annotation


# instance fields
.field private drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

.field private fillPaint:Landroid/graphics/Paint;

.field private fillPath:Landroid/graphics/Path;

.field private pathDirty:Z

.field private rectF:Landroid/graphics/RectF;

.field private strokePaint:Landroid/graphics/Paint;

.field private strokePath:Landroid/graphics/Path;

.field private strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    invoke-direct {v0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;-><init>()V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;-><init>(Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;)V

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->rectF:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPath:Landroid/graphics/Path;

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePath:Landroid/graphics/Path;

    .line 8
    iput-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    .line 9
    iget-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/roundRect/COUIRoundDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->pathDirty:Z

    return p1
.end method

.method private calculatePath()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->radius:F

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPath:Landroid/graphics/Path;

    return-void
.end method

.method private calculateStrokePath()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->radius:F

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePath:Landroid/graphics/Path;

    return-void
.end method

.method private calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-direct {v0, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private hasFill()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasStroke()Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static modulateAlpha(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private updateColorsForState([I)Z
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v3, v3, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    invoke-static {v0, v2}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v3, v3, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    invoke-static {v1, v3}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->modulateAlpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->pathDirty:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->calculateStrokePath()V

    invoke-direct {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->calculatePath()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->pathDirty:Z

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->hasFill()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->hasStroke()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    return-object p0
.end method

.method public getFillColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public invalidateIgnoreCalculate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->pathDirty:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->pathDirty:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;-><init>(Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;)V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->pathDirty:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->updateColorsForState([I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->invalidateSelf()V

    :cond_0
    return p1
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    .line 4
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setFillColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 2
    iput-object p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iput p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->radius:F

    return-void
.end method

.method public setStroke(FI)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStroke(FLandroid/content/res/ColorStateList;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeWidth:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq v1, p2, :cond_1

    .line 3
    :cond_0
    iput p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeWidth:F

    .line 4
    iput-object p2, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->onStateChange([I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iput-object p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->invalidateIgnoreCalculate()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->drawableState:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iput-object p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->invalidateIgnoreCalculate()V

    return-void
.end method
