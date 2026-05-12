.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/panel/COUIPanelPullUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getPanelPullUpListener()Lcom/coui/appcompat/panel/COUIPanelPullUpListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastPosition:I

.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->mLastPosition:I

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    return-void
.end method

.method public onDragging(II)I
    .locals 4

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lu2/e;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lu2/e;

    move-result-object p2

    invoke-virtual {p2}, Lu2/e;->g()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lu2/e;

    move-result-object p1

    invoke-virtual {p1}, Lu2/e;->k()Lu2/e;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I

    move-result p0

    return p0

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    const v0, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr p1, v0

    sub-float/2addr p2, p1

    float-to-int p1, p2

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I

    move-result p2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lx/a;->b(III)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I

    move-result p2

    if-eq p2, p1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p2, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5302(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)I

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I

    move-result p0

    return p0
.end method

.method public onDraggingPanel()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    return-void
.end method

.method public onOffsetChanged(F)V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->mLastPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->mLastPosition:I

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;->onDialogOffsetChanged(F)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getOutsideViewAlpha(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$4700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6002(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)F

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isSmallScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)F

    move-result v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isGestureNavigation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)V

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelBarView;

    move-result-object v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelBarView;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->mLastPosition:I

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelBarView;->setPanelOffset(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->mLastPosition:I

    :cond_5
    return-void
.end method

.method public onReleased(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanPullUp(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    return-void
.end method

.method public onReleasedDrag()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$24;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    return-void
.end method
