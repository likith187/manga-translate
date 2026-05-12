.class final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

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

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->invoke(Z)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->b1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->k1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/history/o0;->t()Landroidx/lifecycle/y;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/translate/ui/simultaneous/history/o;->q(ZLjava/util/Set;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->p1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    .line 4
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->o1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->f1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "mNavigationTool"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    const/16 v1, 0x8

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->e1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "mNavigationBarView"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    sget v2, Lcom/support/appcompat/R$color;->coui_transparence:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->h1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "mToolbar"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    .line 9
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    sget p1, Lcom/coloros/translate/R$string;->select_project:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->n1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
