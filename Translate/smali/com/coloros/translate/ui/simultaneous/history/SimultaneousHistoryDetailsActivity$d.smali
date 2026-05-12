.class final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$d;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$d;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$d;->invoke(I)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$d;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->i1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "mHistoryRecyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
