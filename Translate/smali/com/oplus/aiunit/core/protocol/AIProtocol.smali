.class public final Lcom/oplus/aiunit/core/protocol/AIProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/protocol/AIProtocol$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/core/protocol/AIProtocol;

.field private static final MIN_VERSION_CODE_AIUNIT_PUBLISH:I = 0x61a81

.field private static final MIN_VERSION_CODE_AIUNIT_SUPPORT_QUERY:I = 0x61a84

.field public static final PROTOCOL_AI_SUB_SYS:I = 0xc8

.field private static final PROTOCOL_META_KEY:Ljava/lang/String; = "protocol_version_codes"

.field public static final PROTOCOL_TEL_AI:I = 0x8f

.field public static final PROTOCOL_VERSION_AIGC_CLOUD:I = 0x82

.field public static final PROTOCOL_VERSION_AIGC_EXP:I = 0x85

.field public static final PROTOCOL_VERSION_AIGC_LOCAL:I = 0x83

.field public static final PROTOCOL_VERSION_AIGC_SUMMARY_LOCAL:I = 0x84

.field public static final PROTOCOL_VERSION_GLOBAL_DEP:I = 0x8c

.field public static final PROTOCOL_VERSION_RECORD_SUMMARY:I = 0x8d

.field private static final TAG:Ljava/lang/String; = "AIProtocol"

.field private static final observerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/core/protocol/AIProtocol;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocol;->INSTANCE:Lcom/oplus/aiunit/core/protocol/AIProtocol;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocol;->observerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/aiunit/core/protocol/AIObserver;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->subscribe$lambda$5(Lcom/oplus/aiunit/core/protocol/AIObserver;)V

    return-void
.end method

.method public static final acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAISelf(Landroid/content/Context;)Ln8/q;

    move-result-object v0

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/data/ServiceType;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIUnitSupported$default(Landroid/content/Context;IILjava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIUnitCompatSupported(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acquireServiceType: isAIUnitSupport = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isOcrSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AIProtocol"

    invoke-static {v3, v2}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oplus/aiunit/core/utils/ApiVersionUtils;->isU()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "com.oplus.aiunit"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "com.coloros.ocrservice"

    invoke-static {p0, v1}, Lcom/oplus/aiunit/core/utils/AIUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "acquireServiceType [ai = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ocr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v0, p0, :cond_4

    :cond_2
    :goto_0
    sget-object p0, Lcom/oplus/aiunit/core/data/ServiceType;->AIUNIT:Lcom/oplus/aiunit/core/data/ServiceType;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    :cond_4
    sget-object p0, Lcom/oplus/aiunit/core/data/ServiceType;->OCRSERVICE:Lcom/oplus/aiunit/core/data/ServiceType;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    :goto_1
    return-object p0
.end method

.method public static synthetic b(Lcom/oplus/aiunit/core/protocol/AIObserver;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->subscribe$lambda$4(Lcom/oplus/aiunit/core/protocol/AIObserver;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/aiunit/core/protocol/AIObserver;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->subscribe$lambda$6(Lcom/oplus/aiunit/core/protocol/AIObserver;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/aiunit/core/protocol/AIObserver;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->subscribe$lambda$2(Lcom/oplus/aiunit/core/protocol/AIObserver;)V

    return-void
.end method

.method public static final getClientProtocol()I
    .locals 1

    const/16 v0, 0xcb

    return v0
.end method

.method public static final getExtras(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getClientProtocol()I

    move-result v1

    const-string v2, "package::sdk_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getClientProtocol()I

    move-result v1

    const-string v2, "ai::key::client_protocol"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "package::unit_api_level"

    const/16 v2, 0xcb

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "package::sdk_version_name"

    const-string v2, "2.0.3-beta3eac8c9"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AuthUtil;->getAuthStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "package::auth_style"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package::package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "package::client_pid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "package::client_uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getDownloadEnable(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "ai::key::download_enable"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getDownloadGroup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ai::key::download_group"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getMyAppVersion(Landroid/content/Context;)I

    move-result v1

    int-to-long v1, v1

    const-string v3, "package::package_version"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getCoreSdkVersion(Landroid/content/Context;)I

    move-result p0

    const-string v1, "package::core_sdk_version"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oplus/aiunit/core/utils/AIUtil;->isLLMMetaSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static final getServicePackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object p0

    sget-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocol$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.coloros.ocrservice"

    goto :goto_0

    :cond_1
    const-string p0, "com.oplus.aiunit"

    :goto_0
    return-object p0
.end method

.method public static final getServiceProtocol(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServicePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatPkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "protocol_version_codes"

    invoke-static {p0, p1, v0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/r;->m(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, -0x1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getServiceVersion = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIProtocol"

    invoke-static {v0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static final getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public static synthetic getUnitState$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public static final isAIGCCloud(I)Z
    .locals 1

    const/16 v0, 0x82

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isAIGCEXP(I)Z
    .locals 1

    const/16 v0, 0x85

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isAIGCLocal(I)Z
    .locals 1

    const/16 v0, 0x83

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isAIGCLocalSummary(I)Z
    .locals 1

    const/16 v0, 0x84

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isAISelf(Landroid/content/Context;)Ln8/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ln8/q;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oplus.aiunit"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ln8/q;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->AIUNIT:Lcom/oplus/aiunit/core/data/ServiceType;

    invoke-direct {p0, v0, v1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.coloros.ocrservice"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ln8/q;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->OCRSERVICE:Lcom/oplus/aiunit/core/data/ServiceType;

    invoke-direct {p0, v0, v1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ln8/q;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    invoke-direct {p0, v0, v1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public static final isAISubSys(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isAIUnitCompatSupported(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/aiunit/core/utils/ApiVersionUtils;->isP()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AIProtocol"

    const-string v0, "sdk version is below P!"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "com.coloros.ocrservice"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AIUtil;->isMetaAIUnitSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isAIUnitSupported(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIUnitSupported$default(Landroid/content/Context;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isAIUnitSupported(Landroid/content/Context;I)Z
    .locals 2

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/aiunit/core/utils/ApiVersionUtils;->isP()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "AIProtocol"

    const-string p1, "sdk version is below P!"

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "com.oplus.aiunit"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lt p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic isAIUnitSupported$default(Landroid/content/Context;IILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const p1, 0x61a81

    :cond_0
    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIUnitSupported(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static final isDetectSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isDetectSupported$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isDetectSupported$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static final isDeviceSupported(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x61a81

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIUnitSupported(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIUnitCompatSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isGlobalDep(I)Z
    .locals 1

    const/16 v0, 0x8c

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isHardwareBitmapSupported(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AIUtil;->isHardwareBitmapSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isRecordSummary(I)Z
    .locals 1

    const/16 v0, 0x8d

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isRemoteSupportLLM(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object p0

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isTelAI(I)Z
    .locals 1

    const/16 v0, 0x8f

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isUnitSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    invoke-virtual {v1, p0, p1, v0}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->queryUnitSupported(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/core/data/ServiceType;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final onChange(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/data/AIConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->onChange$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final onChange(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/data/AIConfig;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configList"

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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIProtocol"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->Companion:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;->update$aiunit_sdk_toolkits_release(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onChange err. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic onChange$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->onChange(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public static final queryDetectInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DetectInfo;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/DetectData;->toDetectInfo()Lcom/oplus/aiunit/core/data/DetectInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final subscribe(Landroid/content/Context;Ljava/lang/String;ILcom/oplus/aiunit/core/protocol/AIObserver;Landroid/os/Handler;)V
    .locals 9

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->subscribe$default(Landroid/content/Context;Ljava/lang/String;ILcom/oplus/aiunit/core/protocol/AIObserver;Landroid/os/Handler;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final subscribe(Landroid/content/Context;Ljava/lang/String;ILcom/oplus/aiunit/core/protocol/AIObserver;Landroid/os/Handler;Landroid/os/Bundle;)V
    .locals 17

    .line 2
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v0, p5

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "detectName"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "observer"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "handler"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isTelAI(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/oplus/aiunit/core/protocol/a;

    invoke-direct {v0, v10}, Lcom/oplus/aiunit/core/protocol/a;-><init>(Lcom/oplus/aiunit/core/protocol/AIObserver;)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v12

    const-string v2, "package::detect_name"

    invoke-virtual {v12, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "package::unit_api_level"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v12, v2, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ai::key::method_call"

    const-string v3, "ai::value::protocol_method"

    invoke-virtual {v12, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ai::value::sub_method"

    const-string v3, "subscribe"

    invoke-virtual {v12, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    sget-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocol;->observerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;

    if-nez v2, :cond_3

    new-instance v2, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;

    invoke-direct {v2, v1, v8, v10, v11}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/core/protocol/AIObserver;Landroid/os/Handler;)V

    invoke-virtual {v2, v10}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->register(Lcom/oplus/aiunit/core/protocol/AIObserver;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object v13, v2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/oplus/aiunit/core/protocol/b;

    invoke-direct {v0, v10}, Lcom/oplus/aiunit/core/protocol/b;-><init>(Lcom/oplus/aiunit/core/protocol/AIObserver;)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    invoke-virtual {v2, v10}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->add(Lcom/oplus/aiunit/core/protocol/AIObserver;)V

    goto :goto_0

    :goto_1
    invoke-virtual {v13, v12}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->subscribeEquals(Landroid/os/Bundle;)Z

    move-result v0

    const-string v14, "AIProtocol"

    const-string v7, "subscribe "

    if-nez v0, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v2

    sget-object v0, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v6, 0x10

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v15, v7

    move-object/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "ai::key::call_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->newSubscribe(Landroid/os/Bundle;)V

    new-instance v0, Lcom/oplus/aiunit/core/protocol/c;

    invoke-direct {v0, v10}, Lcom/oplus/aiunit/core/protocol/c;-><init>(Lcom/oplus/aiunit/core/protocol/AIObserver;)V

    :goto_3
    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fail!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/core/protocol/d;

    invoke-direct {v0, v10}, Lcom/oplus/aiunit/core/protocol/d;-><init>(Lcom/oplus/aiunit/core/protocol/AIObserver;)V

    goto :goto_3

    :goto_4
    return-void

    :cond_6
    move-object v15, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " equals skip!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic subscribe$default(Landroid/content/Context;Ljava/lang/String;ILcom/oplus/aiunit/core/protocol/AIObserver;Landroid/os/Handler;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->subscribe(Landroid/content/Context;Ljava/lang/String;ILcom/oplus/aiunit/core/protocol/AIObserver;Landroid/os/Handler;Landroid/os/Bundle;)V

    return-void
.end method

.method private static final subscribe$lambda$2(Lcom/oplus/aiunit/core/protocol/AIObserver;)V
    .locals 1

    const-string v0, "$observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIObserver;->onSubscribeResult(I)V

    return-void
.end method

.method private static final subscribe$lambda$4(Lcom/oplus/aiunit/core/protocol/AIObserver;)V
    .locals 1

    const-string v0, "$observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIObserver;->onSubscribeResult(I)V

    return-void
.end method

.method private static final subscribe$lambda$5(Lcom/oplus/aiunit/core/protocol/AIObserver;)V
    .locals 1

    const-string v0, "$observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIObserver;->onSubscribeResult(I)V

    return-void
.end method

.method private static final subscribe$lambda$6(Lcom/oplus/aiunit/core/protocol/AIObserver;)V
    .locals 1

    const-string v0, "$observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIObserver;->onSubscribeResult(I)V

    return-void
.end method

.method public static final unsubscribe(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isTelAI(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocol;->observerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->unregister()V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    const-string v0, "package::detect_name"

    invoke-virtual {v7, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ai::key::method_call"

    const-string v2, "ai::value::protocol_method"

    invoke-virtual {v7, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ai::value::sub_method"

    const-string v2, "unsubscribe"

    invoke-virtual {v7, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v5

    sget-object v3, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "ai::key::call_status"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "unsubscribe "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AIProtocol"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public final getSdkName()Ljava/lang/String;
    .locals 0

    const-string p0, "2.0.3-beta3eac8c9"

    return-object p0
.end method
