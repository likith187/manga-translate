.class final Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-direct {p0, p2}, Landroidx/customview/widget/a;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/customview/widget/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V

    sget-object p1, Ld0/h$a;->L:Ld0/h$a;

    invoke-virtual {p2, p1}, Ld0/h;->b(Ld0/h$a;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMax()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    iget v1, v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, p1, v0, v1}, Ld0/h$g;->a(IFFF)Ld0/h$g;

    move-result-object p1

    invoke-virtual {p2, p1}, Ld0/h;->z0(Ld0/h$g;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v0

    if-le p1, v0, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Ld0/h;->a(I)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMax()I

    move-result p0

    if-ge p1, p0, :cond_1

    const/16 p0, 0x1000

    invoke-virtual {p2, p0}, Ld0/h;->a(I)V

    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/a;->sendEventForVirtualView(II)Z

    const/4 p0, 0x0

    return p0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-class p1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMax()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getProgress()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILd0/h;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ld0/h;->l0(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ld0/h;->h0(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld0/h;->c0(Landroid/graphics/Rect;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/16 p1, 0x1000

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getProgress()I

    move-result p2

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$300(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2, v0, p3}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setProgress(IZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$400(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return p3

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getProgress()I

    move-result p2

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$300(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v0, p3}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setProgress(IZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$400(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return p3
.end method
