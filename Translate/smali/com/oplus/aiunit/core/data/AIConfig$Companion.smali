.class public final Lcom/oplus/aiunit/core/data/AIConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/data/AIConfig;
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
    invoke-direct {p0}, Lcom/oplus/aiunit/core/data/AIConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/AIConfig;
    .locals 6

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/core/data/AIConfig;

    const-string v0, "package::detect_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "package::unit_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "package::unit_version"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/oplus/aiunit/core/data/AIConfig;-><init>(Ljava/lang/String;IJ)V

    const-string v0, "package::unit_supported"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/data/AIConfig;->setSupport(Z)V

    const-string v0, "package::sdk_version"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/data/AIConfig;->setMinSdk(I)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/AIConfig;->getMinSdk()I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "ai::key::client_protocol"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/data/AIConfig;->setMinSdk(I)V

    :cond_0
    const-string v0, "package::unit_api_level"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/data/AIConfig;->setMinApi(I)V

    return-object p0
.end method

.method public final parse(Lorg/json/JSONObject;)Lcom/oplus/aiunit/core/data/AIConfig;
    .locals 6

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/core/data/AIConfig;

    const-string v0, "detectName"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "optString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unitId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "unitVersion"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/oplus/aiunit/core/data/AIConfig;-><init>(Ljava/lang/String;IJ)V

    const-string v0, "support"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/data/AIConfig;->setSupport(Z)V

    const-string v0, "minSdk"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/data/AIConfig;->setMinSdk(I)V

    const-string v0, "minApi"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/data/AIConfig;->setMinApi(I)V

    return-object p0
.end method
