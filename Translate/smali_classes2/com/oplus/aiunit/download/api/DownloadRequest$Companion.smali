.class public final Lcom/oplus/aiunit/download/api/DownloadRequest$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/download/api/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/oplus/aiunit/download/api/DownloadRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildRequest(Landroid/os/Bundle;)Lcom/oplus/aiunit/download/api/DownloadRequest;
    .locals 5

    const-string p0, "body"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/download/api/DownloadRequest;

    invoke-direct {p0}, Lcom/oplus/aiunit/download/api/DownloadRequest;-><init>()V

    const-string v0, "package::scene_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setSceneName(Ljava/lang/String;)V

    const-string v0, "package::unit_name"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setDetectName(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/download/api/CustomTerms;->Companion:Lcom/oplus/aiunit/download/api/CustomTerms$Companion;

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/download/api/CustomTerms$Companion;->buildTerms(Landroid/os/Bundle;)Lcom/oplus/aiunit/download/api/CustomTerms;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setTerms(Lcom/oplus/aiunit/download/api/CustomTerms;)V

    const-string v0, "ai::download::key::enable_progress_ui"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setEnableProgressUI(Z)V

    const-string v0, "ai::download::key::enable_progress_callback"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setEnableProgressCallback(Z)V

    const-string v0, "ai::download::key::enable_cellular"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setEnableCellular(Z)V

    const-string v0, "ai::download::key::silence"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setSilence(Z)V

    const-string v0, "ai::download::key::pending_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v4, v0, Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setIntent(Landroid/app/PendingIntent;)V

    const-string v0, "ai::download::key::request_id"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->access$setRequestId$p(Lcom/oplus/aiunit/download/api/DownloadRequest;Ljava/lang/String;)V

    const-string v0, "ai::download::key::event_id"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setEventId$aiunit_sdk_download_release(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "ai::download::key::request_command"

    const-string v1, "DOWNLOAD"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/Command;->valueOf(Ljava/lang/String;)Lcom/oplus/aiunit/download/core/Command;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    sget-object v0, Lcom/oplus/aiunit/download/core/Command;->DOWNLOAD:Lcom/oplus/aiunit/download/core/Command;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setCommand(Lcom/oplus/aiunit/download/core/Command;)V

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setExtras(Landroid/os/Bundle;)V

    const-string v0, "ai::download::key::skip_confirm_ui"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setSkipConfirmUI(Z)V

    const-string v0, "package::unit_id_list"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setUnitIds(Ljava/util/ArrayList;)V

    :cond_1
    const-string v0, "package::detect_name_list"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setDetectNames(Ljava/util/ArrayList;)V

    :cond_2
    const-string v0, "ai::download::key::allow_auto_downloads"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setAllowAutoDownloads(Ljava/util/ArrayList;)V

    :cond_3
    return-object p0
.end method
