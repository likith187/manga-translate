.class final Lcom/coloros/translate/ui/simultaneous/history/o0$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/o0;->v(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isLoadMore:Z

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;


# direct methods
.method constructor <init>(ZLcom/coloros/translate/ui/simultaneous/history/o0;)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$c;->$isLoadMore:Z

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o0$c;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 9

    .line 2
    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$c;->$isLoadMore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->o(Lcom/coloros/translate/ui/simultaneous/history/o0;)Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    sget-object v3, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v3}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v3

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x14

    invoke-interface {v3, v4, v5}, Li2/d;->d(II)Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    .line 8
    new-instance v5, Lcom/coloros/translate/ui/simultaneous/history/n0;

    .line 9
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getTimestamp()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "format(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/coloros/translate/ui/simultaneous/utils/d;->a(J)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-direct {v5, v4, v6, v7}, Lcom/coloros/translate/ui/simultaneous/history/n0;-><init>(Lcom/coloros/translate/repository/local/SimultaneousHistory;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->o(Lcom/coloros/translate/ui/simultaneous/history/o0;)Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method
