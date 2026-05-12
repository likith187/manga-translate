.class Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$l;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$l;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPauseDownloadDialog whichButton:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  offlineDownloadActivity == null:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OfflineDownloadActivity"

    invoke-static {v2, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$l;->b:I

    invoke-static {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->B0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;I)V

    goto :goto_1

    :cond_3
    iget p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$l;->b:I

    invoke-static {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->E0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;I)V

    :goto_1
    return-void
.end method
