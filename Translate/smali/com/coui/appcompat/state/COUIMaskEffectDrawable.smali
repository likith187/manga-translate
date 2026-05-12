.class public Lcom/coui/appcompat/state/COUIMaskEffectDrawable;
.super Lcom/coui/appcompat/state/StatefulDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/state/COUIMaskEffectDrawable$MaskEffectType;
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_PROGRESS_FOR_TOUCH_ENTER_ANIMATION:F = 0.7f

.field public static final DEFAULT_SPRING_BOUNCE:F = 0.0f

.field public static final DEFAULT_SPRING_RESPONSE:F = 0.3f

.field public static final MASK_EFFECT_TYPE_CONTAINER_WIDGET:I = 0x1

.field public static final MASK_EFFECT_TYPE_WIDGET_WITH_BACKGROUND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "COUIMaskEffectDrawable"


# instance fields
.field private mAnimateEnabled:Z

.field private mEnableFocusedState:Z

.field private mEnableSelectedState:Z

.field private final mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

.field private final mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

.field private mListener:Lcom/coui/appcompat/state/StatefulDrawableListener;

.field private mMaskPath:Landroid/graphics/Path;

.field private mMaskRadiusX:F

.field private mMaskRadiusY:F

.field private mMaskRect:Landroid/graphics/RectF;

.field private mMaskType:I

.field private mMinProgressForTouchEnterAnimation:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

.field private mRoundStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const-string v0, "COUIMaskEffectDrawable"

    invoke-direct {p0, v0}, Lcom/coui/appcompat/state/StatefulDrawable;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mAnimateEnabled:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mEnableSelectedState:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mEnableFocusedState:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mRoundStyle:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskRadiusX:F

    iput v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskRadiusY:F

    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMinProgressForTouchEnterAnimation:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mListener:Lcom/coui/appcompat/state/StatefulDrawableListener;

    iput p2, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskType:I

    new-instance p2, Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorHover:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    const-string v2, "hover"

    const/4 v3, 0x0

    invoke-direct {p2, p0, v2, v3, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    new-instance v1, Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v2, Lcom/support/appcompat/R$attr;->couiColorFocus:I

    invoke-static {p1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    const-string v4, "focus"

    invoke-direct {v1, p0, v4, v3, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    new-instance v2, Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v4, Lcom/support/appcompat/R$attr;->couiColorPress:I

    invoke-static {p1, v4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    const-string v4, "press"

    invoke-direct {v2, p0, v4, v3, p1}, Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const p0, 0x3e99999a    # 0.3f

    invoke-virtual {p2, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringResponse(F)V

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringBounce(F)V

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringResponse(F)V

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringBounce(F)V

    invoke-virtual {v2, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringResponse(F)V

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringBounce(F)V

    return-void
.end method

.method private drawContainerWidgetType(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->drawPathOrRect(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->drawPathOrRect(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->drawPathOrRect(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private drawPathOrRect(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskRadiusX:F

    iget v2, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskRadiusY:F

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mRoundStyle:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v9, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method private drawWidgetWithBackgroundType(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->drawPathOrRect(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->drawPathOrRect(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isDrawableEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->drawContainerWidgetType(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->drawWidgetWithBackgroundType(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public enableFocusedState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mEnableFocusedState:Z

    return-void
.end method

.method public enableSelectedState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mEnableSelectedState:Z

    return-void
.end method

.method public getCompositeMaskColor()I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v1

    invoke-static {v0, v1}, Lu/d;->o(II)I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result p0

    invoke-static {p0, v0}, Lu/d;->o(II)I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateSelf()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mListener:Lcom/coui/appcompat/state/StatefulDrawableListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/state/StatefulDrawableListener;->onDrawableUpdate()V

    :cond_0
    return-void
.end method

.method public onViewStateChanged(I)V
    .locals 5

    const v0, 0x101009e

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p1, v2, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p1, v2, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0, v2, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v0, 0x461c4000    # 10000.0f

    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/state/StatefulDrawable;->isStateLocked(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->getTouchType()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isTouchEntered()Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v0

    :cond_3
    invoke-virtual {p1, v2, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isTouchEntered()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0, v0, v3}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    iget p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMinProgressForTouchEnterAnimation:F

    mul-float/2addr p0, v0

    invoke-virtual {p1, v2, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgressUntil(FF)V

    goto :goto_0

    :cond_6
    const v1, 0x1010367

    if-ne p1, v1, :cond_8

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/StatefulDrawable;->isStateLocked(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isHovered()Z

    move-result v1

    if-eqz v1, :cond_7

    move v2, v0

    :cond_7
    iget-boolean p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mAnimateEnabled:Z

    invoke-virtual {p1, v2, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    goto :goto_0

    :cond_8
    iget-boolean v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mEnableFocusedState:Z

    if-eqz v1, :cond_a

    const v1, 0x101009c

    if-ne p1, v1, :cond_a

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/StatefulDrawable;->isStateLocked(I)Z

    move-result v1

    if-nez v1, :cond_a

    iget p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskType:I

    if-ne p1, v3, :cond_c

    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_9

    move v2, v0

    :cond_9
    iget-boolean p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mAnimateEnabled:Z

    invoke-virtual {p1, v2, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    goto :goto_0

    :cond_a
    iget-boolean v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mEnableSelectedState:Z

    if-eqz v1, :cond_c

    const v1, 0x10100a1

    if-ne p1, v1, :cond_c

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/StatefulDrawable;->isStateLocked(I)Z

    move-result p1

    if-nez p1, :cond_c

    iget p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskType:I

    if-ne p1, v3, :cond_c

    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v0

    :cond_b
    iget-boolean p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mAnimateEnabled:Z

    invoke-virtual {p1, v2, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_c
    :goto_0
    return-void
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorHover:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setEndMaskColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorFocus:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setEndMaskColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPress:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setEndMaskColor(I)V

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setAnimateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mAnimateEnabled:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDrawableEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coui/appcompat/state/StatefulDrawable;->setDrawableEnabled(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_0
    return-void
.end method

.method public setFocusStateLocked(ZZZ)V
    .locals 1

    const v0, 0x101009c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setStateLocked(IZZZ)V

    return-void
.end method

.method public setHoverStateLocked(ZZZ)V
    .locals 1

    const v0, 0x1010367

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setStateLocked(IZZZ)V

    return-void
.end method

.method public setIsRoundStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mRoundStyle:Z

    return-void
.end method

.method public setMaskPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskPath:Landroid/graphics/Path;

    return-void
.end method

.method public setMaskRect(Landroid/graphics/RectF;FF)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskRect:Landroid/graphics/RectF;

    iput p2, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskRadiusX:F

    iput p3, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskRadiusY:F

    return-void
.end method

.method public setMaskType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMaskType:I

    return-void
.end method

.method public setMinProgressForTouchEnterAnimation(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mMinProgressForTouchEnterAnimation:F

    return-void

    :cond_1
    :goto_0
    const-string p0, "COUIMaskEffectDrawable"

    const-string p1, "Touch enter min progress should be within range [0, 1]"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStateLocked(IZZZ)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/state/StatefulDrawable;->setStateLocked(IZZZ)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    const v1, 0x461c4000    # 10000.0f

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mPressAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p2, v2, p4}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_1
    const p2, 0x1010367

    if-ne p1, p2, :cond_3

    iget-object p2, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    if-eqz p3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {p2, v2, p4}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_3
    const p2, 0x101009c

    if-ne p1, p2, :cond_5

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    if-eqz p3, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0, p4}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_5
    return-void
.end method

.method public setStatefulDrawableListener(Lcom/coui/appcompat/state/StatefulDrawableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->mListener:Lcom/coui/appcompat/state/StatefulDrawableListener;

    return-void
.end method

.method public setTouchEnterStateLocked(ZZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setStateLocked(IZZZ)V

    return-void
.end method
