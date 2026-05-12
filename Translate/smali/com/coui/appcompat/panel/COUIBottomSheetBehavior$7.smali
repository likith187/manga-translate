.class Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;
.super Landroidx/customview/widget/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/c$c;-><init>()V

    return-void
.end method

.method private releasedLow(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

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
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->onDraggingPanel()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    if-gt v0, v3, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$600(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Ld7/h;

    move-result-object v0

    invoke-virtual {v0}, Ld7/h;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Ld7/h;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ld7/h;->S(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$802(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$902(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Z)Z

    if-gez p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1300(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_2
    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    invoke-interface {v0, p3, v1}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->onDragging(II)I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$600(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    add-int/2addr v0, p3

    int-to-float p3, v0

    invoke-static {v1, p1, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1400(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;F)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1500(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)F

    move-result v1

    const v3, 0x461c4000    # 10000.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    int-to-float p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p2, v0

    :cond_5
    :goto_0
    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p3, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$300(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p1

    sub-int/2addr p1, v2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz p3, :cond_6

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    goto :goto_1

    :cond_6
    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    :goto_1
    invoke-static {p2, p1, p0}, Lx/a;->b(III)I

    move-result p0

    return p0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    return p0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    return p0
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$500(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$600(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Ld7/h;

    move-result-object v0

    invoke-virtual {v0}, Ld7/h;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Ld7/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Ld7/h;->S(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$802(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$902(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->onReleasedDrag()V

    instance-of v0, p1, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v4, v3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    invoke-static {v3, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1000(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    if-gt v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->onReleased(I)V

    return-void

    :cond_2
    cmpg-float v0, p3, v1

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x3

    if-gez v0, :cond_5

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    :goto_1
    move v4, v5

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    if-le p2, v0, :cond_4

    move p2, v0

    goto/16 :goto_5

    :cond_4
    iget p2, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-boolean v6, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    const/4 v7, 0x5

    if-eqz v6, :cond_c

    invoke-virtual {v0, p1, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/coui/appcompat/panel/COUIPanelDragListener;->onDragWhileEditing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p3, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {p2, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1202(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Z)Z

    move p2, p3

    goto :goto_1

    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_7

    const/high16 p2, 0x43fa0000    # 500.0f

    cmpl-float p2, p3, p2

    if-gtz p2, :cond_8

    :cond_7
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->releasedLow(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p3, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentRootViewHeight:I

    invoke-static {p2, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1202(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Z)Z

    move p2, p3

    :goto_2
    move v4, v7

    goto/16 :goto_5

    :cond_9
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_b

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    goto/16 :goto_1

    :cond_b
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    goto/16 :goto_5

    :cond_c
    cmpl-float v0, p3, v1

    const/4 v1, 0x4

    if-eqz v0, :cond_12

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_d

    goto :goto_4

    :cond_d
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object p3, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    if-eqz p3, :cond_f

    invoke-interface {p3}, Lcom/coui/appcompat/panel/COUIPanelDragListener;->onDragWhileEditing()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto/16 :goto_1

    :cond_e
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentRootViewHeight:I

    goto :goto_2

    :cond_f
    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    :goto_3
    move v4, v1

    goto/16 :goto_5

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_11

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    goto :goto_5

    :cond_11
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto :goto_3

    :cond_12
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p3

    if-eqz p3, :cond_14

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_13

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto/16 :goto_1

    :cond_13
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto :goto_3

    :cond_14
    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    if-ge p2, v0, :cond_16

    iget p3, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_15

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    goto/16 :goto_1

    :cond_15
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    goto :goto_5

    :cond_16
    sub-int p3, p2, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_17

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    goto :goto_5

    :cond_17
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto/16 :goto_3

    :goto_5
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    iget-boolean v4, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->touchingScrollingChild:Z

    if-eqz v4, :cond_1

    return v2

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    iget v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->activePointerId:I

    if-ne v1, p2, :cond_3

    iget-object p2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

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
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method
