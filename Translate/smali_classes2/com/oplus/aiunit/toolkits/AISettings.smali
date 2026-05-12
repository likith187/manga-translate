.class public final Lcom/oplus/aiunit/toolkits/AISettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AIUNIT_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.oplus.aiunit.settings.AIUnitSettingsActivity"

.field private static final BOOT_GUIDE_CLASS_NAME:Ljava/lang/String; = "com.oplus.aiunit.settings.boot.BootGuideActivity"

.field private static final FROM_PACKAGE:Ljava/lang/String; = "from_package"

.field public static final INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

.field private static final LLM_SETTING_CLASS_NAME:Ljava/lang/String; = "com.oplus.aiunit.settings.AIGCHomeActivity"

.field private static final LOGIN_CLASS_NAME:Ljava/lang/String; = "com.oplus.aiunit.account.LoginActivity"

.field private static final NOTICE_DIALOG:I = 0x1

.field public static final NOTICE_DIALOG_OFFLINE:I = 0x0

.field public static final NOTICE_DIALOG_ONLINE:I = 0x1

.field private static final PRIVACY_CLASS_NAME:Ljava/lang/String; = "com.oplus.aiunit.settings.PrivacyTransparentActivity"

.field private static final SELECT_DIALOG:I = 0x0

.field private static final SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.oplus.aiunit.settings.PromptDialogActivity"

.field private static final TAG:Ljava/lang/String; = "AISettings"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/toolkits/AISettings;

    invoke-direct {v0}, Lcom/oplus/aiunit/toolkits/AISettings;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildHeaders(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public static synthetic buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final checkUpdate(Landroid/content/Context;ZLcom/oplus/aiunit/toolkits/callback/SettingsCallback;)Z
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/aiunit/toolkits/AISettings;->checkUpdate$default(Landroid/content/Context;ZLcom/oplus/aiunit/toolkits/callback/SettingsCallback;Landroid/os/Bundle;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final checkUpdate(Landroid/content/Context;ZLcom/oplus/aiunit/toolkits/callback/SettingsCallback;Landroid/os/Bundle;)Z
    .locals 4

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isGlobalDep(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCEXP(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p2, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->startPrivacyGuide(Landroid/content/Context;Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;Z)Z

    goto :goto_0

    :cond_0
    const-string p0, "AISettings"

    const-string p1, "checkUpdate is not exp"

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;->onSwitch(I)V

    :cond_1
    return p0

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/oplus/aiunit/toolkits/AISettings;->isPrivacyUIVisible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInProcessing:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;->onError(I)V

    :cond_3
    return v3

    :cond_4
    sget-object v1, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    invoke-direct {v1, p0, p3}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    if-eqz p2, :cond_5

    new-instance v1, Lcom/oplus/aiunit/toolkits/AISettings$checkUpdate$c$1;

    invoke-direct {v1, p2}, Lcom/oplus/aiunit/toolkits/AISettings$checkUpdate$c$1;-><init>(Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;)V

    const-string p2, "ai::key::dialog_type"

    invoke-virtual {p3, p2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "ai::key::ai_callback"

    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p2, "ai::key::settings_guide_enable"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oplus.aiunit.settings.PrivacyTransparentActivity"

    invoke-static {p0, p3, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic checkUpdate$default(Landroid/content/Context;ZLcom/oplus/aiunit/toolkits/callback/SettingsCallback;Landroid/os/Bundle;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/aiunit/toolkits/AISettings;->checkUpdate(Landroid/content/Context;ZLcom/oplus/aiunit/toolkits/callback/SettingsCallback;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static final closeLocalDetectSwitch(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/oplus/aiunit/toolkits/AISettings;->setLocalDetectSwitch(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static final dismissGuideDialog(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissGuideDialog"

    const-string v1, "AISettings"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCCloud(I)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    const-string p0, "is not cloud, return false"

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v6

    const-string v0, "package::unit_name"

    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ai::key::method_call"

    const-string v0, "ai::value::dismiss_settings_ui"

    invoke-virtual {v6, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "ai::key::settings_ui_status"

    invoke-virtual {p0, p1, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v10, 0x1

    :cond_1
    return v10
.end method

.method public static final getAuthorizeStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v9, -0x1

    if-ne v3, v0, :cond_0

    return v9

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "package::unit_name"

    invoke-virtual {v5, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ai::key::method_call"

    const-string v0, "ai::value::get_authorize_status"

    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "ai::key::authorize_status"

    invoke-virtual {p0, p1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    :cond_1
    return v9
.end method

.method public static final getDetectData(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DetectData;
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    return-object p0
.end method

.method public static final getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;
    .locals 9

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v1, 0x0

    if-eq v3, v0, :cond_3

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCCloud(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    invoke-direct {v0, p0, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const-string p2, "package::unit_name"

    invoke-virtual {v5, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ai::key::method_call"

    const-string v0, "ai::value::get_detect_data"

    invoke-virtual {v5, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    new-instance p2, Lcom/oplus/aiunit/core/data/DetectData;

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-direct {p2, p1, p0}, Lcom/oplus/aiunit/core/data/DetectData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isUnitSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    new-instance p2, Lcom/oplus/aiunit/core/data/DetectData;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    invoke-direct {p2, p1, p0}, Lcom/oplus/aiunit/core/data/DetectData;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p2, p1, v1}, Lcom/oplus/aiunit/core/data/DetectData;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/oplus/aiunit/core/data/DetectData;

    invoke-direct {p2, p1, v1}, Lcom/oplus/aiunit/core/data/DetectData;-><init>(Ljava/lang/String;Z)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getDetectData: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AISettings"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic getDetectData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DetectData;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    return-object p0
.end method

.method public static final getDetectDownloadType(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/DetectData;->getState()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NONE:Lcom/oplus/aiunit/core/data/DownloadType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_LOST:Lcom/oplus/aiunit/core/data/DownloadType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NEW:Lcom/oplus/aiunit/core/data/DownloadType;

    :goto_0
    return-object p0
.end method

.method public static synthetic getDetectDownloadType$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectDownloadType(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object p0

    return-object p0
.end method

.method public static final getLLMQueueStatus(Landroid/content/Context;)I
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v9, -0x1

    if-ne v3, v0, :cond_0

    return v9

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "ai::key::method_call"

    const-string v1, "ai::value::get_llm_queue_status"

    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "ai::key::llm_queue_status"

    invoke-virtual {p0, v0, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    :cond_1
    return v9
.end method

.method public static final getLLMSettingsList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-ne v3, v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v9, 0x0

    invoke-static {v0, p0, v9, v1, v9}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "ai::key::method_call"

    const-string v1, "ai::value::get_llm_settings"

    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "ai::key::llm_settings_list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    :cond_1
    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    return-object v9
.end method

.method public static final getLLMSettingsListByType(Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/aiunit/core/data/ServiceType;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v7

    const-string v0, "ai::key::method_call"

    const-string v1, "ai::value::get_llm_settings"

    invoke-virtual {v7, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v3 .. v10}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "ai::key::llm_settings_list"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object v2
.end method

.method public static final getLLMUserPreference(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/toolkits/AISettings;->isLLMSettingsAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v4

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-ne v4, v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v2, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v6

    const-string v0, "ai::key::method_call"

    const-string v2, "ai::value::get_llm_user_preference_settings"

    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package::unit_name"

    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "ai::key::llm_user_preference_result"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_2
    return v1
.end method

.method public static final getLastProvisionTimestamp(Landroid/content/Context;)J
    .locals 12

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const-string v9, "AISettings"

    const-wide/16 v10, 0x0

    if-ne v3, v0, :cond_0

    const-string p0, "getLastProvisionTimestamp: no support service"

    invoke-static {v9, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v10

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "ai::key::method_call"

    const-string v1, "ai::value::get_last_provision_timestamp"

    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "package::detect_config_last_update_time"

    invoke-virtual {p0, v0, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_0

    :cond_1
    const-string p0, "getLastProvisionTimestamp:result return null"

    invoke-static {v9, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v10
.end method

.method public static final getSceneData(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/SceneData;
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/oplus/aiunit/toolkits/AISettings;->getSceneData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/SceneData;

    move-result-object p0

    return-object p0
.end method

.method public static final getSceneData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/SceneData;
    .locals 9

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq v3, v0, :cond_0

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isGlobalDep(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    invoke-direct {v0, p0, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const-string p2, "package::scene_name"

    invoke-virtual {v5, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ai::key::method_call"

    const-string v0, "ai::value::get_scene_data"

    invoke-virtual {v5, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p2, Lcom/oplus/aiunit/core/data/SceneData;

    invoke-direct {p2}, Lcom/oplus/aiunit/core/data/SceneData;-><init>()V

    invoke-virtual {p2, p0}, Lcom/oplus/aiunit/core/data/SceneData;->build(Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/SceneData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/data/SceneData;->setSceneName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getSceneData: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AISettings"

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic getSceneData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/SceneData;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getSceneData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/SceneData;

    move-result-object p0

    return-object p0
.end method

.method public static final getSceneDownloadType(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/oplus/aiunit/toolkits/AISettings;->getSceneDownloadType$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object p0

    return-object p0
.end method

.method public static final getSceneDownloadType(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getSceneData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/SceneData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/SceneData;->getDownloadType()Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NONE:Lcom/oplus/aiunit/core/data/DownloadType;

    :cond_1
    return-object p0
.end method

.method public static synthetic getSceneDownloadType$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getSceneDownloadType(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object p0

    return-object p0
.end method

.method public static final getSettingsStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCCloud(I)Z

    move-result v0

    const/4 v9, -0x1

    if-nez v0, :cond_0

    return v9

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "package::unit_name"

    invoke-virtual {v5, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ai::key::method_call"

    const-string v0, "ai::value::get_settings"

    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "ai::key::settings_status"

    invoke-virtual {p0, p1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    :cond_1
    return v9
.end method

.method public static final getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/DetectData;->getState()I

    move-result p0

    return p0
.end method

.method public static synthetic getUnitState$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public static final isAuthSucceed(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AuthUtil;->isInnerAuth(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AuthUtil;->checkSelfAuthenticatePermission(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAISubSys(I)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_1

    return v8

    :cond_1
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "ai::key::method_call"

    const-string v1, "ai::value::authenticate_check"

    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "package::error_code"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorAuthorizeFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    if-eq p0, v0, :cond_2

    const/4 v8, 0x1

    :cond_2
    return v8
.end method

.method public static final isDetectAvailable(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/DetectData;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public static synthetic isDetectAvailable$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->isDetectAvailable(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

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

    invoke-static {p0, p1, v0, v1, v0}, Lcom/oplus/aiunit/toolkits/AISettings;->isDetectSupported$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Z

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

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/DetectData;->isSupport()Z

    move-result p0

    return p0
.end method

.method public static synthetic isDetectSupported$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static final isGlobalDepSupported(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isGlobalDep(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isLLMSettingsAvailable(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/aiunit/core/utils/AIUtil;->isLocalLLMSettingsUISupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/oplus/aiunit/toolkits/AISettings;->getLLMSettingsListByType(Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static final isPrivacyAvailable(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->AIUNIT:Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v9, 0x1

    if-ne v3, v0, :cond_0

    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "ai::key::method_call"

    const-string v1, "ai::value::check_privacy"

    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "ai::key::privacy_status"

    invoke-virtual {p0, v0, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/data/ServiceType;->OCRSERVICE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-ne v3, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :cond_2
    :goto_0
    return v9
.end method

.method public static final isPrivacyUIVisible(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v9, 0x0

    if-ne v3, v0, :cond_0

    return v9

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "ai::key::method_call"

    const-string v1, "ai::value::privacy_ui_visible"

    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    const-string v1, "ai::key::settings_ui_status"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_2

    move v9, p0

    :cond_2
    return v9
.end method

.method public static final isRecordSummarySupported(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isRecordSummary(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isUnitSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isUnitSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isUserSettingAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/toolkits/AISettings;->getLLMQueueStatus(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/toolkits/AISettings;->getSettingsStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lLMQueueStatus:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " settingStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AISettings"

    invoke-static {v3, v2}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/oplus/aiunit/toolkits/AISettings;->getAuthorizeStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static final prepareInnerModels(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "soc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v7, -0x1

    if-ne v3, v0, :cond_0

    return v7

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "ai::key::method_call"

    const-string v1, "ai::value::prepare_inner_model"

    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package::unit_name"

    invoke-virtual {v5, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ai::key::method_call_soc"

    invoke-virtual {v5, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/4 v4, 0x0

    const-string v6, "inner_call"

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call(Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "ai::key::llm_model_status"

    invoke-virtual {p0, p1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    :cond_1
    return v7
.end method

.method public static final queryDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ln8/q;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ln8/q;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const-string v9, "AISettings"

    const-wide/16 v10, 0x0

    if-eq v3, v0, :cond_4

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCCloud(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    invoke-direct {v0, p0, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const-string p2, "package::unit_name"

    invoke-virtual {v5, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ai::key::method_call"

    const-string v0, "ai::value::get_detect_data"

    invoke-virtual {v5, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ai::key::need_config_update_time"

    invoke-virtual {v5, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p2, "package::detect_config_last_update_time"

    invoke-virtual {p0, p2, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_0

    :cond_0
    const-string p2, "queryDetectData:result return null"

    invoke-static {v9, p2}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p2, Ln8/q;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/oplus/aiunit/core/data/DetectData;

    if-nez p0, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-direct {v1, p1, p0}, Lcom/oplus/aiunit/core/data/DetectData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p2, v0, v1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isUnitSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ln8/q;

    invoke-static {p0}, Lcom/oplus/aiunit/toolkits/AISettings;->getLastProvisionTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Lcom/oplus/aiunit/core/data/DetectData;

    invoke-direct {v0, p1, v1}, Lcom/oplus/aiunit/core/data/DetectData;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p2, p0, v0}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "queryDetectData: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ln8/q;

    invoke-static {p0}, Lcom/oplus/aiunit/toolkits/AISettings;->getLastProvisionTimestamp(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Lcom/oplus/aiunit/core/data/DetectData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oplus/aiunit/core/data/DetectData;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p2, p0, v0}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string p0, "queryDetectData: service type not support!"

    invoke-static {v9, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ln8/q;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {p2, p0, p1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object p2
.end method

.method public static synthetic queryDetectData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Ln8/q;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->queryDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ln8/q;

    move-result-object p0

    return-object p0
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

.method public static final registerContentObserver(Landroid/content/Context;Ljava/lang/String;Landroid/database/ContentObserver;)V
    .locals 2

    const-string v0, "ai::settings::detect::"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "detectName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "observer"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/providers/AppSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "registerContentObserver err. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AISettings"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final requestConfigurationUpdate(Landroid/content/Context;Lcom/oplus/aiunit/toolkits/callback/RequestCallback;)Ljava/lang/Boolean;
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const-string v9, "AISettings"

    const/4 v10, 0x0

    if-ne v3, v0, :cond_0

    const-string p0, "getLastProvisionTimestamp: no support service"

    invoke-static {v9, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    invoke-static {v0, p0, v10, v1, v10}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "ai::key::method_call"

    const-string v1, "ai::value::request_configuration_update"

    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/toolkits/AISettings$requestConfigurationUpdate$extras$1$1;

    invoke-direct {v0, p1}, Lcom/oplus/aiunit/toolkits/AISettings$requestConfigurationUpdate$extras$1$1;-><init>(Lcom/oplus/aiunit/toolkits/callback/RequestCallback;)V

    const-string p1, "ai::key::ai_callback"

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "requestConfigurationUpdate:result return null"

    invoke-static {v9, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_1
    const-string p1, "ai::key::call_status"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_0

    :cond_2
    const-string p0, "requestConfigurationUpdate:server not support"

    invoke-static {v9, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v10
.end method

.method public static final setLLMUserPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/toolkits/AISettings;->isLLMSettingsAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "setLLMUserPreference params error:  "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AISettings"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v4

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-ne v4, v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v2, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v6

    const-string v0, "ai::key::method_call"

    const-string v2, "ai::value::set_llm_user_preference_settings"

    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package::unit_name"

    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ai::key::llm_user_preference_settings"

    invoke-virtual {v6, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, "ai::key::llm_user_preference_result"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_3
    return v1
.end method

.method private static final setLocalDetectSwitch(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 9

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v2

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v8, 0x0

    if-ne v2, v0, :cond_0

    return v8

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "ai::key::method_call"

    const-string v1, "ai::value::local_detect_switch"

    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package::unit_name"

    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ai::key::settings_enable"

    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "ai::value::local_detect_switch_auto"

    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "ai::value::local_detect_status"

    invoke-virtual {p0, p1, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    :cond_1
    return v8
.end method

.method public static synthetic setLocalDetectSwitch$default(Landroid/content/Context;Ljava/lang/String;ZZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/aiunit/toolkits/AISettings;->setLocalDetectSwitch(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static final setSettingsSilence(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCCloud(I)Z

    move-result v0

    const/4 v9, -0x1

    if-nez v0, :cond_0

    return v9

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "package::unit_name"

    invoke-virtual {v5, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ai::key::method_call"

    const-string v0, "ai::value::set_settings"

    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ai::key::settings_enable"

    invoke-virtual {v5, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "ai::key::settings_guide_enable"

    const/4 p2, 0x0

    invoke-virtual {v5, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "ai::key::settings_status"

    invoke-virtual {p0, p1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    :cond_1
    return v9
.end method

.method public static final startAIUnitSettingsPage(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startAISPSettingsPage"

    const-string v1, "AISettings"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isGlobalDep(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "is not support global dep, return false"

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.oplus.aiunit.settings.AIUnitSettingsActivity"

    invoke-static {p0, v1, v0, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "ai::key::activity_intent_data"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "startActivity exception: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AISettings"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static final startAuthorizeGuide(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startAuthorizeGuide"

    const-string v1, "AISettings"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    sget-object v2, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const-string p0, "is not LLMService, return false"

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProtocol:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;->onFail(I)V

    :cond_0
    return v3

    :cond_1
    invoke-static {p0, p1}, Lcom/oplus/aiunit/toolkits/AISettings;->getAuthorizeStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;->onSuccess()V

    :cond_2
    return v2

    :cond_3
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    if-eqz p2, :cond_4

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorCommunication:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;->onFail(I)V

    :cond_4
    return v3

    :cond_5
    sget-object v1, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p0, v3, v2, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "package::unit_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ai::key::method_call"

    const-string v2, "ai::value::authorize"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    new-instance p1, Lcom/oplus/aiunit/toolkits/AISettings$startAuthorizeGuide$c$1;

    invoke-direct {p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings$startAuthorizeGuide$c$1;-><init>(Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;)V

    const-string p2, "ai::key::ai_callback"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_6
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oplus.aiunit.account.LoginActivity"

    invoke-static {p0, v1, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final startLLMGuidePage(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startLLMGuidePage()"

    const-string v1, "AISettings"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    sget-object v2, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-ne v0, v2, :cond_0

    const-string p0, "is not LLMService, return false"

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "from_package"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oplus.aiunit.settings.boot.BootGuideActivity"

    invoke-static {p0, v1, v0, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final startLLMSettingsPage(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startLLMSettingsPage"

    const-string v1, "AISettings"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getLLMServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    sget-object v2, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-ne v0, v2, :cond_0

    const-string p0, "is not LLMService, return false"

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.oplus.aiunit.settings.AIGCHomeActivity"

    invoke-static {p0, v1, v0, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final startNoticeGuide(Landroid/content/Context;I)Z
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startNoticeGuide()"

    const-string v1, "AISettings"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCCloud(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "is not cloud, return false"

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    sget-object v1, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v1, p0, v4, v2, v4}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ai::key::settings_enable"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "ai::key::settings_guide_enable"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "ai::key::dialog_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ai::key::notice_dialog_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oplus.aiunit.settings.PromptDialogActivity"

    invoke-static {p0, v1, p1, v0}, Lcom/oplus/aiunit/toolkits/AISettings;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final startPrivacyGuide(Landroid/content/Context;Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;)Z
    .locals 3

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/oplus/aiunit/toolkits/AISettings;->startPrivacyGuide$default(Landroid/content/Context;Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final startPrivacyGuide(Landroid/content/Context;Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;Z)Z
    .locals 5

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/toolkits/AISettings;->isPrivacyAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AISettings"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string p0, "startPrivacyGuide no need."

    invoke-static {v2, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;->onSwitch(I)V

    :cond_0
    return v3

    :cond_1
    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCEXP(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string p0, "startPrivacyGuide is not exp"

    invoke-static {v2, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1, v3}, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;->onSwitch(I)V

    :cond_2
    return v3

    :cond_3
    invoke-static {p0}, Lcom/oplus/aiunit/toolkits/AISettings;->isPrivacyUIVisible(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInProcessing:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;->onError(I)V

    :cond_4
    return v1

    :cond_5
    sget-object v1, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v1, p0, v4, v2, v4}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz p1, :cond_6

    new-instance v2, Lcom/oplus/aiunit/toolkits/AISettings$startPrivacyGuide$c$1;

    invoke-direct {v2, p1}, Lcom/oplus/aiunit/toolkits/AISettings$startPrivacyGuide$c$1;-><init>(Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;)V

    const-string p1, "ai::key::dialog_type"

    invoke-virtual {v1, p1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ai::key::ai_callback"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p1, "ai::key_privacy_load"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oplus.aiunit.settings.PrivacyTransparentActivity"

    invoke-static {p0, v1, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic startPrivacyGuide$default(Landroid/content/Context;Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->startPrivacyGuide(Landroid/content/Context;Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;Z)Z

    move-result p0

    return p0
.end method

.method public static final startSettingsGuide(Landroid/content/Context;Ljava/lang/String;ZLcom/oplus/aiunit/toolkits/callback/SettingsCallback;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startSettingsGuide()"

    const-string v1, "AISettings"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCCloud(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "startSettingsGuide is not cloud, return false"

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lcom/oplus/aiunit/toolkits/AISettings;->INSTANCE:Lcom/oplus/aiunit/toolkits/AISettings;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p0, v3, v2, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders$default(Lcom/oplus/aiunit/toolkits/AISettings;Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "package::unit_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ai::key::settings_enable"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "ai::key::settings_guide_enable"

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p3, :cond_1

    new-instance p1, Lcom/oplus/aiunit/toolkits/AISettings$startSettingsGuide$c$1;

    invoke-direct {p1, p3}, Lcom/oplus/aiunit/toolkits/AISettings$startSettingsGuide$c$1;-><init>(Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;)V

    const-string p2, "ai::key::ai_callback"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oplus.aiunit.settings.PromptDialogActivity"

    invoke-static {p0, v1, p1, p2}, Lcom/oplus/aiunit/toolkits/AISettings;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unregisterContentObserver err. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AISettings"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getDetectDataList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Bundle;)Ljava/util/List;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/data/DetectData;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectNames"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x8f

    if-lt v1, v2, :cond_4

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object v5

    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/toolkits/AISettings;->buildHeaders(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const-string p0, "package::detect_name_list"

    invoke-virtual {v7, p0, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "ai::key::method_call"

    const-string v1, "ai::value::get_detect_data_list"

    invoke-virtual {v7, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/aiunit/core/service/ProviderClient;->Companion:Lcom/oplus/aiunit/core/service/ProviderClient$Companion;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v10}, Lcom/oplus/aiunit/core/service/ProviderClient$Companion;->call$default(Lcom/oplus/aiunit/core/service/ProviderClient$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "package::error_code"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDetectDataList: code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AISettings"

    invoke-static {v3, v2}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_5

    const-string p1, "package::detect_data_list"

    const-class p2, Landroid/os/Bundle;

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/toolkits/a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "package::unit_name"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p3, Lcom/oplus/aiunit/core/data/DetectData;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p3, p2, p1}, Lcom/oplus/aiunit/core/data/DetectData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method public final isAISettingsAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->acquireServiceType(Landroid/content/Context;)Lcom/oplus/aiunit/core/data/ServiceType;

    move-result-object p0

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->NONE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AIUtil;->isSettingsUISupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
