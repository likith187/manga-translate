.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->doMarginBottomAnim(Landroid/view/View;IZILandroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;

.field final synthetic val$bottomDesignSheetOrPanelContentLayout:Landroid/view/View;

.field final synthetic val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$maxMargin:I

.field final synthetic val$offset:I

.field final synthetic val$panelContentLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;IILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$bottomDesignSheetOrPanelContentLayout:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$offset:I

    iput p4, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$maxMargin:I

    iput-object p5, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$panelContentLayout:Landroid/view/View;

    iput-object p6, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$bottomDesignSheetOrPanelContentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$offset:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$maxMargin:I

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$panelContentLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    sub-int/2addr p1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, v2, v2, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    move p1, v0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->val$bottomDesignSheetOrPanelContentLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
