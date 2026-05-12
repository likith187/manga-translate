.class Lcom/coloros/translate/engine/offline/x$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/offline/x;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/offline/x;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/x$a;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDownloadClearReceiver,receive packageName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OfflineDownloadManager"

    invoke-static {v0, p2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.android.providers.downloads"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/x$a;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/x;->h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/x$a;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/x;->h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/x$a;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/x;->d(Lcom/coloros/translate/engine/offline/x;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/d;->q(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
