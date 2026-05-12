.class public final Lcom/oplus/aiunit/core/AIUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/AIUnit$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

.field private static final TAG:Ljava/lang/String; = "AIUnit"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/AIUnit$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/AIUnit$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->addCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    return-void
.end method

.method public static final destroy()V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->destroy()V

    return-void
.end method

.method public static final getDetectData(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DetectData;
    .locals 1

    .line 1
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getDetectData(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    return-object p0
.end method

.method public static final getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;
    .locals 1

    .line 2
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    return-object p0
.end method

.method public static final getStableRunningInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getStableRunningInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public static final getUnstableRunningInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getUnstableRunningInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final getUnstableRunningInfo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 2
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getUnstableRunningInfo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static final init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/AIUnit$Companion;->init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    return-void
.end method

.method public static final init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;Z)V
    .locals 1

    .line 3
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/AIUnit$Companion;->init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;Z)V

    return-void
.end method

.method public static final isAIUnitCompatSupported(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isAIUnitCompatSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isAIUnitSupported(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isAIUnitSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isAIUnitSupported(Landroid/content/Context;I)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isAIUnitSupported(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static final isConnected()Z
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static final isDetectSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static final isDeviceSupported(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isDeviceSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isHardwareBitmapSupported(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isHardwareBitmapSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isStartedAndAvailable(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isStartedAndAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isUnitSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isUnitSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final queryDetectInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DetectInfo;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/AIUnit$Companion;->queryDetectInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DetectInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final remove(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->remove(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    return-void
.end method
