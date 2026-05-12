.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->doSpringBackReboundAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lu2/e;)V
    .locals 0

    return-void
.end method

.method public onSpringAtRest(Lu2/e;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5302(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)I

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanPullUp(Z)V

    return-void
.end method

.method public onSpringEndStateChange(Lu2/e;)V
    .locals 0

    return-void
.end method

.method public onSpringUpdate(Lu2/e;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lu2/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lu2/e;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lu2/e;->g()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lu2/e;

    move-result-object p0

    invoke-virtual {p0}, Lu2/e;->k()Lu2/e;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lu2/e;->c()D

    move-result-wide v0

    double-to-int p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$6702(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$25;->val$offset:I

    sub-int/2addr p0, p1

    invoke-static {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$5600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    :cond_2
    :goto_0
    return-void
.end method
