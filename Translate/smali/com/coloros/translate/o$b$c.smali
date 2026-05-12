.class public final Lcom/coloros/translate/o$b$c;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

.field private final c:Landroid/widget/TextView;

.field private final f:Landroid/widget/RadioButton;

.field private final h:Landroid/view/View;

.field final synthetic i:Lcom/coloros/translate/o$b;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/o$b;Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/o$b$c;->i:Lcom/coloros/translate/o$b;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/coloros/translate/o$b$c;->a:Landroid/view/View;

    sget p1, Lcom/coloros/translate/R$id;->rl_language_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iput-object p1, p0, Lcom/coloros/translate/o$b$c;->b:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    sget p1, Lcom/coloros/translate/R$id;->tv_language_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/translate/o$b$c;->c:Landroid/widget/TextView;

    sget p1, Lcom/coloros/translate/R$id;->rb_select:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/coloros/translate/o$b$c;->f:Landroid/widget/RadioButton;

    sget p1, Lcom/coloros/translate/R$id;->divider:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/o$b$c;->h:Landroid/view/View;

    return-void
.end method

.method public static synthetic b(ILcom/coloros/translate/o$b;Lcom/coloros/translate/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/o$b$c;->d(ILcom/coloros/translate/o$b;Lcom/coloros/translate/b;Landroid/view/View;)V

    return-void
.end method

.method private static final d(ILcom/coloros/translate/o$b;Lcom/coloros/translate/b;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$language"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/o$b;->g(Lcom/coloros/translate/o$b;)I

    move-result p3

    if-ne p0, p3, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/coloros/translate/o$b;->h(Lcom/coloros/translate/o$b;Lcom/coloros/translate/b;)V

    invoke-static {p1}, Lcom/coloros/translate/o$b;->g(Lcom/coloros/translate/o$b;)I

    move-result p3

    invoke-static {p1, p0}, Lcom/coloros/translate/o$b;->i(Lcom/coloros/translate/o$b;I)V

    invoke-virtual {p1}, Lcom/coloros/translate/o$b;->j()Lw8/q;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Lcom/coloros/translate/o$b;->g(Lcom/coloros/translate/o$b;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p3, p1, p2}, Lw8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final c(Lcom/coloros/translate/b;I)V
    .locals 4

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/o$b$c;->b:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setPositionInGroup(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/o$b$c;->i:Lcom/coloros/translate/o$b;

    invoke-virtual {v1}, Lcom/coloros/translate/o$b;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/o$b$c;->b:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setPositionInGroup(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/o$b$c;->b:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setPositionInGroup(I)V

    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/o$b$c;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/translate/o$b$c;->i:Lcom/coloros/translate/o$b;

    iget-object v2, v2, Lcom/coloros/translate/o$b;->f:Lcom/coloros/translate/o;

    invoke-static {v2}, Lcom/coloros/translate/o;->e(Lcom/coloros/translate/o;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coloros/translate/o$b$c;->i:Lcom/coloros/translate/o$b;

    iget-object v1, v1, Lcom/coloros/translate/o$b;->f:Lcom/coloros/translate/o;

    invoke-static {v1}, Lcom/coloros/translate/o;->i(Lcom/coloros/translate/o;)Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->B()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coloros/translate/o$b$c;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/translate/o$b$c;->i:Lcom/coloros/translate/o$b;

    iget-object v2, v2, Lcom/coloros/translate/o$b;->f:Lcom/coloros/translate/o;

    invoke-static {v2}, Lcom/coloros/translate/o;->e(Lcom/coloros/translate/o;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$string;->chinese:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/coloros/translate/b;->SPANISH:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/o$b$c;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/translate/o$b$c;->i:Lcom/coloros/translate/o$b;

    iget-object v2, v2, Lcom/coloros/translate/o$b;->f:Lcom/coloros/translate/o;

    invoke-static {v2}, Lcom/coloros/translate/o;->e(Lcom/coloros/translate/o;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$string;->spanish_os15:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/o$b$c;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/translate/o$b$c;->i:Lcom/coloros/translate/o$b;

    invoke-static {v3}, Lcom/coloros/translate/o$b;->f(Lcom/coloros/translate/o$b;)Lcom/coloros/translate/b;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/coloros/translate/o$b$c;->i:Lcom/coloros/translate/o$b;

    invoke-static {v2, p2}, Lcom/coloros/translate/o$b;->i(Lcom/coloros/translate/o$b;I)V

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/coloros/translate/o$b$c;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/translate/o$b$c;->i:Lcom/coloros/translate/o$b;

    invoke-virtual {v1}, Lcom/coloros/translate/o$b;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne p2, v1, :cond_6

    const/4 v3, 0x4

    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/o$b$c;->b:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iget-object p0, p0, Lcom/coloros/translate/o$b$c;->i:Lcom/coloros/translate/o$b;

    new-instance v1, Lcom/coloros/translate/p;

    invoke-direct {v1, p2, p0, p1}, Lcom/coloros/translate/p;-><init>(ILcom/coloros/translate/o$b;Lcom/coloros/translate/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
