.class Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->c1(Lcom/coloros/translate/engine/offline/f0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/offline/f0;

.field final synthetic b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coloros/translate/engine/offline/f0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    iput-object p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;->a:Lcom/coloros/translate/engine/offline/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;->a:Lcom/coloros/translate/engine/offline/f0;

    sget-object v0, Lcom/coloros/translate/utils/m;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/coloros/translate/engine/offline/f0;->c(Landroid/content/Context;Z)V

    const-string p2, "OfflineDownloadActivity"

    const-string v0, "showDeleteDialog onClick to delete"

    invoke-static {p2, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;->a:Lcom/coloros/translate/engine/offline/f0;

    sget-object v0, Lcom/coloros/translate/engine/offline/f0$a;->NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object v0, p2, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    iget-object p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;->a:Lcom/coloros/translate/engine/offline/f0;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;->a:Lcom/coloros/translate/engine/offline/f0;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$b;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
