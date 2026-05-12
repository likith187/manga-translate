.class public Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/statement/COUIUserStatementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentViewHolder"
.end annotation


# instance fields
.field private final BTN_MAX_LINE:I

.field private bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

.field private btnConfirm:Lcom/coui/appcompat/button/COUIButton;

.field private exitButton:Landroid/widget/TextView;

.field private ivLogo:Landroid/widget/ImageView;

.field private llContentStatementContentChild:Landroid/view/View;

.field private llListLayout:Landroid/widget/LinearLayout;

.field private llStatementContentLayout:Landroid/widget/LinearLayout;

.field private rlCustomLayout:Landroid/widget/RelativeLayout;

.field private rlCustomParentLayout:Landroid/widget/RelativeLayout;

.field private scrollCustomLayout:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

.field private scrollText:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

.field private scrollTextStatementProtocol:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

.field private simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

.field private slStatementContentLayout:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

.field private smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

.field private smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

.field private smallLandExitButton:Lcom/coui/appcompat/button/COUIButton;

.field private tvLogoMessage:Landroid/widget/TextView;

.field private tvLogoName:Landroid/widget/TextView;

.field private tvLogoSubTitle:Landroid/widget/TextView;

.field private tvStatementProtocol:Landroid/widget/TextView;

.field private txtStatement:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->BTN_MAX_LINE:I

    sget v1, Lcom/support/statement/R$id;->ll_statement_content_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llStatementContentLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/support/statement/R$id;->sl_statement_content_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->slStatementContentLayout:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/support/statement/R$layout;->coui_component_statement_content_item:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string v1, "from(context)\n          \u2026ement_content_item, null)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llContentStatementContentChild:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llStatementContentLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "layoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    sget p2, Lcom/support/statement/R$id;->btn_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/button/COUIButton;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->btnConfirm:Lcom/coui/appcompat/button/COUIButton;

    sget p2, Lcom/support/statement/R$id;->txt_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->exitButton:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    :cond_2
    sget p2, Lcom/support/statement/R$id;->small_land_button_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.small_land_button_layout)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/coui/appcompat/button/COUIButtonLayout;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/button/COUIButtonLayout;->setLimitHeight(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/button/COUIButtonLayout;->setForceSmallScreenWidth(Z)Z

    sget p2, Lcom/support/statement/R$id;->small_land_btn_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.small_land_btn_confirm)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/coui/appcompat/button/COUIButton;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    sget p2, Lcom/support/statement/R$id;->small_land_btn_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.small_land_btn_exit)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/coui/appcompat/button/COUIButton;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandExitButton:Lcom/coui/appcompat/button/COUIButton;

    sget p2, Lcom/support/statement/R$id;->iv_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.iv_logo)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->ivLogo:Landroid/widget/ImageView;

    sget p2, Lcom/support/statement/R$id;->tv_logo_sub_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.tv_logo_sub_title)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoSubTitle:Landroid/widget/TextView;

    sget p2, Lcom/support/statement/R$id;->tv_logo_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.tv_logo_name)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoName:Landroid/widget/TextView;

    sget p2, Lcom/support/statement/R$id;->scroll_custom_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->scrollCustomLayout:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    sget p2, Lcom/support/statement/R$id;->rl_custom_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.rl_custom_layout)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/support/statement/R$id;->tv_logo_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.tv_logo_message)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoMessage:Landroid/widget/TextView;

    sget p2, Lcom/support/statement/R$id;->ll_list_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.ll_list_layout)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llListLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/support/statement/R$id;->scroll_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.scroll_text)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->scrollText:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    sget p2, Lcom/support/statement/R$id;->txt_statement:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.txt_statement)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->txtStatement:Landroid/widget/TextView;

    sget p2, Lcom/support/statement/R$id;->scroll_text_statement_protocol:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.scroll_text_statement_protocol)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->scrollTextStatementProtocol:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    sget p2, Lcom/support/statement/R$id;->statement_protocol:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.statement_protocol)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvStatementProtocol:Landroid/widget/TextView;

    sget p2, Lcom/support/statement/R$id;->rl_custom_parent_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.rl_custom_parent_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomParentLayout:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public final bindBottomButtonWarp()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->btnConfirm:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coui/appcompat/button/SingleButtonWrap;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/coui/appcompat/button/SingleButtonWrap;-><init>(Lcom/coui/appcompat/button/COUIButton;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    return-void
.end method

.method public final bindCustomView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final bindList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;

    invoke-virtual {v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->getMItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->getMItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->getMItemView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bindSimpleButtonGroupCtrl()V
    .locals 3

    new-instance v0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    invoke-direct {v0}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandExitButton:Lcom/coui/appcompat/button/COUIButton;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->registerButton(Lcom/coui/appcompat/button/COUIButton;I)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->registerButton(Lcom/coui/appcompat/button/COUIButton;I)V

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    return-void
.end method

.method public final getBTN_MAX_LINE()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->BTN_MAX_LINE:I

    return p0
.end method

.method public final getBottomButtonWrap()Lcom/coui/appcompat/button/SingleButtonWrap;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    return-object p0
.end method

.method public final getBtnConfirm()Lcom/coui/appcompat/button/COUIButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->btnConfirm:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public final getExitButton()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->exitButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getIvLogo()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->ivLogo:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getLlContentStatementContentChild()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llContentStatementContentChild:Landroid/view/View;

    return-object p0
.end method

.method public final getLlListLayout()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llListLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getLlStatementContentLayout()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llStatementContentLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getRlCustomLayout()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public final getRlCustomParentLayout()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomParentLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public final getScrollCustomLayout()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->scrollCustomLayout:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    return-object p0
.end method

.method public final getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->scrollText:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    return-object p0
.end method

.method public final getScrollTextStatementProtocol()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->scrollTextStatementProtocol:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    return-object p0
.end method

.method public final getSimpleButtonGroupCtrl()Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    return-object p0
.end method

.method public final getSlStatementContentLayout()Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->slStatementContentLayout:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    return-object p0
.end method

.method public final getSmallLandButtonLayout()Lcom/coui/appcompat/button/COUIButtonLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

    return-object p0
.end method

.method public final getSmallLandConfirmButton()Lcom/coui/appcompat/button/COUIButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public final getSmallLandExitButton()Lcom/coui/appcompat/button/COUIButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandExitButton:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public final getTvLogoMessage()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTvLogoName()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoName:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTvLogoSubTitle()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoSubTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTvStatementProtocol()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvStatementProtocol:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTxtStatement()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->txtStatement:Landroid/widget/TextView;

    return-object p0
.end method

.method public refreshBottomButtonWarp(Landroid/content/res/Configuration;Landroid/view/View;)V
    .locals 4

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->btnConfirm:Lcom/coui/appcompat/button/COUIButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->BTN_MAX_LINE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->exitButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->btnConfirm:Lcom/coui/appcompat/button/COUIButton;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_5
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->exitButton:Landroid/widget/TextView;

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/statement/R$dimen;->coui_full_page_statement_button_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_4
    return-void
.end method

.method public refreshSimpleButtonGroupCtrl(Landroid/content/res/Configuration;Landroid/view/View;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->BTN_MAX_LINE:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandExitButton:Lcom/coui/appcompat/button/COUIButton;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->BTN_MAX_LINE:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_1
    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setBottomButtonWrap(Lcom/coui/appcompat/button/SingleButtonWrap;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    return-void
.end method

.method public final setBtnConfirm(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->btnConfirm:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method

.method public final setExitButton(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->exitButton:Landroid/widget/TextView;

    return-void
.end method

.method public final setIvLogo(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->ivLogo:Landroid/widget/ImageView;

    return-void
.end method

.method public final setLlContentStatementContentChild(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llContentStatementContentChild:Landroid/view/View;

    return-void
.end method

.method public final setLlListLayout(Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llListLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final setLlStatementContentLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llStatementContentLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final setRlCustomLayout(Landroid/widget/RelativeLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public final setRlCustomParentLayout(Landroid/widget/RelativeLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomParentLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public final setScrollCustomLayout(Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->scrollCustomLayout:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    return-void
.end method

.method public final setScrollText(Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->scrollText:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    return-void
.end method

.method public final setScrollTextStatementProtocol(Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->scrollTextStatementProtocol:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    return-void
.end method

.method public final setSimpleButtonGroupCtrl(Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    return-void
.end method

.method public final setSlStatementContentLayout(Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->slStatementContentLayout:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    return-void
.end method

.method public final setSmallLandButtonLayout(Lcom/coui/appcompat/button/COUIButtonLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

    return-void
.end method

.method public final setSmallLandConfirmButton(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method

.method public final setSmallLandExitButton(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->smallLandExitButton:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method

.method public final setTvLogoMessage(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoMessage:Landroid/widget/TextView;

    return-void
.end method

.method public final setTvLogoName(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoName:Landroid/widget/TextView;

    return-void
.end method

.method public final setTvLogoSubTitle(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoSubTitle:Landroid/widget/TextView;

    return-void
.end method

.method public final setTvStatementProtocol(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvStatementProtocol:Landroid/widget/TextView;

    return-void
.end method

.method public final setTxtStatement(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->txtStatement:Landroid/widget/TextView;

    return-void
.end method

.method public updateLayoutUiVisibleState(Ljava/util/List;Landroid/view/View;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;",
            ">;",
            "Landroid/view/View;",
            "III)V"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, p4, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, p4, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1, p5, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->llListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->rlCustomParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, p3, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->tvLogoSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1, p5, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void
.end method
