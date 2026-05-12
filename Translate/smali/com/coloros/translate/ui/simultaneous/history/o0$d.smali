.class final Lcom/coloros/translate/ui/simultaneous/history/o0$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/o0;->y(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $noteId:J

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/o0;J)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$d;->this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;

    iput-wide p2, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$d;->$noteId:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o0$d;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$d;->this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->o(Lcom/coloros/translate/ui/simultaneous/history/o0;)Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    sget-object v2, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v2}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v2

    iget-wide v3, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$d;->$noteId:J

    invoke-interface {v2, v3, v4}, Li2/d;->b(J)Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v2

    iget-wide v3, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$d;->$noteId:J

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$d;->this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;

    const/4 v5, 0x0

    if-nez v2, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/ui/simultaneous/history/n0;

    .line 6
    invoke-virtual {v2}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-nez v6, :cond_0

    move-object v5, v2

    :cond_1
    if-eqz v5, :cond_2

    .line 7
    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->o(Lcom/coloros/translate/ui/simultaneous/history/o0;)Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/n0;

    .line 10
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getTimestamp()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/coloros/translate/ui/simultaneous/utils/d;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-direct {v0, v2, v1, v3}, Lcom/coloros/translate/ui/simultaneous/history/n0;-><init>(Lcom/coloros/translate/repository/local/SimultaneousHistory;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->o(Lcom/coloros/translate/ui/simultaneous/history/o0;)Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->o(Lcom/coloros/translate/ui/simultaneous/history/o0;)Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Lcom/coloros/translate/ui/simultaneous/history/n0;

    .line 17
    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_4

    move-object v3, v0

    .line 18
    :cond_4
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v1, v5}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
