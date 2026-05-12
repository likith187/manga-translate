.class public Lcom/coui/appcompat/state/COUIMaskRippleDrawable;
.super Lcom/coui/appcompat/state/RippleStatefulDrawable;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SPRING_BOUNCE:F = 0.0f

.field private static final DEFAULT_SPRING_RESPONSE:F = 0.3f

.field private static final PRESS_ENTERED_STATE_SET:[I

.field private static final PRESS_EXITED_STATE_SET:[I

.field public static final RIPPLE_MASK_TYPE_CIRCLE:I = 0x0

.field public static final RIPPLE_MASK_TYPE_CUSTOM_PATH:I = 0x1

.field private static final RIPPLE_RADIUS_AUTO:I = -0x1

.field public static final RIPPLE_TYPE_CHECKBOX_RADIUS:I = 0x1

.field public static final RIPPLE_TYPE_ICON_RADIUS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "COUIMaskRippleDrawable"

.field private static final U:I = 0x22


# instance fields
.field private mAnimateEnabled:Z

.field private final mClipPath:Landroid/graphics/Path;

.field private final mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

.field private final mHostBounds:Landroid/graphics/Rect;

.field private final mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

.field private mMaskPath:Landroid/graphics/Path;

.field private mMaskRadiusX:F

.field private mMaskRadiusY:F

.field private mMaskRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mRippleMaskType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x10100a7

    const v1, 0x101009e

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->PRESS_ENTERED_STATE_SET:[I

    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->PRESS_EXITED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "COUIMaskRippleDrawable"

    invoke-direct {p0, v0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mClipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mAnimateEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRadiusX:F

    iput v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRadiusY:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mHostBounds:Landroid/graphics/Rect;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPress:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    sget v1, Lcom/support/appcompat/R$attr;->couiColorRipplePressBackground:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setCircleRippleMask(I)V

    new-instance v2, Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v3, Lcom/support/appcompat/R$attr;->couiColorHover:I

    invoke-static {p1, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v3

    const-string v4, "hover"

    invoke-direct {v2, p0, v4, v1, v3}, Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    new-instance v3, Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v4, Lcom/support/appcompat/R$attr;->couiColorFocus:I

    invoke-static {p1, v4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    const-string v4, "focus"

    invoke-direct {v3, p0, v4, v1, p1}, Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    iput-object v3, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringBounce(F)V

    const p0, 0x3e99999a    # 0.3f

    invoke-virtual {v2, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringResponse(F)V

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringBounce(F)V

    invoke-virtual {v3, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->setSpringResponse(F)V

    return-void
.end method

.method private clipPathOrRect(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRadiusX:F

    iget v3, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRadiusY:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

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

    div-float v9, v1, v2

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mClipPath:Landroid/graphics/Path;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :goto_0
    return-void
.end method

.method private drawPathOrRect(Landroid/graphics/Canvas;)V
    .locals 11

    iget v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mRippleMaskType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRadiusX:F

    iget v2, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRadiusY:F

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

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

    div-float v9, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget-object v10, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static getMaskRippleRadiusByType(Landroid/content/Context;I)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->icon_ripple_bg_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->checkbox_ripple_bg_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_1
    const-string p0, "COUIMaskRippleDrawable"

    const-string p1, "wrong mask type!"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private setRadiusCompat(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->isDrawableEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mRippleMaskType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->clipPathOrRect(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->drawPathOrRect(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->getCurrentMaskColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->drawPathOrRect(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget p0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mRippleMaskType:I

    if-ne p0, v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/DrawableStateManager;->onStateChange([I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onViewStateChanged(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const v1, 0x461c4000    # 10000.0f

    const v2, 0x101009c

    if-ne p1, v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->isStateLocked(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iget-boolean p0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mAnimateEnabled:Z

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    goto :goto_1

    :cond_2
    const v2, 0x1010367

    if-ne p1, v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->isStateLocked(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    iget-boolean p0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mAnimateEnabled:Z

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    goto :goto_1

    :cond_4
    const v0, 0x10100a7

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->isPressed()Z

    move-result p1

    const v0, -0x101009e

    const v1, 0x101009e

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    sget-object p1, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->PRESS_ENTERED_STATE_SET:[I

    invoke-virtual {p0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :cond_5
    aput v0, p1, v2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->PRESS_EXITED_STATE_SET:[I

    invoke-virtual {p0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    :cond_7
    aput v0, p1, v2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_8
    :goto_1
    return-void
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorHover:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setEndMaskColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorFocus:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setEndMaskColor(I)V

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPress:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    sget v0, Lcom/support/appcompat/R$attr;->couiColorRipplePressBackground:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    return-void
.end method

.method public setAnimateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mAnimateEnabled:Z

    return-void
.end method

.method public setCircleRippleMask(I)V
    .locals 1

    if-gez p1, :cond_0

    const-string p0, "COUIMaskRippleDrawable"

    const-string p1, "radius should larger than 0!"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mRippleMaskType:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setRadiusCompat(I)V

    iput p1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mRadius:I

    return-void
.end method

.method public setCustomRippleMask()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mRippleMaskType:I

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setRadiusCompat(I)V

    return-void
.end method

.method public setFocusStateLocked(ZZZ)V
    .locals 1

    const v0, 0x101009c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setStateLocked(IZZZ)V

    return-void
.end method

.method public setHoverStateLocked(ZZZ)V
    .locals 1

    const v0, 0x1010367

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setStateLocked(IZZZ)V

    return-void
.end method

.method public setMaskPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskPath:Landroid/graphics/Path;

    return-void
.end method

.method public setMaskRect(Landroid/graphics/RectF;FF)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRect:Landroid/graphics/RectF;

    iput p2, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRadiusX:F

    iput p3, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mMaskRadiusY:F

    return-void
.end method

.method public setStateLocked(IZZZ)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->setStateLocked(IZZZ)V

    const p2, 0x10100a7

    if-ne p1, p2, :cond_0

    const-string p2, "COUIMaskRippleDrawable"

    const-string v0, "Lock state press in COUIMaskRippleDrawable is not allowed!"

    invoke-static {p2, v0}, Lcom/coui/appcompat/log/COUILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const p2, 0x1010367

    const/4 v0, 0x0

    const v1, 0x461c4000    # 10000.0f

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mHoverAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    if-eqz p3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p2, v2, p4}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_2
    const p2, 0x101009c

    if-ne p1, p2, :cond_4

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->mFocusAnimator:Lcom/coui/appcompat/state/StateEffectAnimator;

    if-eqz p3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v0, p4}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_4
    return-void
.end method
