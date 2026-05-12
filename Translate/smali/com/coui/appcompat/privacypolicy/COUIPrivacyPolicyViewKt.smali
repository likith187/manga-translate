.class public final Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG_INVALID:I = -0x1

.field private static final TAG_SMALL_TITLE:I = 0x2

.field private static final TAG_TABLE:I = 0x3

.field private static final TAG_TITLE:I = 0x1


# direct methods
.method public static final synthetic access$overrideChildLp(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->overrideChildLp(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static final body(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;",
            "Lw8/l;",
            ")",
            "Landroid/widget/TextView;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getArticleBody(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static final boldBody(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;",
            "Lw8/l;",
            ")",
            "Landroid/widget/TextView;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getBoldBody(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static final columnBody(Landroid/widget/TableRow;FLw8/l;)Landroid/widget/TextView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableRow;",
            "F",
            "Lw8/l;",
            ")",
            "Landroid/widget/TextView;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getTableColumnBody(Landroid/widget/TableRow;F)Landroid/widget/TextView;

    move-result-object p1

    invoke-interface {p2, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public static synthetic columnBody$default(Landroid/widget/TableRow;FLw8/l;ILjava/lang/Object;)Landroid/widget/TextView;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->columnBody(Landroid/widget/TableRow;FLw8/l;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private static final getArticleBody(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)Landroid/widget/TextView;
    .locals 1

    sget v0, Lcom/support/privacypolicy/R$layout;->coui_component_privacy_policy_article_body:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private static final getBoldBody(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)Landroid/widget/TextView;
    .locals 1

    sget v0, Lcom/support/privacypolicy/R$layout;->coui_component_privacy_policy_section_heading:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private static final getDimenPx(Landroid/view/View;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private static final getIntTag(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static final getLastIntTag(Landroid/view/ViewGroup;)I
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Landroidx/core/view/r0;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getIntTag(Landroid/view/View;)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static final getLpSection(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_section_margin_top:I

    invoke-static {p0, v1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getDimenPx(Landroid/view/View;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v1, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_content_margin_side:I

    invoke-static {p0, v1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getDimenPx(Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    sget v1, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_content_margin_side:I

    invoke-static {p0, v1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getDimenPx(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-object v0
.end method

.method private static final getLpTitle(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_title_margin_top:I

    invoke-static {p0, v1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getDimenPx(Landroid/view/View;I)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method private static final getMarginTopLp(Landroid/view/View;Ljava/lang/Integer;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getDimenPx(Landroid/view/View;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method static synthetic getMarginTopLp$default(Landroid/view/View;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getMarginTopLp(Landroid/view/View;Ljava/lang/Integer;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private static final getSectionTitle(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)Landroid/widget/TextView;
    .locals 1

    sget v0, Lcom/support/privacypolicy/R$layout;->coui_component_privacy_policy_section_heading:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private static final getTableColumnBody(Landroid/widget/TableRow;F)Landroid/widget/TextView;
    .locals 3

    sget v0, Lcom/support/privacypolicy/R$layout;->coui_component_privacy_policy_table_column_body:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p0

    sget v0, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_table_padding:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getDimenPx(Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method private static final getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private static final getTitle(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)Landroid/widget/TextView;
    .locals 2

    sget v0, Lcom/support/privacypolicy/R$layout;->coui_component_privacy_policy_article_heading:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_title_padding:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getDimenPx(Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getLpTitle(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final overrideChildLp(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getMarginTopLp$default(Landroid/view/View;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getIntTag(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_small_title_margin_top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getMarginTopLp(Landroid/view/View;Ljava/lang/Integer;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getIntTag(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getLastIntTag(Landroid/view/ViewGroup;)I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_3
    sget v0, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_table_margin_vertical:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getMarginTopLp(Landroid/view/View;Ljava/lang/Integer;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget v0, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_body_margin_top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getMarginTopLp(Landroid/view/View;Ljava/lang/Integer;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final row(Landroid/widget/TableLayout;Lw8/l;)Landroid/widget/TableRow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Lw8/l;",
            ")",
            "Landroid/widget/TableRow;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v1}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p1, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/support/privacypolicy/R$drawable;->coui_component_table_divider_vertical:I

    invoke-static {p1, v1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static final section(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;",
            "Lw8/l;",
            ")",
            "Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getLpSection(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-static {p0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getLastIntTag(Landroid/view/ViewGroup;)I

    move-result v3

    if-ne v3, v1, :cond_0

    sget v1, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_section_margin_top_0:I

    invoke-static {p0, v1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getDimenPx(Landroid/view/View;I)I

    move-result v1

    goto :goto_0

    :cond_0
    sget v1, Lcom/support/privacypolicy/R$dimen;->coui_component_privacy_policy_section_margin_top:I

    invoke-static {p0, v1}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getDimenPx(Landroid/view/View;I)I

    move-result v1

    :goto_0
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p1, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static final sectionTitle(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;",
            "Lw8/l;",
            ")",
            "Landroid/widget/TextView;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getSectionTitle(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static final smallTitle(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TextView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;",
            "Lw8/l;",
            ")",
            "Landroid/widget/TextView;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getArticleBody(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static final table(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;Lw8/l;)Landroid/widget/TableLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;",
            "Lw8/l;",
            ")",
            "Landroid/widget/TableLayout;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/TableLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/privacypolicy/R$drawable;->coui_component_table_divider_horizontal:I

    invoke-static {v1, v2}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    invoke-interface {p1, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static final title(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;Lw8/l;)Landroid/widget/TextView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;",
            "Lw8/l;",
            ")",
            "Landroid/widget/TextView;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyViewKt;->getTitle(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method
