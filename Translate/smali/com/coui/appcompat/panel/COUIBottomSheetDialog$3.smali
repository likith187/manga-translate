.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_bottom_sheet_dialog_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/panel/R$color;->coui_panel_follow_hand_spot_shadow_color:I

    invoke-static {v2, v3}, Lr/a;->c(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v0, v3, v1, v2}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanPullUp(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    :cond_0
    return-void
.end method
