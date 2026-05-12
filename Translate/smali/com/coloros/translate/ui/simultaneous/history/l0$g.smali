.class final Lcom/coloros/translate/ui/simultaneous/history/l0$g;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/l0;->J(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

.field final synthetic $newName:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/local/SimultaneousHistory;Ljava/lang/String;Lcom/coloros/translate/ui/simultaneous/history/l0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$g;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$g;->$newName:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$g;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0$g;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$g;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$g;->$newName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setNoteTitle(Ljava/lang/String;)V

    .line 3
    sget-object v0, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v0}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$g;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-interface {v0, v1}, Li2/d;->a(Lcom/coloros/translate/repository/local/SimultaneousHistory;)V

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$g;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->r(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$g;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->r(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method
