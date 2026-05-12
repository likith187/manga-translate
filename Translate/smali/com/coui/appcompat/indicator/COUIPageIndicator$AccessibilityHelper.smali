.class Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;
.super Landroidx/customview/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field private final mExceptionVirtualBounds:Landroid/graphics/Rect;

.field private final mLocationOnScreen:[I

.field final synthetic this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-direct {p0, p2}, Landroidx/customview/widget/a;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->mExceptionVirtualBounds:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->mLocationOnScreen:[I

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getClickedDotIndex(FF)I

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
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getDotsCount()I

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

    if-ne p2, p3, :cond_1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1800(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1900(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1900(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;->onClick(I)V

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p1}, Landroidx/customview/widget/a;->invalidateVirtualView(I)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->access$000(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1600(Lcom/coui/appcompat/indicator/COUIPageIndicator;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v3}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->access$1700(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->access$1700(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;)Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILd0/h;)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1600(Lcom/coui/appcompat/indicator/COUIPageIndicator;)I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->access$1700(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    move-result-object v5

    invoke-static {v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->access$1700(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ld0/h;->l0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Ld0/h;->I0(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->mLocationOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v0, 0x10

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getDotsCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getDot(I)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorDotModel;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorDotModel;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorDotModel;->getBounds()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorDotModel;->getBounds()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    invoke-virtual {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorDotModel;->getBounds()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1}, Ld0/h;->c0(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->mLocationOnScreen:[I

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-virtual {v1, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p2, v1}, Ld0/h;->d0(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Ld0/h;->a(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal virtual view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " total dots count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->this$0:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/indicator/COUIPageIndicator;)Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getDotsCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "COUIPageIndicator"

    invoke-static {v1, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->mExceptionVirtualBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Ld0/h;->c0(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$AccessibilityHelper;->mExceptionVirtualBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Ld0/h;->d0(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Ld0/h;->a(I)V

    :goto_0
    return-void
.end method
