.class public final Lcom/oplus/aiunit/auth/OcsApi;
.super Lcom/oplus/ocs/base/common/api/OplusApi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/auth/OcsApi$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/ocs/base/common/api/OplusApi<",
        "Lcom/oplus/ocs/base/common/api/Api$ApiOptions$NoOptions;",
        "Lcom/oplus/aiunit/auth/OcsApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final API:Lcom/oplus/ocs/base/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/Api<",
            "Lcom/oplus/ocs/base/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/oplus/aiunit/auth/OcsApi$Companion;

.field private static final TAG:Ljava/lang/String; = "OcsApi"


# instance fields
.field private final versionCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oplus/aiunit/auth/OcsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/auth/OcsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/auth/OcsApi;->Companion:Lcom/oplus/aiunit/auth/OcsApi$Companion;

    new-instance v0, Lcom/oplus/ocs/base/common/api/Api;

    new-instance v1, Lcom/oplus/aiunit/auth/OcsClientBuilder;

    invoke-direct {v1}, Lcom/oplus/aiunit/auth/OcsClientBuilder;-><init>()V

    new-instance v2, Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    invoke-direct {v2}, Lcom/oplus/ocs/base/common/api/Api$ClientKey;-><init>()V

    const-string v3, "OcsClient.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/base/common/api/Api;-><init>(Ljava/lang/String;Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;Lcom/oplus/ocs/base/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/oplus/aiunit/auth/OcsApi;->API:Lcom/oplus/ocs/base/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/aiunit/auth/OcsApi;->API:Lcom/oplus/ocs/base/common/api/Api;

    new-instance v5, Lcom/oplus/ocs/base/internal/ClientSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v5, v0, p3, v1}, Lcom/oplus/ocs/base/internal/ClientSettings;-><init>(Ljava/lang/String;ILjava/util/List;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/oplus/ocs/base/common/api/OplusApi;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/api/Api$ApiOptions;Lcom/oplus/ocs/base/internal/ClientSettings;Z)V

    iput p3, p0, Lcom/oplus/aiunit/auth/OcsApi;->versionCode:I

    return-void
.end method

.method private final toAIStr(Lcom/oplus/ocs/base/common/AuthResult;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "AuthResult("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/AuthResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/AuthResult;->getPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/AuthResult;->getPermitBits()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkAuthResult(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkAuthResult "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/auth/OcsApi;->toAIStr(Lcom/oplus/ocs/base/common/AuthResult;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OcsApi"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/auth/OcsApi;->versionCode:I

    return p0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public init()V
    .locals 1

    const-string p0, "OcsApi"

    const-string v0, "init"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final initialize()V
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->addThis2Cache()V

    return-void
.end method

.method public final isAuthSucceed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result p0

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final release()V
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->releaseClientKey()V

    return-void
.end method
