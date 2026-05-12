.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->initWindowInsetsListener()V
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

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "COUIBottomSheetDialog"

    const-string p1, "Window inset is not change, return!"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/WindowInsets;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$900(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/WindowInsets;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1000(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1002(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$bool;->is_coui_bottom_sheet_ime_adjust_in_constraint_layout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget v2, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget v3, Lcom/support/panel/R$id;->coui_panel_content_layout:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v1, v2

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_4

    iget-object v3, v3, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v3

    :goto_0
    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->setMargin(Landroid/view/View;II)V

    :cond_5
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mDraggableConstraintLayout:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1102(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/ViewGroup;

    move-result-object v1

    :cond_7
    move-object v4, v1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1200(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getAdjustResizeHelper()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1300(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Z

    move-result v7

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->adjustResize(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;Landroid/view/View;Z)V

    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1500(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1600(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/WindowInsets;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$702(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/WindowInsets;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/content/res/Configuration;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$1800(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_2
    return-object p2
.end method
