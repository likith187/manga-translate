.class Lcom/coui/appcompat/cardview/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/cardview/CardViewImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCardBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;
    .locals 0

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;

    return-object p0
.end method


# virtual methods
.method public getBackgroundColor(Lcom/coui/appcompat/cardview/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getCardBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public getMaxElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getCardBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->getPadding()F

    move-result p0

    return p0
.end method

.method public getMinHeight(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getRadius(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getMinWidth(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getRadius(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getRadius(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getCardBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->getRadius()F

    move-result p0

    return p0
.end method

.method public getWeight(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getCardBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->getWeight()F

    move-result p0

    return p0
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFFFF)V
    .locals 0

    new-instance p2, Lcom/coui/appcompat/cardview/RoundRectDrawable;

    invoke-direct {p2, p3, p4, p7, p8}, Lcom/coui/appcompat/cardview/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;FFF)V

    invoke-interface {p1, p2}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->setMaxElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public onCompatPaddingChanged(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getMaxElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->setMaxElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getMaxElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->setMaxElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setBackgroundColor(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getCardBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .locals 0

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getCardBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object v0

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->setPadding(FZZ)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->updatePadding(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getCardBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->setRadius(F)V

    return-void
.end method

.method public setWeight(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getCardBackground(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->setWeight(F)V

    return-void
.end method

.method public updatePadding(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .locals 4

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0, p0, p0, p0}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getMaxElevation(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->getRadius(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result p0

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, p0, v2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-interface {p1, v1, p0, v1, p0}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
