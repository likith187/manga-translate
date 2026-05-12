.class public Lcom/coloros/translate/ui/simultaneous/history/o;
.super Landroidx/recyclerview/widget/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/history/o$b;,
        Lcom/coloros/translate/ui/simultaneous/history/o$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Ln8/j;

.field private c:Lcom/coloros/translate/ui/simultaneous/history/o$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/o$a;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/history/o$a;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/q;-><init>(Landroidx/recyclerview/widget/k$f;)V

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/history/o$d;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/history/o$d;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->b:Ln8/j;

    return-void
.end method

.method public static final synthetic f(Lcom/coloros/translate/ui/simultaneous/history/o;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->j()Z

    move-result p0

    return p0
.end method

.method private final i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/q;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final g()Lcom/coloros/translate/ui/simultaneous/history/o$c;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->c:Lcom/coloros/translate/ui/simultaneous/history/o$c;

    return-object p0
.end method

.method public final h()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->a:Z

    return p0
.end method

.method public l(Lcom/coloros/translate/ui/simultaneous/history/o$b;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/q;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/n0;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0, p2}, Lcom/coloros/translate/ui/simultaneous/history/o$b;->e(Lcom/coloros/translate/ui/simultaneous/history/n0;I)V

    :cond_0
    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/simultaneous/history/o$b;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/coloros/translate/R$layout;->item_simultaneous_history:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/coloros/translate/ui/simultaneous/history/o$b;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p2, p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/o$b;-><init>(Lcom/coloros/translate/ui/simultaneous/history/o;Landroid/view/View;)V

    return-object p2
.end method

.method public final n()Ljava/util/Set;
    .locals 5

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->a:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/q;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/q;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/q;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/ui/simultaneous/history/n0;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lcom/coloros/translate/ui/simultaneous/history/o$c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->c:Lcom/coloros/translate/ui/simultaneous/history/o$c;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/o$b;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/o;->l(Lcom/coloros/translate/ui/simultaneous/history/o$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/o;->m(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/simultaneous/history/o$b;

    move-result-object p0

    return-object p0
.end method

.method public final p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->a:Z

    return-void
.end method

.method public final q(ZLjava/util/Set;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->a:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->a:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/history/n0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/q;->submitList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o;->c:Lcom/coloros/translate/ui/simultaneous/history/o$c;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coloros/translate/ui/simultaneous/history/o$c;->a()V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/q;->submitList(Ljava/util/List;)V

    return-void
.end method
