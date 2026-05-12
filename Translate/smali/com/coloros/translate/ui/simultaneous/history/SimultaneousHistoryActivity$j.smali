.class final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$j;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->D1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/coloros/translate/ui/simultaneous/history/n0;

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Lcom/coloros/translate/ui/simultaneous/history/n0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$j;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$j;->$it:Lcom/coloros/translate/ui/simultaneous/history/n0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$j;->invoke(Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$j;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->k1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$j;->$it:Lcom/coloros/translate/ui/simultaneous/history/n0;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/o0;->z(Lcom/coloros/translate/ui/simultaneous/history/n0;Ljava/lang/String;)V

    return-void
.end method
