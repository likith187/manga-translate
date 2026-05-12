.class final Lcom/coloros/translate/ui/simultaneous/history/l0$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/l0;->H(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $noteId:J

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/l0;J)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$e;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    iput-wide p2, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$e;->$noteId:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0$e;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 19

    move-object/from16 v0, p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$e;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-static {v2}, Lcom/coloros/translate/ui/simultaneous/history/l0;->q(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 4
    sget-object v3, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v3}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/repository/local/AppDatabase;->u()Li2/g;

    move-result-object v3

    .line 5
    iget-wide v4, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$e;->$noteId:J

    iget-object v6, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$e;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-static {v6}, Lcom/coloros/translate/ui/simultaneous/history/l0;->q(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x14

    invoke-interface {v3, v4, v5, v6, v7}, Li2/g;->d(JII)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lkotlin/collections/o;->H(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$e;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    .line 7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/translate/repository/local/SimultaneousSentence;

    .line 8
    invoke-static {v4, v6}, Lcom/coloros/translate/ui/simultaneous/history/l0;->p(Lcom/coloros/translate/ui/simultaneous/history/l0;Lcom/coloros/translate/repository/local/SimultaneousSentence;)J

    move-result-wide v12

    if-eqz v5, :cond_0

    .line 9
    invoke-static {v4, v5}, Lcom/coloros/translate/ui/simultaneous/history/l0;->p(Lcom/coloros/translate/ui/simultaneous/history/l0;Lcom/coloros/translate/repository/local/SimultaneousSentence;)J

    move-result-wide v8

    :goto_1
    move-wide v14, v8

    goto :goto_2

    :cond_0
    const-wide v8, 0x7fffffffffffffffL

    goto :goto_1

    .line 10
    :goto_2
    new-instance v5, Lcom/coloros/translate/ui/simultaneous/history/k0;

    .line 11
    invoke-virtual {v6}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getMsgId()J

    move-result-wide v9

    const-wide/16 v16, 0x3e8

    .line 12
    div-long v16, v12, v16

    invoke-static/range {v16 .. v17}, Lcom/coloros/translate/ui/simultaneous/utils/d;->a(J)Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-virtual {v6}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getFromText()Ljava/lang/String;

    move-result-object v16

    .line 14
    invoke-virtual {v6}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getToText()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object v8, v5

    .line 15
    invoke-direct/range {v8 .. v18}, Lcom/coloros/translate/ui/simultaneous/history/k0;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    .line 16
    invoke-interface {v1, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v5, v6

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 18
    invoke-static {v2}, Lkotlin/collections/o;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/ui/simultaneous/history/k0;

    invoke-static {v1}, Lkotlin/collections/o;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/ui/simultaneous/history/k0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/simultaneous/history/k0;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/coloros/translate/ui/simultaneous/history/k0;->j(J)V

    .line 19
    :cond_2
    iget-object v3, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$e;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-static {v3}, Lcom/coloros/translate/ui/simultaneous/history/l0;->q(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 20
    new-instance v3, Lcom/coloros/translate/ui/simultaneous/history/k0;

    const-string v17, ""

    const/16 v18, 0x0

    const-wide/16 v9, -0x1

    const-string v11, ""

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string v16, ""

    move-object v8, v3

    invoke-direct/range {v8 .. v18}, Lcom/coloros/translate/ui/simultaneous/history/k0;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    :cond_4
    iget-object v0, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$e;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->q(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v2}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method
