.class public final Lcom/coloros/translate/ui/dialoguetranslation/a1;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/util/List;

.field private d:I

.field private e:Z

.field private f:Z

.field public g:Lcom/coloros/translate/ui/dialoguetranslation/c1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->a:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->b:Z

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/translate/utils/z;->f(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->e:Z

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/j$a;->e(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->f:Z

    return-void
.end method


# virtual methods
.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    return-object p0
.end method

.method public final g()Lcom/coloros/translate/ui/dialoguetranslation/c1;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->g:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mViewModelTemp"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->b:Z

    if-eqz p0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->b:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public final h(ILcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    return-void
.end method

.method public i(Lcom/coloros/translate/ui/dialoguetranslation/r0;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->d:I

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/repository/local/Conversation;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->b:Z

    iget-boolean v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->e:Z

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->f:Z

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->g(Lcom/coloros/translate/repository/local/Conversation;ZZZ)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->e()Landroid/view/View;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/dialoguetranslation/r0;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget p2, Lcom/coloros/translate/R$layout;->face_to_face_item_layout_left:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/coloros/translate/R$layout;->face_to_face_item_layout_right:I

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/coloros/translate/ui/dialoguetranslation/r0;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->g()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->a:Landroid/content/Context;

    invoke-direct {p2, p1, v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/r0;-><init>(Landroid/view/View;Lcom/coloros/translate/ui/dialoguetranslation/c1;Landroid/content/Context;)V

    return-object p2
.end method

.method public k(Lcom/coloros/translate/ui/dialoguetranslation/r0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->i()V

    return-void
.end method

.method public l(Lcom/coloros/translate/ui/dialoguetranslation/r0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j()V

    return-void
.end method

.method public final m(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public final n(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRemoved(I)V

    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/r0;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->i(Lcom/coloros/translate/ui/dialoguetranslation/r0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->j(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/dialoguetranslation/r0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/r0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->k(Lcom/coloros/translate/ui/dialoguetranslation/r0;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/r0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->l(Lcom/coloros/translate/ui/dialoguetranslation/r0;)V

    return-void
.end method

.method public final p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->b:Z

    return-void
.end method

.method public final q(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/a1;->g:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    return-void
.end method
