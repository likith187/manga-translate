.class public final Lcom/oplus/aiunit/core/AIUnit$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/AIUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getDetectData$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DetectData;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getUnitState$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public static synthetic getUnstableRunningInfo$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getUnstableRunningInfo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic init$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/AIUnit$Companion;->init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;Z)V

    return-void
.end method

.method public static synthetic isAIUnitSupported$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;IILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x61a81

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isAIUnitSupported(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic isDetectSupported$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 0

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/service/IServiceManager;->Companion:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->addConnectionCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    return-void
.end method

.method public final destroy()V
    .locals 0

    sget-object p0, Lcom/oplus/aiunit/core/service/IServiceManager;->Companion:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/aiunit/core/service/IServiceManager;->destroy()V

    return-void
.end method

.method public final getDetectData(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DetectData;
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getDetectData$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    return-object p0
.end method

.method public final getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "detectName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    return-object p0
.end method

.method public final getStableRunningInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const-string p0, "detectName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/service/IServiceManager;->Companion:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->getRunningUnitInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "detectName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final getUnstableRunningInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getUnstableRunningInfo$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getUnstableRunningInfo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getStableRunningInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/DetectData;->getData()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/oplus/aiunit/core/AIUnit$Companion;->init$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;ZILjava/lang/Object;)V

    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/aiunit/core/AIUnit$Companion;->init$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;ZILjava/lang/Object;)V

    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;Z)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p3}, Lcom/oplus/aiunit/core/utils/AILog;->init(Landroid/content/Context;Z)V

    .line 4
    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object p0

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "init for service: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AIUnit"

    invoke-static {v0, p3}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p3, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-ne p0, p3, :cond_1

    if-eqz p2, :cond_0

    .line 7
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorDeviceNotSupported:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/oplus/aiunit/core/callback/ConnectionCallback;->onServiceConnectFailed(I)V

    :cond_0
    return-void

    .line 8
    :cond_1
    sget-object p3, Lcom/oplus/aiunit/core/service/IServiceManager;->Companion:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    invoke-virtual {p3}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p3

    invoke-interface {p3, p1, p2, p0}, Lcom/oplus/aiunit/core/service/IServiceManager;->init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;Lcom/oplus/aiunit/core/data/ServiceType;)V

    return-void
.end method

.method public final isAIUnitCompatSupported(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIUnitCompatSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final isAIUnitSupported(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isAIUnitSupported$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isAIUnitSupported(Landroid/content/Context;I)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIUnitSupported(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public final isConnected()Z
    .locals 0

    sget-object p0, Lcom/oplus/aiunit/core/service/IServiceManager;->Companion:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/aiunit/core/service/IServiceManager;->isConnected()Z

    move-result p0

    return p0
.end method

.method public final isDetectSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isDetectSupported$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "detectName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final isDeviceSupported(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isDeviceSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final isHardwareBitmapSupported(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isHardwareBitmapSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final isStartedAndAvailable(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "detectName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/service/IServiceManager;->Companion:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->isStarted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isUnitSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "detectName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isUnitSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final queryDetectInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DetectInfo;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "detectName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x4

    invoke-static {p1, p2, p0, v0, p0}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/DetectData;->toDetectInfo()Lcom/oplus/aiunit/core/data/DetectInfo;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 0

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/service/IServiceManager;->Companion:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->removeConnectionCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    return-void
.end method
