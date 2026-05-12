.class public final Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;
.super Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/statement/COUIUserStatementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalContentViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method private final isLargeScreenLayoutSize(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreenDp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreenDp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final updateExpandScrollUI(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlContentStatementContentChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlStatementContentLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSlStatementContentLayout()Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlContentStatementContentChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSlStatementContentLayout()Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "layoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlContentStatementContentChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollCustomLayout()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMinHeight(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollCustomLayout()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSlStatementContentLayout()Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlStatementContentLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final updateLogoPaddingTop(Ljava/util/List;Landroid/view/View;IIILandroid/content/Context;IIIIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;",
            ">;",
            "Landroid/view/View;",
            "III",
            "Landroid/content/Context;",
            "IIIIZZ)V"
        }
    .end annotation

    const-string p8, "context"

    invoke-static {p6, p8}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p8

    invoke-virtual {p8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p8

    iget p8, p8, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p8}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result p8

    const/4 p9, 0x0

    if-eqz p8, :cond_0

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    if-eqz p6, :cond_1

    sget p8, Lcom/support/statement/R$dimen;->coui_component_statement_margin_top_small_screen_max:I

    invoke-virtual {p6, p8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    if-eqz p6, :cond_1

    sget p8, Lcom/support/statement/R$dimen;->coui_component_statement_margin_top_big_screen_max:I

    invoke-virtual {p6, p8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    :cond_2
    if-nez p12, :cond_3

    if-nez p11, :cond_3

    if-eqz p9, :cond_3

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlContentStatementContentChild()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3, p7, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSlStatementContentLayout()Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, p4, p2, p5, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    return-void
.end method

.method public final updateNormalFoldingScrollUI()V
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSlStatementContentLayout()Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlStatementContentLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlContentStatementContentChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlStatementContentLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "layoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollCustomLayout()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMinHeight(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollCustomLayout()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSlStatementContentLayout()Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlStatementContentLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final updateScrollTextMaxHeight(Ljava/util/List;Landroid/view/View;Landroid/content/res/Configuration;IILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;",
            ">;",
            "Landroid/view/View;",
            "Landroid/content/res/Configuration;",
            "II",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    iget p1, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollTextStatementProtocol()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object p0

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/statement/R$dimen;->coui_component_statement_scroll_text_statement_protocol_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    return-void
.end method

.method public final updateSplitScreenLogoPaddingTop(IIIIII)V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getLlContentStatementContentChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p6, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSlStatementContentLayout()Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4, p2, p5, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public final updateSplitScreenScrollTextMaxHeight()V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollTextStatementProtocol()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    :cond_0
    return-void
.end method
