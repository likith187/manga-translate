.class public final Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/statement/COUIUserStatementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TinyContentViewHolder"
.end annotation


# instance fields
.field private appStatementTiny:Landroid/widget/TextView;

.field private btnConfirmTiny:Lcom/coui/appcompat/button/COUIButton;

.field private btnExitTiny:Lcom/coui/appcompat/button/COUIButton;

.field private customFunctionalAreaTiny:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private customFunctionalAreaWrapperTiny:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private rlTextTiny:Landroid/widget/RelativeLayout;

.field private scrollButtonTiny:Landroid/widget/ScrollView;

.field private titleTiny:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/support/statement/R$id;->rl_text_tiny:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.rl_text_tiny)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->rlTextTiny:Landroid/widget/RelativeLayout;

    sget v0, Lcom/support/statement/R$id;->txt_title_tiny:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.txt_title_tiny)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->titleTiny:Landroid/widget/TextView;

    sget v0, Lcom/support/statement/R$id;->txt_statement_tiny:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.txt_statement_tiny)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->appStatementTiny:Landroid/widget/TextView;

    sget v0, Lcom/support/statement/R$id;->scroll_button_tiny:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.scroll_button_tiny)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->scrollButtonTiny:Landroid/widget/ScrollView;

    sget v0, Lcom/support/statement/R$id;->btn_confirm_tiny:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.btn_confirm_tiny)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->btnConfirmTiny:Lcom/coui/appcompat/button/COUIButton;

    sget v0, Lcom/support/statement/R$id;->txt_exit_tiny:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.txt_exit_tiny)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->btnExitTiny:Lcom/coui/appcompat/button/COUIButton;

    sget v0, Lcom/support/statement/R$id;->custom_functional_area_wrapper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.custom_functional_area_wrapper)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->customFunctionalAreaWrapperTiny:Landroidx/appcompat/widget/LinearLayoutCompat;

    sget v0, Lcom/support/statement/R$id;->custom_functional_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.custom_functional_area)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->customFunctionalAreaTiny:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void
.end method


# virtual methods
.method public final getAppStatementTiny()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->appStatementTiny:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getBtnConfirmTiny()Lcom/coui/appcompat/button/COUIButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->btnConfirmTiny:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public final getBtnExitTiny()Lcom/coui/appcompat/button/COUIButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->btnExitTiny:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public final getCustomFunctionalAreaTiny()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->customFunctionalAreaTiny:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object p0
.end method

.method public final getCustomFunctionalAreaWrapperTiny()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->customFunctionalAreaWrapperTiny:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object p0
.end method

.method public final getRlTextTiny()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->rlTextTiny:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public final getScrollButtonTiny()Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->scrollButtonTiny:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public final getTitleTiny()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->titleTiny:Landroid/widget/TextView;

    return-object p0
.end method

.method public final refreshTinyContentViewHolder(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->customFunctionalAreaWrapperTiny:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->customFunctionalAreaWrapperTiny:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final setAppStatementTiny(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->appStatementTiny:Landroid/widget/TextView;

    return-void
.end method

.method public final setBtnConfirmTiny(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->btnConfirmTiny:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method

.method public final setBtnExitTiny(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->btnExitTiny:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method

.method public final setCustomFunctionalAreaTiny(Landroidx/appcompat/widget/LinearLayoutCompat;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->customFunctionalAreaTiny:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void
.end method

.method public final setCustomFunctionalAreaWrapperTiny(Landroidx/appcompat/widget/LinearLayoutCompat;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->customFunctionalAreaWrapperTiny:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void
.end method

.method public final setRlTextTiny(Landroid/widget/RelativeLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->rlTextTiny:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public final setScrollButtonTiny(Landroid/widget/ScrollView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->scrollButtonTiny:Landroid/widget/ScrollView;

    return-void
.end method

.method public final setTitleTiny(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->titleTiny:Landroid/widget/TextView;

    return-void
.end method
