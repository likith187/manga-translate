.class final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;->invoke(Ljava/util/List;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/translate/ui/simultaneous/history/n0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "mEmptyTextView"

    const-string v3, "mHistoryRecyclerView"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->i1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->d1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v5

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->a1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->b1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/o;->submitList(Ljava/util/List;)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->i1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->d1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->a1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v5

    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->m1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    if-nez p0, :cond_7

    const-string p0, "simuEmptyImg"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v5, p0

    :goto_1
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    :goto_2
    return-void
.end method
