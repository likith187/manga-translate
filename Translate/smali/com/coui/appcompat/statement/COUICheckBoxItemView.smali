.class public final Lcom/coui/appcompat/statement/COUICheckBoxItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field private final privacyItem:Lcom/coui/appcompat/statement/PrivacyItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/statement/PrivacyItem;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->privacyItem:Lcom/coui/appcompat/statement/PrivacyItem;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/support/statement/R$layout;->coui_component_layout_privacy_checkbox:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/support/statement/R$id;->checkbox_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/coui/appcompat/statement/PrivacyItem;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/support/statement/R$id;->checkbox_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/coui/appcompat/statement/PrivacyItem;->getSummaryText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/support/statement/R$id;->checkbox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.checkbox)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    sget p2, Lcom/support/statement/R$id;->checkbox_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/coui/appcompat/statement/a;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/statement/a;-><init>(Lcom/coui/appcompat/statement/COUICheckBoxItemView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/statement/COUICheckBoxItemView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->lambda$1$lambda$0(Lcom/coui/appcompat/statement/COUICheckBoxItemView;Landroid/view/View;)V

    return-void
.end method

.method private static final lambda$1$lambda$0(Lcom/coui/appcompat/statement/COUICheckBoxItemView;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getPrivacyItem()Lcom/coui/appcompat/statement/PrivacyItem;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->privacyItem:Lcom/coui/appcompat/statement/PrivacyItem;

    return-object p0
.end method

.method public final isChecked()Z
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setOnStateChangeListener(Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setOnStateChangeListener(Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;)V

    return-void
.end method
