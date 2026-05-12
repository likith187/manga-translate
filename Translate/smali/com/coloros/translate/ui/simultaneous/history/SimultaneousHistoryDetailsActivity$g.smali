.class final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$g;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->B1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/local/SimultaneousHistory;Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$g;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$g;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$g;->invoke(Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$g;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$g;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->m1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Lcom/coloros/translate/ui/simultaneous/history/l0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->J(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$g;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$g;->$it:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    .line 5
    const-string v1, "extra_key_note_id"

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    const/4 p0, -0x1

    .line 7
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
