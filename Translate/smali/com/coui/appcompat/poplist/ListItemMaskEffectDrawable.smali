.class public Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;
.super Lcom/coui/appcompat/state/COUIMaskEffectDrawable;
.source "SourceFile"


# instance fields
.field public mChild:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

.field public mParent:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->mChild:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->mParent:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    if-nez p3, :cond_0

    new-instance p3, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    invoke-direct {p3, p1, p2, p0}, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;-><init>(Landroid/content/Context;ILcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;)V

    iput-object p3, p0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->mChild:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->mParent:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setIsRoundStyle(Z)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->enableFocusedState(Z)V

    return-void
.end method

.method private notifyTouchEntered()V
    .locals 0

    invoke-super {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->setTouchEntered()V

    return-void
.end method

.method private notifyTouchExited()V
    .locals 0

    invoke-super {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->setTouchExited()V

    return-void
.end method


# virtual methods
.method public getChild()Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->mChild:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    return-object p0
.end method

.method public setTouchEntered()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->mChild:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->notifyTouchEntered()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->mParent:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    if-eqz v0, :cond_1

    invoke-direct {v0}, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->notifyTouchEntered()V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->notifyTouchEntered()V

    return-void
.end method

.method public setTouchExited()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->mChild:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->notifyTouchExited()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->mParent:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    if-eqz v0, :cond_1

    invoke-direct {v0}, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->notifyTouchExited()V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->notifyTouchExited()V

    return-void
.end method
