.class final Lcom/coloros/translate/o$h$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/o$h;->invoke()Lcom/coloros/translate/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/coloros/translate/o$b;

.field final synthetic this$0:Lcom/coloros/translate/o;


# direct methods
.method constructor <init>(Lcom/coloros/translate/o;Lcom/coloros/translate/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/o$h$a;->this$0:Lcom/coloros/translate/o;

    iput-object p2, p0, Lcom/coloros/translate/o$h$a;->$this_apply:Lcom/coloros/translate/o$b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lcom/coloros/translate/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/translate/o$h$a;->invoke(IILcom/coloros/translate/b;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(IILcom/coloros/translate/b;)V
    .locals 2

    const-string v0, "language"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/o$h$a;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0}, Lcom/coloros/translate/o;->g(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/o$h$a;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0}, Lcom/coloros/translate/o;->f(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/o;->n(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/o$h$a;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0, p3}, Lcom/coloros/translate/o;->m(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/o$h$a;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0}, Lcom/coloros/translate/o;->l(Lcom/coloros/translate/o;)Lcom/coloros/translate/o$b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/o$h$a;->this$0:Lcom/coloros/translate/o;

    invoke-static {v1}, Lcom/coloros/translate/o;->g(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/o$b;->n(Lcom/coloros/translate/b;)V

    .line 6
    iget-object v0, p0, Lcom/coloros/translate/o$h$a;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0}, Lcom/coloros/translate/o;->g(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/o;->r(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/o$h$a;->this$0:Lcom/coloros/translate/o;

    invoke-static {v0, p3}, Lcom/coloros/translate/o;->m(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/o$h$a;->$this_apply:Lcom/coloros/translate/o$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    .line 9
    iget-object p1, p0, Lcom/coloros/translate/o$h$a;->$this_apply:Lcom/coloros/translate/o$b;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    .line 10
    iget-object p1, p0, Lcom/coloros/translate/o$h$a;->this$0:Lcom/coloros/translate/o;

    invoke-static {p1}, Lcom/coloros/translate/o;->s(Lcom/coloros/translate/o;)V

    .line 11
    iget-object p0, p0, Lcom/coloros/translate/o$h$a;->this$0:Lcom/coloros/translate/o;

    invoke-static {p0, p3}, Lcom/coloros/translate/o;->q(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V

    return-void
.end method
