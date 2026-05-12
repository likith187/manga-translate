.class final Lcom/coloros/translate/ui/simultaneous/history/l0$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/l0;->G(J)V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$d;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    iput-wide p2, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$d;->$noteId:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0$d;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$d;->this$0:Lcom/coloros/translate/ui/simultaneous/history/l0;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->r(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;

    move-result-object v0

    .line 3
    sget-object v1, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v1}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v1

    iget-wide v2, p0, Lcom/coloros/translate/ui/simultaneous/history/l0$d;->$noteId:J

    invoke-interface {v1, v2, v3}, Li2/d;->b(J)Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method
