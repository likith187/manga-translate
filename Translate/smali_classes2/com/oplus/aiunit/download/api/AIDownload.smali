.class public final Lcom/oplus/aiunit/download/api/AIDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/download/api/AIDownload;

.field private static final TAG:Ljava/lang/String; = "AIDownload"

.field private static aiDownloadImpl:Lcom/oplus/aiunit/download/core/AIDownloadImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/download/api/AIDownload;

    invoke-direct {v0}, Lcom/oplus/aiunit/download/api/AIDownload;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/download/api/AIDownload;->INSTANCE:Lcom/oplus/aiunit/download/api/AIDownload;

    new-instance v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-direct {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/download/api/AIDownload;->aiDownloadImpl:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cancelAll()V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/download/api/AIDownload;->aiDownloadImpl:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-virtual {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->cancelAll()V

    return-void
.end method

.method public static final cancelByName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/download/api/AIDownload;->aiDownloadImpl:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public static final destroy()V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/download/api/AIDownload;->aiDownloadImpl:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-virtual {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->destroy()V

    return-void
.end method

.method public static final getDownloadService(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isGlobalDep(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static final isDownloadSupport(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/download/api/AIDownload;->getDownloadService(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isDownloading(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/download/api/AIDownload;->aiDownloadImpl:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->isDownloading(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isIDListSupport(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x8f

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final queryByName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/aiunit/download/api/AIDownload;->queryByName$default(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final queryByName(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/oplus/aiunit/download/api/AIDownload;->queryByName$default(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final queryByName(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/oplus/aiunit/download/api/AIDownload;->queryByName$default(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final queryByName(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;IZ)V
    .locals 8

    .line 4
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/download/api/AIDownload;->getDownloadService(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v6

    if-eqz v6, :cond_0

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq v6, v0, :cond_0

    sget-object v1, Lcom/oplus/aiunit/download/api/AIDownload;->aiDownloadImpl:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->query(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;ILcom/oplus/aiunit/core/data/ServiceType;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "AIDownload"

    const-string p1, "queryByName service not support!"

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/oplus/aiunit/download/core/DownloadListener;->onQuery(Lcom/oplus/aiunit/download/core/DownloadInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic queryByName$default(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;IZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x8

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/download/api/AIDownload;->queryByName(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;IZ)V

    return-void
.end method

.method public static final register(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/download/api/AIDownload;->getDownloadService(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/oplus/aiunit/download/api/AIDownload;->aiDownloadImpl:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->register(Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "register "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fail by service not support!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AIDownload"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7c

    invoke-interface {p2, p0}, Lcom/oplus/aiunit/download/core/DownloadListener;->onFail(I)V

    :goto_0
    return-void
.end method

.method public static final removeOnly(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/download/api/AIDownload;->aiDownloadImpl:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->removeRequest(Ljava/lang/String;)V

    return-void
.end method

.method public static final start(Landroid/content/Context;Lcom/oplus/aiunit/download/api/DownloadRequest;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getDownloadListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x7d

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/download/core/DownloadListener;->onFail(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/oplus/aiunit/download/api/AIDownload;->getDownloadService(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq v0, v1, :cond_3

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAISelf(Landroid/content/Context;)Ln8/q;

    move-result-object v1

    invoke-virtual {v1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "APP_CALL"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setEventId$aiunit_sdk_download_release(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/oplus/aiunit/download/api/AIDownload;->aiDownloadImpl:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-virtual {v1, p0, p1, v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->start(Landroid/content/Context;Lcom/oplus/aiunit/download/api/DownloadRequest;Lcom/oplus/aiunit/core/data/ServiceType;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "start "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " fail by service not support!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AIDownload"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getDownloadListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 p1, 0x7c

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/download/core/DownloadListener;->onFail(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static final startWithEventId(Landroid/content/Context;Lcom/oplus/aiunit/download/api/DownloadRequest;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAISelf(Landroid/content/Context;)Ln8/q;

    move-result-object v0

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setEventId$aiunit_sdk_download_release(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/oplus/aiunit/download/api/AIDownload;->start(Landroid/content/Context;Lcom/oplus/aiunit/download/api/DownloadRequest;)V

    return-void
.end method
