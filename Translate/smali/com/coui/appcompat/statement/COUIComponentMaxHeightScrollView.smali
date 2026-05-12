.class public final Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;
.super Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;
.source "SourceFile"


# instance fields
.field private isProtocolFixed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final isProtocolFixed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;->isProtocolFixed:Z

    return p0
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->getMaxHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->getMaxHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Lb9/d;->e(II)I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;->isProtocolFixed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/statement/R$dimen;->coui_component_bottom_sheet_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->onMeasure(II)V

    return-void
.end method

.method public final setProtocolFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;->isProtocolFixed:Z

    return-void
.end method
