.class final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->A1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$f;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$f;->invoke(Z)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 5

    .line 2
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryDetailsActivity"

    const-string v1, "isDeleteFinish"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$f;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->m1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Lcom/coloros/translate/ui/simultaneous/history/l0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->x()Landroidx/lifecycle/y;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$f;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    const-string v2, "extra_key_note_id"

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    const/4 p1, -0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$f;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
