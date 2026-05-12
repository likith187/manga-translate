.class public Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;
.super Landroidx/customview/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;
    }
.end annotation


# static fields
.field private static final VIEW_LOG_TAG:Ljava/lang/String; = "COUIViewExplorerByTouchHelper"


# instance fields
.field private mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

.field private mHostView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/customview/widget/a;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    iput-object p1, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    return-void
.end method

.method private getItemBounds(ILandroid/graphics/Rect;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getItemCounts()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getItemBounds(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 3

    invoke-virtual {p0}, Landroidx/customview/widget/a;->getFocusedVirtualView()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/customview/widget/a;->getAccessibilityNodeProvider(Landroid/view/View;)Ld0/i;

    move-result-object p0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ld0/i;->f(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method protected getVirtualViewAt(FF)I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getVirtualViewAt(FF)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v1}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getItemCounts()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 p3, 0x0

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    return p3

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {p0, p1, v0, p3}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->performAction(IIZ)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILd0/h;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ld0/h;->l0(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ld0/h;->c0(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ld0/h;->h0(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Ld0/h;->a(I)V

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getCurrentPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ld0/h;->D0(Z)V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {p0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getDisablePosition()I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ld0/h;->n0(Z)V

    :cond_2
    return-void
.end method

.method public setCOUIViewTalkBalkInteraction(Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/customview/widget/a;->getAccessibilityNodeProvider(Landroid/view/View;)Ld0/i;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ld0/i;->f(IILandroid/os/Bundle;)Z

    return-void
.end method
