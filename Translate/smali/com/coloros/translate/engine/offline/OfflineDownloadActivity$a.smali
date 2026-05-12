.class Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->e1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;->e()V

    return-void
.end method

.method private synthetic e()V
    .locals 2

    const-string v0, "OfflineDownloadActivity"

    const-string v1, "showPrivacyPolicyDialog releaseAssets"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->G0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "OfflineDownloadActivity"

    const-string v1, "showPrivacyPolicyDialog: doAfterRejected"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->finish()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "OfflineDownloadActivity"

    const-string v1, "showPrivacyPolicyDialog doAfterGranted"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/engine/offline/e0;->INSTANCE:Lcom/coloros/translate/engine/offline/e0;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/offline/e0;->q(Lcom/coloros/translate/engine/offline/i0;)V

    sget-object v0, Lcom/coloros/translate/engine/offline/a0;->INSTANCE:Lcom/coloros/translate/engine/offline/a0;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/a0;->f()V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->F0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V

    new-instance v0, Lcom/coloros/translate/engine/offline/p;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/p;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$a;)V

    const-string p0, "request_download_offline_info"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/u0;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
