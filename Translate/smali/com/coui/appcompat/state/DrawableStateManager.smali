.class public final Lcom/coui/appcompat/state/DrawableStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/state/DrawableStateProxy;


# instance fields
.field private final STATE_MAP:Landroid/util/SparseIntArray;

.field private final TAG:Ljava/lang/String;

.field private final mCallback:Lcom/coui/appcompat/state/DrawableStateProxy;

.field private mDrawableEnabled:Z

.field private mNativeStateDisabledFlag:I

.field mStateFlag:I

.field mStateLockedFlag:I

.field private mTouchType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coui/appcompat/state/DrawableStateProxy;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mTouchType:I

    iput v1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mNativeStateDisabledFlag:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mDrawableEnabled:Z

    iput v1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iput v1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateLockedFlag:I

    iput-object p1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mCallback:Lcom/coui/appcompat/state/DrawableStateProxy;

    const p0, 0x101009c

    const/4 p1, 0x2

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const p0, 0x1010367

    const/4 p1, 0x4

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    const p0, 0x10100a1

    const/16 p1, 0x8

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const p0, 0x10100a7

    const/16 p1, 0x10

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const p0, 0x101009e

    const/16 p1, 0x20

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private checkOnViewStateChanged([II)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget p1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    :cond_2
    if-nez v1, :cond_4

    iget p1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    :cond_3
    invoke-direct {p0, p2, v1}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    :cond_4
    return-void
.end method

.method private getTouchTypeName()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mTouchType:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "selected"

    return-object p0

    :cond_1
    const-string p0, "pressed"

    return-object p0
.end method

.method private notifyStateChanged(IZ)V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object v1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const-string v2, "state "

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object v3, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/DrawableStateManager;->getStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v1, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object v3, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object v3, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-eqz p2, :cond_4

    or-int/2addr v0, v3

    goto :goto_1

    :cond_4
    not-int v3, v3

    and-int/2addr v0, v3

    :goto_1
    iput v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/DrawableStateManager;->onViewStateChanged(I)V

    iget-object v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/DrawableStateManager;->getStateName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " changed from "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStateName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :sswitch_0
    const-string p0, "hovered"

    return-object p0

    :sswitch_1
    const-string p0, "pressed"

    return-object p0

    :sswitch_2
    const-string p0, "selected"

    return-object p0

    :sswitch_3
    const-string p0, "enabled"

    return-object p0

    :sswitch_4
    const-string p0, "focused"

    return-object p0

    :sswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "touch entered #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/coui/appcompat/state/DrawableStateManager;->getTouchTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x101009c -> :sswitch_4
        0x101009e -> :sswitch_3
        0x10100a1 -> :sswitch_2
        0x10100a7 -> :sswitch_1
        0x1010367 -> :sswitch_0
    .end sparse-switch
.end method

.method public getTouchType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mTouchType:I

    return p0
.end method

.method public isDrawableEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mDrawableEnabled:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    const v1, 0x101009e

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFocused()Z
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    const v1, 0x101009c

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHovered()Z
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    const v1, 0x1010367

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNativeStateEnabled(I)Z
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mNativeStateDisabledFlag:I

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPressed()Z
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    const v1, 0x10100a7

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelected()Z
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    const v1, 0x10100a1

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStateLocked(I)Z
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateLockedFlag:I

    iget-object p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTouchEntered()Z
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateFlag:I

    iget-object p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onStateChange([I)V
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->isNativeStateEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x101009e

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->checkOnViewStateChanged([II)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->isNativeStateEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x101009c

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->checkOnViewStateChanged([II)V

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->isNativeStateEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1010367

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->checkOnViewStateChanged([II)V

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->isNativeStateEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x10100a1

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->checkOnViewStateChanged([II)V

    :cond_3
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->isNativeStateEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x10100a7

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->checkOnViewStateChanged([II)V

    :cond_4
    return-void
.end method

.method public onViewStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mCallback:Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/state/DrawableStateProxy;->onViewStateChanged(I)V

    return-void
.end method

.method public setDrawableEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mDrawableEnabled:Z

    return-void
.end method

.method public setFocusEntered()V
    .locals 2

    const v0, 0x101009c

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    return-void
.end method

.method public setFocusExited()V
    .locals 2

    const v0, 0x101009c

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    return-void
.end method

.method public setHoverEntered()V
    .locals 2

    const v0, 0x1010367

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    return-void
.end method

.method public setHoverExited()V
    .locals 2

    const v0, 0x1010367

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    return-void
.end method

.method public setNativeStateEnabled(IZ)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->TAG:Ljava/lang/String;

    const-string p1, "wrong state flag"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget p2, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mNativeStateDisabledFlag:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mNativeStateDisabledFlag:I

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mNativeStateDisabledFlag:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mNativeStateDisabledFlag:I

    :goto_1
    return-void
.end method

.method public setSelectedEntered()V
    .locals 2

    const v0, 0x10100a1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    return-void
.end method

.method public setSelectedExited()V
    .locals 2

    const v0, 0x10100a1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    return-void
.end method

.method public setStateLocked(IZZZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateLockedFlag:I

    iget-object p3, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateLockedFlag:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateLockedFlag:I

    iget-object p3, p0, Lcom/coui/appcompat/state/DrawableStateManager;->STATE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mStateLockedFlag:I

    :goto_0
    return-void
.end method

.method public setTouchEntered()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mTouchType:I

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    return-void
.end method

.method public setTouchExited()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mTouchType:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    return-void
.end method

.method public setTouchSelectEntered()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mTouchType:I

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    return-void
.end method

.method public setTouchSelectExited()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/state/DrawableStateManager;->mTouchType:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/state/DrawableStateManager;->notifyStateChanged(IZ)V

    return-void
.end method
