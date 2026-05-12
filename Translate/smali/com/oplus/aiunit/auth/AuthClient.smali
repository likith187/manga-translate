.class public final Lcom/oplus/aiunit/auth/AuthClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/auth/AuthClient$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/auth/AuthClient$Companion;

.field private static final MIN_VERSION_CODE_AIUNIT_SUPPORT_OCS:I = 0x13d626

.field private static final OCS_MIN_VERSION_SUPPORTED:I = 0x2dce91

.field private static final OCS_PACKAGE_NAME_1:Ljava/lang/String; = "com.oplus.ocs"

.field private static final OCS_PACKAGE_NAME_2:Ljava/lang/String; = "com.coloros.ocs.opencapabilityservice"

.field private static final TAG:Ljava/lang/String; = "AuthClient"


# instance fields
.field private final context:Landroid/content/Context;

.field private ocsApi:Lcom/oplus/aiunit/auth/OcsApi;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/auth/AuthClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/auth/AuthClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/auth/AuthClient;->Companion:Lcom/oplus/aiunit/auth/AuthClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    return-void
.end method

.method private final authInner(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/oplus/aiunit/core/utils/AuthUtil;->checkSelfAuthenticatePermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final authOcs-IoAF18A(Lcom/oplus/aiunit/auth/AuthCallback;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/oplus/aiunit/auth/AuthClient;->initOcs()Lcom/oplus/aiunit/auth/OcsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, La6/a;

    invoke-direct {v1, p1}, La6/a;-><init>(Lcom/oplus/aiunit/auth/AuthCallback;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/base/common/api/OplusApi;->addOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;)Lcom/oplus/ocs/base/common/api/OplusApi;

    new-instance v1, La6/b;

    invoke-direct {v1, p1, p0}, La6/b;-><init>(Lcom/oplus/aiunit/auth/AuthCallback;Lcom/oplus/aiunit/auth/AuthClient;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/base/common/api/OplusApi;->addOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;)Lcom/oplus/ocs/base/common/api/OplusApi;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authOcs err. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthClient"

    invoke-static {v2, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/lang/ReflectiveOperationException;

    if-nez v1, :cond_2

    instance-of v0, v0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorAuthorizeFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    :goto_3
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/oplus/aiunit/auth/AuthCallback;->onFail(I)V

    goto :goto_5

    :cond_2
    :goto_4
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->KErrorClassNotFound:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_3

    :cond_3
    :goto_5
    return-object p0
.end method

.method private static final authOcs_IoAF18A$lambda$5$lambda$4$lambda$2(Lcom/oplus/aiunit/auth/AuthCallback;)V
    .locals 2

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AuthClient"

    const-string v1, "authOcs success."

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/aiunit/auth/AuthCallback;->onSuccess()V

    return-void
.end method

.method private static final authOcs_IoAF18A$lambda$5$lambda$4$lambda$3(Lcom/oplus/aiunit/auth/AuthCallback;Lcom/oplus/aiunit/auth/AuthClient;Lcom/oplus/ocs/base/common/ConnectionResult;)V
    .locals 2

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authOcs fail "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oplus/ocs/base/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/ocs/base/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthClient"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oplus/ocs/base/common/ConnectionResult;->getErrorCode()I

    move-result p2

    invoke-interface {p0, p2}, Lcom/oplus/aiunit/auth/AuthCallback;->onFail(I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/auth/AuthClient;->release()V

    return-void
.end method

.method private final initOcs()Lcom/oplus/aiunit/auth/OcsApi;
    .locals 4

    iget-object v0, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/oplus/aiunit/auth/AuthClient;->ocsApi:Lcom/oplus/aiunit/auth/OcsApi;

    if-nez v1, :cond_1

    new-instance v1, Lcom/oplus/aiunit/auth/OcsApi;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/16 v3, 0xcb

    invoke-direct {v1, v0, v2, v3}, Lcom/oplus/aiunit/auth/OcsApi;-><init>(Landroid/content/Context;ZI)V

    iput-object v1, p0, Lcom/oplus/aiunit/auth/AuthClient;->ocsApi:Lcom/oplus/aiunit/auth/OcsApi;

    invoke-virtual {v1}, Lcom/oplus/aiunit/auth/OcsApi;->release()V

    :cond_1
    iget-object p0, p0, Lcom/oplus/aiunit/auth/AuthClient;->ocsApi:Lcom/oplus/aiunit/auth/OcsApi;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/aiunit/auth/OcsApi;->initialize()V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private final isAIUnitVersionSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    const-string v0, "com.oplus.aiunit"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const v0, 0x13d626

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic isAuthSucceed$default(Lcom/oplus/aiunit/auth/AuthClient;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/auth/AuthClient;->isAuthSucceed(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic isOcsAuthSucceed$default(Lcom/oplus/aiunit/auth/AuthClient;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/auth/AuthClient;->isOcsAuthSucceed(Z)Z

    move-result p0

    return p0
.end method

.method private final isOcsVersionSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    const-string v1, "com.oplus.ocs"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AIUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0x2dce91

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    const-string v0, "com.coloros.ocs.opencapabilityservice"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lt p0, v1, :cond_0

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


# virtual methods
.method public final authenticate(Lcom/oplus/aiunit/auth/AuthCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isDeviceSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorDeviceNotSupported:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/oplus/aiunit/auth/AuthCallback;->onFail(I)V

    const-string p0, "AuthClient"

    const-string p1, "authenticate device not supported!"

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/auth/AuthClient;->isOcsAuthMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/auth/AuthClient;->authInner(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/oplus/aiunit/auth/AuthCallback;->onSuccess()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorAuthorizeFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/oplus/aiunit/auth/AuthCallback;->onFail(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/aiunit/auth/AuthClient;->authOcs-IoAF18A(Lcom/oplus/aiunit/auth/AuthCallback;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final authorize(Lcom/oplus/aiunit/auth/AuthCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/auth/AuthClient;->authenticate(Lcom/oplus/aiunit/auth/AuthCallback;)V

    return-void
.end method

.method public final checkSignPermission()Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AuthUtil;->checkSelfAuthenticatePermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final isAuthSucceed()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/oplus/aiunit/auth/AuthClient;->isAuthSucceed$default(Lcom/oplus/aiunit/auth/AuthClient;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isAuthSucceed(Z)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aiunit/auth/AuthClient;->isOcsAuthMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/auth/AuthClient;->isOcsAuthSucceed(Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/auth/AuthClient;->checkSignPermission()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isOcsAuthMode()Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AuthUtil;->isInnerAuth(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isOcsAuthSucceed()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/oplus/aiunit/auth/AuthClient;->isOcsAuthSucceed$default(Lcom/oplus/aiunit/auth/AuthClient;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isOcsAuthSucceed(Z)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/auth/AuthClient;->ocsApi:Lcom/oplus/aiunit/auth/OcsApi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/aiunit/auth/OcsApi;->isAuthSucceed()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAISubSys(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/aiunit/auth/AuthClient;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/aiunit/toolkits/AISettings;->isAuthSucceed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/aiunit/auth/AuthClient;->release()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public final isSupportOcs()Z
    .locals 1

    invoke-direct {p0}, Lcom/oplus/aiunit/auth/AuthClient;->isOcsVersionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/aiunit/auth/AuthClient;->isAIUnitVersionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/auth/AuthClient;->ocsApi:Lcom/oplus/aiunit/auth/OcsApi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/aiunit/auth/OcsApi;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/aiunit/auth/AuthClient;->ocsApi:Lcom/oplus/aiunit/auth/OcsApi;

    return-void
.end method
