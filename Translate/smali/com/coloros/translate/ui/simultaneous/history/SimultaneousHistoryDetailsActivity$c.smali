.class final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$c;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$c;->invoke(Ljava/util/List;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/translate/ui/simultaneous/history/k0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->h1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Lcom/coloros/translate/ui/simultaneous/history/h0;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->submitList(Ljava/util/List;)V

    return-void
.end method
