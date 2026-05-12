.class public Lcom/coui/appcompat/state/COUIStateEffectDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/state/IStateEffect;


# static fields
.field private static final TAG:Ljava/lang/String; = "StateEffectDrawable"


# instance fields
.field private mEnableScaleEffect:Z

.field private mEnabled:Z

.field private mScaleHelper:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mEnabled:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mEnableScaleEffect:Z

    return-void
.end method


# virtual methods
.method public disableScaleEffect()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mEnableScaleEffect:Z

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mScaleHelper:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->setTargetView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public enableScaleEffect(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->enableScaleEffect(Landroid/view/View;I)V

    return-void
.end method

.method public enableScaleEffect(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mEnableScaleEffect:Z

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mScaleHelper:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-direct {v0, p1, p2}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mScaleHelper:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->setTargetView(Landroid/view/View;)V

    .line 6
    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mScaleHelper:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->setViewType(I)V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onStateChange([I)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    const v4, 0x101009e

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    iget-boolean v2, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mEnabled:Z

    if-eq v0, v2, :cond_3

    iput-boolean v0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mScaleHelper:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->reset()V

    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/state/IStateEffect;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/coui/appcompat/state/IStateEffect;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/state/IStateEffect;->refresh(Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/state/IStateEffect;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/coui/appcompat/state/IStateEffect;

    invoke-interface {v1}, Lcom/coui/appcompat/state/IStateEffect;->reset()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAnimateEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/state/IStateEffect;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/coui/appcompat/state/IStateEffect;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/state/IStateEffect;->setAnimateEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFocused(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    check-cast v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {v1}, Lcom/coui/appcompat/state/DrawableStateProxy;->setFocusEntered()V

    goto :goto_1

    :cond_0
    check-cast v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {v1}, Lcom/coui/appcompat/state/DrawableStateProxy;->setFocusExited()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setHovered(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    check-cast v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {v1}, Lcom/coui/appcompat/state/DrawableStateProxy;->setHoverEntered()V

    goto :goto_1

    :cond_0
    check-cast v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {v1}, Lcom/coui/appcompat/state/DrawableStateProxy;->setHoverExited()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setStateLocked(IZZZ)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/coui/appcompat/state/DrawableStateProxy;->setStateLocked(IZZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTouchSelected(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    check-cast v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {v1}, Lcom/coui/appcompat/state/DrawableStateProxy;->setTouchSelectEntered()V

    goto :goto_1

    :cond_0
    check-cast v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {v1}, Lcom/coui/appcompat/state/DrawableStateProxy;->setTouchSelectExited()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setTouched(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    check-cast v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {v1}, Lcom/coui/appcompat/state/DrawableStateProxy;->setTouchEntered()V

    goto :goto_1

    :cond_0
    check-cast v1, Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {v1}, Lcom/coui/appcompat/state/DrawableStateProxy;->setTouchExited()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mEnableScaleEffect:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->mScaleHelper:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    :cond_3
    return-void
.end method

.method public setViewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-ne p1, p0, :cond_0

    const-string p0, "StateEffectDrawable"

    const-string p1, "Set view background failed! Should not set LayerDrawable itself as its child recusively!"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    return-void
.end method
