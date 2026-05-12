.class final Lcom/coloros/translate/ui/simultaneous/history/l0$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/l0;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/local/SimultaneousHistory;Lcom/coloros/translate/ui/simultaneous/history/l0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$b;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    sget-object v0, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v0}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$b;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-interface {v1, v2}, Li2/d;->g(Lcom/coloros/translate/repository/local/SimultaneousHistory;)V

    .line 3
    invoke-virtual {v0}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/AppDatabase;->u()Li2/g;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$b;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Li2/g;->e(J)V

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$b;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioFile()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$b;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/utils/b;->e(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->s(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method
