.class final Lcom/coloros/translate/ui/simultaneous/history/o0$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/o0;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/translate/repository/local/SimultaneousHistory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/coloros/translate/ui/simultaneous/history/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/translate/repository/local/SimultaneousHistory;",
            ">;",
            "Lcom/coloros/translate/ui/simultaneous/history/o0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$b;->$selectedItems:Ljava/util/List;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/simultaneous/history/o0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/o0$b;->invoke$lambda$1(Lcom/coloros/translate/ui/simultaneous/history/o0;)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/coloros/translate/ui/simultaneous/history/o0;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/o0;->w(Lcom/coloros/translate/ui/simultaneous/history/o0;ZILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/coloros/translate/ui/simultaneous/history/o0;->p(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o0$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    sget-object v0, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v0}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$b;->$selectedItems:Ljava/util/List;

    invoke-interface {v0, v1}, Li2/d;->c(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$b;->$selectedItems:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    .line 5
    sget-object v2, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v2}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/AppDatabase;->u()Li2/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Li2/g;->e(J)V

    .line 6
    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/utils/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/p0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/p0;-><init>(Lcom/coloros/translate/ui/simultaneous/history/o0;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, p0, v1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method
