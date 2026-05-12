.class Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->b1(Lcom/coloros/translate/engine/offline/f0;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/translate/engine/offline/f0;

.field final synthetic c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;ZLcom/coloros/translate/engine/offline/f0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    iput-boolean p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;->a:Z

    iput-object p3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;->b:Lcom/coloros/translate/engine/offline/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    iget-boolean p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;->a:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/x;

    move-result-object p2

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;->b:Lcom/coloros/translate/engine/offline/f0;

    invoke-virtual {p2, p0, p1}, Lcom/coloros/translate/engine/offline/x;->M(Lcom/coloros/translate/engine/offline/f0;Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->p0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/x;

    move-result-object p2

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$e;->b:Lcom/coloros/translate/engine/offline/f0;

    iget-wide v0, p0, Lcom/coloros/translate/engine/offline/f0;->e:J

    new-array p0, p1, [J

    const/4 p1, 0x0

    aput-wide v0, p0, p1

    invoke-virtual {p2, p0}, Lcom/coloros/translate/engine/offline/x;->L([J)V

    :goto_0
    return-void
.end method
