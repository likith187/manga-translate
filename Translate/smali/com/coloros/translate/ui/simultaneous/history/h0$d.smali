.class public Lcom/coloros/translate/ui/simultaneous/history/h0$d;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/ui/simultaneous/history/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

.field private final c:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

.field final synthetic f:Lcom/coloros/translate/ui/simultaneous/history/h0;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/h0;Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/coloros/translate/R$id;->tx_start_time:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->a:Landroid/widget/TextView;

    sget p1, Lcom/coloros/translate/R$id;->tx_from_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->b:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    sget p1, Lcom/coloros/translate/R$id;->tx_to_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->c:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->e(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/coloros/translate/ui/simultaneous/history/k0;Lcom/coloros/translate/ui/simultaneous/history/h0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f(Lcom/coloros/translate/ui/simultaneous/history/k0;Lcom/coloros/translate/ui/simultaneous/history/h0;Landroid/view/View;)V

    return-void
.end method

.method private static final e(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final f(Lcom/coloros/translate/ui/simultaneous/history/k0;Lcom/coloros/translate/ui/simultaneous/history/h0;Landroid/view/View;)V
    .locals 0

    const-string p2, "$info"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/k0;->h()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/h0;->o()Lcom/coloros/translate/ui/simultaneous/history/h0$e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/coloros/translate/ui/simultaneous/history/h0$e;->a(Lcom/coloros/translate/ui/simultaneous/history/k0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Lcom/coloros/translate/ui/simultaneous/history/k0;)V
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/k0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/h0;->j(Lcom/coloros/translate/ui/simultaneous/history/h0;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->b:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/h0;->i(Lcom/coloros/translate/ui/simultaneous/history/h0;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->b:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/k0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->c:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/k0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/k0;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->b:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/h0;->g(Lcom/coloros/translate/ui/simultaneous/history/h0;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->setTextBackgroundColor(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->b:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/h0;->h(Lcom/coloros/translate/ui/simultaneous/history/h0;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->c:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/h0;->g(Lcom/coloros/translate/ui/simultaneous/history/h0;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->setTextBackgroundColor(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->c:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/h0;->h(Lcom/coloros/translate/ui/simultaneous/history/h0;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->b:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->b()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->b:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/h0;->f(Lcom/coloros/translate/ui/simultaneous/history/h0;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->c:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->b()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->c:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/h0;->f(Lcom/coloros/translate/ui/simultaneous/history/h0;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/i0;

    invoke-direct {v1}, Lcom/coloros/translate/ui/simultaneous/history/i0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->f:Lcom/coloros/translate/ui/simultaneous/history/h0;

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/j0;

    invoke-direct {v1, p1, p0}, Lcom/coloros/translate/ui/simultaneous/history/j0;-><init>(Lcom/coloros/translate/ui/simultaneous/history/k0;Lcom/coloros/translate/ui/simultaneous/history/h0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
