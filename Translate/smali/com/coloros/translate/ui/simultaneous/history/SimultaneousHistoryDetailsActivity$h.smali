.class final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$h;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->B1()V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$h;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$h;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$h;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->g1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$h;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->n1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$h;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->j1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$h;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 5
    invoke-static {v1, v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->q1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;Landroid/media/MediaPlayer;)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$h;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->m1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Lcom/coloros/translate/ui/simultaneous/history/l0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->u()V

    return-void
.end method
