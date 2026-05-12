.class Lcom/coui/appcompat/panel/COUIGuideBehavior$3;
.super Landroidx/customview/widget/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIGuideBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIGuideBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/c$c;-><init>()V

    return-void
.end method

.method private releasedLow(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->parentHeight:I

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result p0

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v0

    if-gt p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p1, v2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$602(Lcom/coui/appcompat/panel/COUIGuideBehavior;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v0

    invoke-interface {p1, p3, v0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->onDragging(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {p3}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result p3

    sub-int/2addr p3, p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->hideable:Z

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->parentHeight:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    :goto_1
    invoke-static {p2, p3, p0}, Lx/a;->b(III)I

    move-result p0

    return p0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->hideable:Z

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->parentHeight:I

    return p0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    return p0
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$200(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setStateInternal(I)V

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->parentHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->onReleased(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/4 v2, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x3

    if-gez v1, :cond_3

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->fitToContentsOffset:I

    :goto_0
    move v3, v4

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    if-le p2, v0, :cond_2

    move p2, v0

    goto/16 :goto_3

    :cond_2
    iget p2, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->expandedOffset:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget-boolean v5, v1, Lcom/coui/appcompat/panel/COUIGuideBehavior;->hideable:Z

    if-eqz v5, :cond_a

    invoke-virtual {v1, p1, p3}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/coui/appcompat/panel/COUIPanelDragListener;->onDragWhileEditing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p3, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->fitToContentsOffset:I

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$502(Lcom/coui/appcompat/panel/COUIGuideBehavior;Z)Z

    move p2, p3

    goto :goto_0

    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_5

    const/high16 p2, 0x43fa0000    # 500.0f

    cmpl-float p2, p3, p2

    if-gtz p2, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->releasedLow(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p3, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->parentHeight:I

    invoke-static {p2, v2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$502(Lcom/coui/appcompat/panel/COUIGuideBehavior;Z)Z

    const/4 v3, 0x5

    move p2, p3

    goto/16 :goto_3

    :cond_7
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->fitToContentsOffset:I

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->expandedOffset:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_9

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->expandedOffset:I

    goto/16 :goto_0

    :cond_9
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    goto/16 :goto_3

    :cond_a
    cmpl-float v0, p3, v0

    const/4 v1, 0x4

    if-eqz v0, :cond_e

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_b

    goto :goto_2

    :cond_b
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    :goto_1
    move v3, v1

    goto/16 :goto_3

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_d

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    goto :goto_3

    :cond_d
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    goto :goto_1

    :cond_e
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p3}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->fitToContentsOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_f

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->fitToContentsOffset:I

    goto/16 :goto_0

    :cond_f
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    goto :goto_1

    :cond_10
    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    if-ge p2, v0, :cond_12

    iget p3, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_11

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->expandedOffset:I

    goto/16 :goto_0

    :cond_11
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    goto :goto_3

    :cond_12
    sub-int p3, p2, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_13

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    goto :goto_3

    :cond_13
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    goto/16 :goto_1

    :goto_3
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v1, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->state:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    iget-boolean v4, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->touchingScrollingChild:Z

    if-eqz v4, :cond_1

    return v2

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    iget v1, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->activePointerId:I

    if-ne v1, p2, :cond_3

    iget-object p2, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->this$0:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method
