.class final Lcom/coloros/translate/ui/simultaneous/history/l0$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/l0;->B(JLw8/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callBack:Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/l;"
        }
    .end annotation
.end field

.field final synthetic $noteId:J

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;


# direct methods
.method constructor <init>(JLcom/coloros/translate/ui/simultaneous/history/l0;Lw8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/coloros/translate/ui/simultaneous/history/l0;",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->$noteId:J

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    iput-object p4, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->$callBack:Lw8/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lw8/l;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->invoke$lambda$5(Lw8/l;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static final invoke$lambda$5(Lw8/l;Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "$callBack"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shareText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 18

    move-object/from16 v0, p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v2}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/AppDatabase;->u()Li2/g;

    move-result-object v2

    .line 4
    iget-wide v3, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->$noteId:J

    invoke-interface {v2, v3, v4}, Li2/g;->f(J)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lkotlin/collections/o;->H(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/translate/repository/local/SimultaneousSentence;

    .line 7
    invoke-static {v3, v6}, Lcom/coloros/translate/ui/simultaneous/history/l0;->p(Lcom/coloros/translate/ui/simultaneous/history/l0;Lcom/coloros/translate/repository/local/SimultaneousSentence;)J

    move-result-wide v11

    if-eqz v5, :cond_0

    .line 8
    invoke-static {v3, v5}, Lcom/coloros/translate/ui/simultaneous/history/l0;->p(Lcom/coloros/translate/ui/simultaneous/history/l0;Lcom/coloros/translate/repository/local/SimultaneousSentence;)J

    move-result-wide v7

    :goto_1
    move-wide v13, v7

    goto :goto_2

    :cond_0
    const-wide v7, 0x7fffffffffffffffL

    goto :goto_1

    .line 9
    :goto_2
    new-instance v5, Lcom/coloros/translate/ui/simultaneous/history/k0;

    .line 10
    invoke-virtual {v6}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getMsgId()J

    move-result-wide v8

    const-wide/16 v15, 0x3e8

    .line 11
    div-long v15, v11, v15

    invoke-static/range {v15 .. v16}, Lcom/coloros/translate/ui/simultaneous/utils/d;->a(J)Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-virtual {v6}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getFromText()Ljava/lang/String;

    move-result-object v15

    .line 13
    invoke-virtual {v6}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getToText()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object v7, v5

    .line 14
    invoke-direct/range {v7 .. v17}, Lcom/coloros/translate/ui/simultaneous/history/k0;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    .line 15
    invoke-interface {v1, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v5, v6

    goto :goto_0

    .line 16
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget-object v3, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-static {v3}, Lcom/coloros/translate/ui/simultaneous/history/l0;->r(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    const-string v5, "\n"

    if-eqz v3, :cond_2

    iget-object v6, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    .line 18
    invoke-virtual {v3}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteTitle()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {v6}, Lcom/coloros/translate/ui/simultaneous/history/l0;->o(Lcom/coloros/translate/ui/simultaneous/history/l0;)Ljava/text/SimpleDateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getTimestamp()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_2
    iget-object v3, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    .line 21
    invoke-static {v3}, Lcom/coloros/translate/ui/simultaneous/history/l0;->t(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 22
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/ui/simultaneous/history/k0;

    .line 23
    invoke-virtual {v3}, Lcom/coloros/translate/ui/simultaneous/history/k0;->c()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3}, Lcom/coloros/translate/ui/simultaneous/history/k0;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 25
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/ui/simultaneous/history/k0;

    .line 26
    invoke-virtual {v3}, Lcom/coloros/translate/ui/simultaneous/history/k0;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 27
    :cond_4
    iget-object v0, v0, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->$callBack:Lw8/l;

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/m0;

    invoke-direct {v1, v0, v2}, Lcom/coloros/translate/ui/simultaneous/history/m0;-><init>(Lw8/l;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1, v0, v4}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method
