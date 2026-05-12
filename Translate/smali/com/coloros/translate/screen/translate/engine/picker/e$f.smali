.class final Lcom/coloros/translate/screen/translate/engine/picker/e$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/picker/e;->x(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/picker/e;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->invoke(Landroid/view/View;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->i(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->f(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {v1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->g(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->j(Lcom/coloros/translate/screen/translate/engine/language/a;Lcom/coloros/translate/screen/translate/engine/language/a;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->g(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->f(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->n(Lcom/coloros/translate/screen/translate/engine/picker/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {v0, p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->m(Lcom/coloros/translate/screen/translate/engine/picker/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V

    .line 6
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->q(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    .line 7
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->j(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->f(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->n(Lcom/coloros/translate/screen/translate/engine/language/a;)V

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->k(Lcom/coloros/translate/screen/translate/engine/picker/e;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->l(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->l(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->g(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->n(Lcom/coloros/translate/screen/translate/engine/language/a;)V

    .line 10
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->l(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->h(Lcom/coloros/translate/screen/translate/engine/picker/e;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->l(Ljava/util/List;)V

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->k(Lcom/coloros/translate/screen/translate/engine/picker/e;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
