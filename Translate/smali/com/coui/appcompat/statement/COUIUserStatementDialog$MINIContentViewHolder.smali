.class public final Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/statement/COUIUserStatementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MINIContentViewHolder"
.end annotation


# instance fields
.field private appStatement:Landroid/widget/TextView;

.field private bottomButton:Lcom/coui/appcompat/button/COUIButton;

.field private bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

.field private exitButton:Landroid/widget/TextView;

.field private mScrollViewComponent:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

.field private protocolStatement:Landroid/widget/TextView;

.field private simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

.field private smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

.field private smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

.field private smallLandexitButton:Lcom/coui/appcompat/button/COUIButton;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/support/statement/R$id;->txt_statement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.txt_statement)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->appStatement:Landroid/widget/TextView;

    sget v0, Lcom/support/statement/R$id;->btn_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.btn_confirm)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    sget v0, Lcom/support/statement/R$id;->scroll_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.scroll_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->mScrollViewComponent:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    sget v0, Lcom/support/statement/R$id;->txt_exit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.txt_exit)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->exitButton:Landroid/widget/TextView;

    sget v0, Lcom/support/statement/R$id;->txt_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.txt_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->titleView:Landroid/widget/TextView;

    sget v0, Lcom/support/statement/R$id;->statement_protocol:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.statement_protocol)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->protocolStatement:Landroid/widget/TextView;

    sget v0, Lcom/support/statement/R$id;->small_land_button_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.small_land_button_layout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/button/COUIButtonLayout;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/button/COUIButtonLayout;->setLimitHeight(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/button/COUIButtonLayout;->setForceSmallScreenWidth(Z)Z

    sget v0, Lcom/support/statement/R$id;->small_land_btn_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.small_land_btn_confirm)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    sget v0, Lcom/support/statement/R$id;->small_land_btn_exit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.small_land_btn_exit)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/appcompat/button/COUIButton;

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandexitButton:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method

.method private final isSmallScreen(Landroid/content/res/Configuration;)Z
    .locals 0

    iget p0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p1, 0x1e0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getAppStatement()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->appStatement:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getBottomButton()Lcom/coui/appcompat/button/COUIButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public final getBottomButtonWrap()Lcom/coui/appcompat/button/SingleButtonWrap;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    return-object p0
.end method

.method public final getExitButton()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->exitButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMScrollViewComponent()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->mScrollViewComponent:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    return-object p0
.end method

.method public final getProtocolStatement()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->protocolStatement:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getSimpleButtonGroupCtrl()Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    return-object p0
.end method

.method public final getSmallLandButtonLayout()Lcom/coui/appcompat/button/COUIButtonLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

    return-object p0
.end method

.method public final getSmallLandConfirmButton()Lcom/coui/appcompat/button/COUIButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public final getSmallLandexitButton()Lcom/coui/appcompat/button/COUIButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandexitButton:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->titleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final refreshMINITextSize(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 4

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p1, p1

    sget-object p2, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->Companion:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

    invoke-virtual {p2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->getSCREN_DP_MINI_WIDTH()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p2

    cmpg-float p1, p1, p2

    const/4 p2, 0x2

    const/4 v0, 0x4

    const/high16 v1, 0x41800000    # 16.0f

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->release()V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->release()V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandexitButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->getSingleButtonWrapListSize()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    const/4 v2, 0x3

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandexitButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1, v3, v2}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->registerButton(Lcom/coui/appcompat/button/COUIButton;I)V

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1, v3, v2}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->registerButton(Lcom/coui/appcompat/button/COUIButton;I)V

    :cond_5
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->getProcessView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    if-eqz p1, :cond_7

    new-instance v2, Lcom/coui/appcompat/button/SingleButtonWrap;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/coui/appcompat/button/SingleButtonWrap;-><init>(Lcom/coui/appcompat/button/COUIButton;I)V

    iput-object v2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    :cond_7
    move v2, p2

    :goto_1
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->exitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    :cond_8
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->titleView:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_9
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->appStatement:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_a
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->protocolStatement:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_b
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->appStatement:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    invoke-static {p1, p2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    :cond_c
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->protocolStatement:Landroid/widget/TextView;

    if-eqz p0, :cond_d

    invoke-static {p0, p2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    :cond_d
    return-void
.end method

.method public final refreshSimpleButtonGroupCtrl(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->getSingleButtonWrapListSize()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->getProcessView()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string v0, "context.resources.configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->isSmallScreen(Landroid/content/res/Configuration;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->exitButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz p1, :cond_5

    move v2, v1

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_4

    :cond_6
    move v2, v0

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setAppStatement(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->appStatement:Landroid/widget/TextView;

    return-void
.end method

.method public final setBottomButton(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method

.method public final setBottomButtonWrap(Lcom/coui/appcompat/button/SingleButtonWrap;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->bottomButtonWrap:Lcom/coui/appcompat/button/SingleButtonWrap;

    return-void
.end method

.method public final setExitButton(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->exitButton:Landroid/widget/TextView;

    return-void
.end method

.method public final setMScrollViewComponent(Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->mScrollViewComponent:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    return-void
.end method

.method public final setProtocolStatement(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->protocolStatement:Landroid/widget/TextView;

    return-void
.end method

.method public final setSimpleButtonGroupCtrl(Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->simpleButtonGroupCtrl:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    return-void
.end method

.method public final setSmallLandButtonLayout(Lcom/coui/appcompat/button/COUIButtonLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandButtonLayout:Lcom/coui/appcompat/button/COUIButtonLayout;

    return-void
.end method

.method public final setSmallLandConfirmButton(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method

.method public final setSmallLandexitButton(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->smallLandexitButton:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method

.method public final setTitleView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->titleView:Landroid/widget/TextView;

    return-void
.end method
