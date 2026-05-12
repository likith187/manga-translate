.class Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;
.super Landroidx/customview/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-direct {p0, p2}, Landroidx/customview/widget/a;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1400(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->getClickedDotIndex(FF)I

    move-result p0

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
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1400(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->getDotsCount()I

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
    .locals 0

    const/16 p3, 0x10

    if-ne p2, p3, :cond_0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1600(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1600(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;->onClick(I)V

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p1}, Landroidx/customview/widget/a;->invalidateVirtualView(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onPopulateNodeForVirtualView(ILd0/h;)V
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1400(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->getDotsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-static {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->access$1400(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->getDot(I)Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string p0, ""

    invoke-virtual {p2, p0}, Ld0/h;->I0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Ld0/h;->l0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Ld0/h;->c0(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
