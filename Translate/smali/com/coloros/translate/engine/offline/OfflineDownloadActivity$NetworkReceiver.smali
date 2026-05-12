.class public Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "OfflineDownloadActivity"

    const-string v1, "NetworkReceiver onReceive requestOfflineTranslateInfo"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/translate/engine/offline/b0;->INSTANCE:Lcom/coloros/translate/engine/offline/b0;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/b0;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "NetworkReceiver onReceive"

    const-string v1, "OfflineDownloadActivity"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "NetworkReceiver onReceive action : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$NetworkReceiver;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->t0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "NetworkReceiver mIsListenNetWork"

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Lcom/coloros/translate/engine/offline/t;

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/t;-><init>(Landroid/content/Context;)V

    const-wide/16 p1, 0x3e8

    const-string v0, "request_download_offline_info"

    invoke-static {v0, p0, p1, p2}, Lcom/coloros/translate/utils/u0;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
