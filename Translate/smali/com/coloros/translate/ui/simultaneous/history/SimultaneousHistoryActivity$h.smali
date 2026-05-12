.class public final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/ui/simultaneous/history/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->k1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->b1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->A(Ljava/util/Set;)V

    return-void
.end method

.method public b(Landroid/view/View;ILcom/coloros/translate/ui/simultaneous/history/n0;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->b1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/o;->k()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide p2

    const-string v0, "extra_key_note_id"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->l1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Landroidx/activity/result/b;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    const-class v0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p2, p3}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->k1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->b1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->A(Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;ILcom/coloros/translate/ui/simultaneous/history/n0;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p1, p2, p3, p2}, Lcom/coloros/translate/utils/n;->Z(Lcom/coloros/translate/utils/n;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->k1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o0;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/coloros/translate/ui/simultaneous/history/o0;->p(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->k1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity$h;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;->b1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;)Lcom/coloros/translate/ui/simultaneous/history/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->A(Ljava/util/Set;)V

    return-void
.end method
