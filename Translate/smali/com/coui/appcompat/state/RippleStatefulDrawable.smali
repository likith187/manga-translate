.class public abstract Lcom/coui/appcompat/state/RippleStatefulDrawable;
.super Landroid/graphics/drawable/RippleDrawable;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/state/DrawableStateProxy;
.implements Lcom/coui/appcompat/state/IStateEffect;


# instance fields
.field protected final mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-direct {v0, p1, p0}, Lcom/coui/appcompat/state/DrawableStateManager;-><init>(Ljava/lang/String;Lcom/coui/appcompat/state/DrawableStateProxy;)V

    iput-object v0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    return-void
.end method


# virtual methods
.method public final getTouchType()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->getTouchType()I

    move-result p0

    return p0
.end method

.method public isDrawableEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->isDrawableEnabled()Z

    move-result p0

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final isFocused()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->isFocused()Z

    move-result p0

    return p0
.end method

.method public final isHovered()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->isHovered()Z

    move-result p0

    return p0
.end method

.method public isNativeStateEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/DrawableStateManager;->isNativeStateEnabled(I)Z

    move-result p0

    return p0
.end method

.method public final isPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->isPressed()Z

    move-result p0

    return p0
.end method

.method public final isSelected()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->isSelected()Z

    move-result p0

    return p0
.end method

.method public isStateLocked(I)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/DrawableStateManager;->isStateLocked(I)Z

    move-result p0

    return p0
.end method

.method public final isStateful()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->isStateful()Z

    move-result p0

    return p0
.end method

.method public final isTouchEntered()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->isTouchEntered()Z

    move-result p0

    return p0
.end method

.method public setDrawableEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/DrawableStateManager;->setDrawableEnabled(Z)V

    return-void
.end method

.method public final setFocusEntered()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->setFocusEntered()V

    return-void
.end method

.method public final setFocusExited()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->setFocusExited()V

    return-void
.end method

.method public final setHoverEntered()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->setHoverEntered()V

    return-void
.end method

.method public final setHoverExited()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->setHoverExited()V

    return-void
.end method

.method public setNativeStateEnabled(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/state/DrawableStateManager;->setNativeStateEnabled(IZ)V

    return-void
.end method

.method public final setSelectedEntered()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->setSelectedEntered()V

    return-void
.end method

.method public final setSelectedExited()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->setSelectedExited()V

    return-void
.end method

.method public setStateLocked(IZZZ)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/state/DrawableStateManager;->setStateLocked(IZZZ)V

    return-void
.end method

.method public final setTouchEntered()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->setTouchEntered()V

    return-void
.end method

.method public final setTouchExited()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->setTouchExited()V

    return-void
.end method

.method public final setTouchSelectEntered()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->setTouchSelectEntered()V

    return-void
.end method

.method public final setTouchSelectExited()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/RippleStatefulDrawable;->mDrawableStateManager:Lcom/coui/appcompat/state/DrawableStateManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->setTouchSelectExited()V

    return-void
.end method
