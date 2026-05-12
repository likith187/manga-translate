.class public Lcom/coui/appcompat/panel/COUIMaxHeightDraggableVerticalLinearLayout;
.super Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;
.source "SourceFile"


# instance fields
.field private mLayoutWindowVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p0

    return p0
.end method

.method public layoutAtMaxHeight()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIMaxHeightDraggableVerticalLinearLayout;->getMaxHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/panel/COUIMaxHeightDraggableVerticalLinearLayout;->mLayoutWindowVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/panel/COUIMaxHeightDraggableVerticalLinearLayout;->mLayoutWindowVisibility:I

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method
