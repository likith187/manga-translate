.class public final Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/statement/COUIUserStatementDialog;-><init>(Landroid/content/Context;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initMINIContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldPanelStatusTypeEnum"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->MINI:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getMiniContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->$context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/support/statement/R$layout;->coui_component_statement_with_protocol_fixed:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$setMiniContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getMiniContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    new-instance v0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;-><init>(Landroid/view/View;)V

    invoke-static {p2, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$setMiniContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getMiniContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p2, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$initMINIView(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getMiniContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initNormalContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldPanelStatusTypeEnum"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->NORMAL:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->$context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/support/statement/R$layout;->coui_component_full_page_statement_with_protocol:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$setNormalContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->$context:Landroid/content/Context;

    new-instance v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    invoke-direct {v1, p1, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-static {p2, v1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$setNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;)V

    invoke-static {p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$initNormalView(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getListViewHolderArray$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bindList(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getCustomView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bindCustomView(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initSmallLandContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldPanelStatusTypeEnum"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->SMALL_LAND:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getSmallLandContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->$context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/support/statement/R$layout;->coui_component_full_page_statement_with_protocol_small_land:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$setSmallLandContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getSmallLandContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->$context:Landroid/content/Context;

    new-instance v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    invoke-direct {v1, p1, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-static {p2, v1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$setSmallLandContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;)V

    invoke-static {p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$initSmallLandView(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getSmallLandContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getListViewHolderArray$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bindList(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getSmallLandContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getCustomView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bindCustomView(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getSmallLandContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initSplitScreenContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldPanelStatusTypeEnum"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->initNormalContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V

    return-void
.end method

.method public initTinyContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldPanelStatusTypeEnum"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->TINY:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getTinyContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->$context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/support/statement/R$layout;->coui_component_statement_with_protocol_fixed_tiny:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$setTinyContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getTinyContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    new-instance v0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;-><init>(Landroid/view/View;)V

    invoke-static {p2, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$setTinyContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getTinyContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p2, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$initTinyView(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getTinyContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getPanelBarView()Lcom/coui/appcompat/panel/COUIPanelBarView;

    move-result-object p1

    const/16 p2, 0x8

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateMINIContentView(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getMiniContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;

    move-result-object v0

    const-string v1, "getContext()"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->refreshMINITextSize(Landroid/content/res/Configuration;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getMiniContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->refreshSimpleButtonGroupCtrl(Landroid/content/res/Configuration;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public updateNormalContentView(Landroid/content/res/Configuration;)V
    .locals 8

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getStatement()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getProtocolText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$addOnLayoutChangeListenerToScrollText(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;->updateNormalFoldingScrollUI()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getListItems()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getCustomView()Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getScrollTextMaxHeightNormal$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getScrollTextMaxHeight$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->$context:Landroid/content/Context;

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;->updateScrollTextMaxHeight(Ljava/util/List;Landroid/view/View;Landroid/content/res/Configuration;IILandroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getListItems()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getCustomView()Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getMessagePaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v4

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getCustomPaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getSubTitlePaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->updateLayoutUiVisibleState(Ljava/util/List;Landroid/view/View;III)V

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v0

    const-string v1, "contentView"

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->refreshBottomButtonWarp(Landroid/content/res/Configuration;Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->refreshSimpleButtonGroupCtrl(Landroid/content/res/Configuration;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public updateSmallLandContentView(Landroid/content/res/Configuration;)V
    .locals 6

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getSmallLandContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getStatement()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getProtocolText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$addOnLayoutChangeListenerToScrollText(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getSmallLandContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getListItems()Ljava/util/List;

    move-result-object v1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getCustomView()Landroid/view/View;

    move-result-object v2

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getMessagePaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v3

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getCustomPaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v4

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getSubTitlePaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->updateLayoutUiVisibleState(Ljava/util/List;Landroid/view/View;III)V

    :cond_1
    return-void
.end method

.method public updateSplitScreenContentView(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getStatement()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getProtocolText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$addOnLayoutChangeListenerToScrollText(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getCustomLayoutMinHeight$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;->updateExpandScrollUI(I)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;->updateSplitScreenScrollTextMaxHeight()V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getListItems()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getCustomView()Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getMessagePaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v4

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getCustomPaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getSubTitlePaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->updateLayoutUiVisibleState(Ljava/util/List;Landroid/view/View;III)V

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v0

    const-string v1, "contentView"

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->refreshBottomButtonWarp(Landroid/content/res/Configuration;Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->refreshSimpleButtonGroupCtrl(Landroid/content/res/Configuration;Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getExpandPanelMarginTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getExpandScrollPadding$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v2

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getExpandScrollPadding$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v3

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getPanelStartPadding$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v4

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getPanelEndPadding$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v5

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getContentPaddingEnd$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;->updateSplitScreenLogoPaddingTop(IIIIII)V

    :cond_6
    return-void
.end method

.method public updateTinyContentView(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->access$getTinyContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getCustomViewTiny()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->refreshTinyContentViewHolder(Landroid/view/View;)V

    :cond_0
    return-void
.end method
