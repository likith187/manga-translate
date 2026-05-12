.class public Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;
.super Lcom/coui/appcompat/scrollview/COUINestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;
    }
.end annotation


# instance fields
.field private mConfigChangeListener:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;

.field private mMinHeight:I

.field private maxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/support/scrollview/R$styleable;->COUIMaxHeightScrollView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/support/scrollview/R$styleable;->COUIMaxHeightScrollView_scrollViewMaxHeight:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->maxHeight:I

    .line 6
    sget p2, Lcom/support/scrollview/R$styleable;->COUIMaxHeightScrollView_scrollViewMinHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->mMinHeight:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->mConfigChangeListener:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;->onChange()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->mMinHeight:I

    if-lez v0, :cond_0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->maxHeight:I

    if-lez v0, :cond_1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->maxHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    :cond_2
    return-void
.end method

.method public setConfigChangeListener(Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->mConfigChangeListener:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->maxHeight:I

    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$1;-><init>(Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->requestLayout()V

    :goto_0
    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->mMinHeight:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->requestLayout()V

    return-void
.end method
