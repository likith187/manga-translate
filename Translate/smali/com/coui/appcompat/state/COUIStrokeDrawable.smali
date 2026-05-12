.class public Lcom/coui/appcompat/state/COUIStrokeDrawable;
.super Lcom/coui/appcompat/state/StatefulDrawable;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SPRING_BOUNCE:F = 0.0f

.field private static final DEFAULT_SPRING_RESPONSE:F = 0.3f

.field public static final TYPE_INNER:I = 0x1

.field public static final TYPE_OUTER:I


# instance fields
.field private mAnimateEnabled:Z

.field private final mClipPath:Landroid/graphics/Path;

.field private final mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

.field private mListener:Lcom/coui/appcompat/state/StatefulDrawableListener;

.field private mRadiusX:F

.field private mRadiusY:F

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private mStrokePath:Landroid/graphics/Path;

.field private mStrokeRect:Landroid/graphics/RectF;

.field private mStrokeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "COUIStrokeDrawable"

    invoke-direct {p0, v0}, Lcom/coui/appcompat/state/StatefulDrawable;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    iput-boolean v1, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mAnimateEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mListener:Lcom/coui/appcompat/state/StatefulDrawableListener;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->default_focus_stroke_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorFocusOutline:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    const-string v1, "focus"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringBounce(F)V

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringResponse(F)V

    iput v2, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokeType:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isDrawableEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokePath:Landroid/graphics/Path;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokeType:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokePath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokeRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokeRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mRadiusX:F

    iget v4, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mRadiusY:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokeType:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    iget-object v2, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v0

    sget-object v11, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    iget v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokeType:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_2
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_4
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateSelf()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mListener:Lcom/coui/appcompat/state/StatefulDrawableListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/state/StatefulDrawableListener;->onDrawableUpdate()V

    :cond_0
    return-void
.end method

.method public onViewStateChanged(I)V
    .locals 2

    const v0, 0x101009e

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v0, 0x101009c

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    const v1, 0x461c4000    # 10000.0f

    :cond_2
    iget-boolean p0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mAnimateEnabled:Z

    invoke-virtual {p1, v1, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_3
    return-void
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v0, Lcom/support/appcompat/R$attr;->couiColorFocusOutline:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setEndMaskColor(I)V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setAnimateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mAnimateEnabled:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDrawableEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coui/appcompat/state/StatefulDrawable;->setDrawableEnabled(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_0
    return-void
.end method

.method public setFocusStateLocked(ZZZ)V
    .locals 1

    const v0, 0x101009c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/coui/appcompat/state/COUIStrokeDrawable;->setStateLocked(IZZZ)V

    return-void
.end method

.method public setStateLocked(IZZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/state/StatefulDrawable;->setStateLocked(IZZZ)V

    const p2, 0x101009c

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    if-eqz p3, :cond_0

    const p1, 0x461c4000    # 10000.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_1
    return-void
.end method

.method public setStatefulDrawableListener(Lcom/coui/appcompat/state/StatefulDrawableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mListener:Lcom/coui/appcompat/state/StatefulDrawableListener;

    return-void
.end method

.method public setStrokePath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokePath:Landroid/graphics/Path;

    return-void
.end method

.method public setStrokeRect(Landroid/graphics/RectF;FF)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokeRect:Landroid/graphics/RectF;

    iput p2, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mRadiusX:F

    iput p3, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mRadiusY:F

    return-void
.end method

.method public setStrokeType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/state/COUIStrokeDrawable;->mStrokeType:I

    return-void
.end method
