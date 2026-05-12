.class final Lcom/coloros/translate/o$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/o;->y(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/o;


# direct methods
.method constructor <init>(Lcom/coloros/translate/o;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/o$f;->invoke(Landroid/view/View;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {p1}, Lcom/coloros/translate/o;->g(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0}, Lcom/coloros/translate/o;->f(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/o;->n(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0, p1}, Lcom/coloros/translate/o;->m(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V

    .line 5
    iget-object p1, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {p1}, Lcom/coloros/translate/o;->f(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/translate/o;->q(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V

    .line 6
    iget-object p1, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {p1}, Lcom/coloros/translate/o;->g(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/translate/o;->r(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V

    .line 7
    iget-object p1, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {p1}, Lcom/coloros/translate/o;->j(Lcom/coloros/translate/o;)Lcom/coloros/translate/o$b;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0}, Lcom/coloros/translate/o;->f(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/o$b;->n(Lcom/coloros/translate/b;)V

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {p1}, Lcom/coloros/translate/o;->k(Lcom/coloros/translate/o;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0}, Lcom/coloros/translate/o;->l(Lcom/coloros/translate/o;)Lcom/coloros/translate/o$b;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {p1}, Lcom/coloros/translate/o;->l(Lcom/coloros/translate/o;)Lcom/coloros/translate/o$b;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0}, Lcom/coloros/translate/o;->g(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/o$b;->n(Lcom/coloros/translate/b;)V

    .line 10
    iget-object p1, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {p1}, Lcom/coloros/translate/o;->l(Lcom/coloros/translate/o;)Lcom/coloros/translate/o$b;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0}, Lcom/coloros/translate/o;->h(Lcom/coloros/translate/o;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/o$b;->l(Ljava/util/List;)V

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/o$f;->this$0:Lcom/coloros/translate/o;

    invoke-static {p0}, Lcom/coloros/translate/o;->k(Lcom/coloros/translate/o;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
