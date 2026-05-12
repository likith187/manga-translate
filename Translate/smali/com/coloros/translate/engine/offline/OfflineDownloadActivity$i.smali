.class Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field private final a:I

.field private b:J

.field final synthetic c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->a:I

    return-void
.end method

.method private a(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/utils/i;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1, p1, v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->H0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coloros/translate/engine/offline/f0;Z)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->r0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/y;

    move-result-object v0

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/offline/y;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/x;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/coloros/translate/engine/offline/x;->M(Lcom/coloros/translate/engine/offline/f0;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget v1, Lcom/coloros/translate/engine/offline/R$string;->eto_no_network:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    iget-object p1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-static {p0, p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->A0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->PENDING:Lcom/coloros/translate/engine/offline/f0$a;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->DOWNLOADING:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->PAUSE:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v1, v2, :cond_6

    iget-wide v1, p1, Lcom/coloros/translate/engine/offline/f0;->d:J

    const-wide/16 v4, 0x3

    cmp-long v1, v1, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/utils/i;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0, p1, v3}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->H0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coloros/translate/engine/offline/f0;Z)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget v0, Lcom/coloros/translate/engine/offline/R$string;->eto_no_network:I

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/x;

    move-result-object p0

    iget-wide v1, p1, Lcom/coloros/translate/engine/offline/f0;->e:J

    new-array p1, v0, [J

    aput-wide v1, p1, v3

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/x;->K([J)V

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->DOWNLOADFIALED:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v1, v2, :cond_8

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/x;

    move-result-object p0

    iget-wide v1, p1, Lcom/coloros/translate/engine/offline/f0;->e:J

    new-array p1, v0, [J

    aput-wide v1, p1, v3

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/x;->l([J)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    iget p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->a:I

    invoke-static {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->J0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private b(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->r0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/y;

    move-result-object v0

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/offline/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->I0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coloros/translate/engine/offline/f0;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/engine/offline/f0;->c(Landroid/content/Context;Z)V

    sget-object v0, Lcom/coloros/translate/engine/offline/f0$a;->NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object v0, p1, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/f0;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/utils/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->H0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coloros/translate/engine/offline/f0;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->r0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/y;

    move-result-object v0

    iget-object v2, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/coloros/translate/engine/offline/y;->c(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/x;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/coloros/translate/engine/offline/x;->M(Lcom/coloros/translate/engine/offline/f0;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget v0, Lcom/coloros/translate/engine/offline/R$string;->eto_no_network:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->b:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->b:J

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/engine/offline/f0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick packageData state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadActivity"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v1, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->I0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coloros/translate/engine/offline/f0;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/coloros/translate/engine/offline/f0$a;->NEEDUPDATE:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->b(Lcom/coloros/translate/engine/offline/f0;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;->a(Lcom/coloros/translate/engine/offline/f0;)V

    :cond_3
    :goto_0
    return-void
.end method
