.class Lcom/coui/appcompat/cardview/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/cardview/CardViewImpl;


# instance fields
.field private final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;
    .locals 6

    new-instance p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object p0
.end method

.method private getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;
    .locals 0

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    return-object p0
.end method


# virtual methods
.method public getBackgroundColor(Lcom/coui/appcompat/cardview/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result p0

    return p0
.end method

.method public getMaxElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result p0

    return p0
.end method

.method public getMinHeight(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result p0

    return p0
.end method

.method public getMinWidth(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result p0

    return p0
.end method

.method public getRadius(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result p0

    return p0
.end method

.method public getWeight(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initStatic()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/cardview/CardViewBaseImpl$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/cardview/CardViewBaseImpl$1;-><init>(Lcom/coui/appcompat/cardview/CardViewBaseImpl;)V

    invoke-static {v0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->setRoundRectHelper(Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow$RoundRectHelper;)V

    return-void
.end method

.method public initialize(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFFFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p2

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    invoke-interface {p1, p2}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->updatePadding(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void
.end method

.method public onCompatPaddingChanged(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .locals 0

    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->updatePadding(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->setShadowSize(F)V

    return-void
.end method

.method public setMaxElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->updatePadding(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->updatePadding(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setWeight(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .locals 0

    return-void
.end method

.method public updatePadding(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getShadowBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getMinWidth(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->getMinHeight(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-interface {p1, v1, p0}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setMinWidthHeightInternal(II)V

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
