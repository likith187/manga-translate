.class public final Lcom/oplus/aiunit/core/data/DetectData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/data/DetectData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/data/DetectData$Companion;

.field private static final TAG:Ljava/lang/String; = "DetectData"


# instance fields
.field private configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/data/AIConfig;",
            ">;"
        }
    .end annotation
.end field

.field private custom:Ljava/lang/String;

.field private final detectName:Ljava/lang/String;

.field private downloadSize:J

.field private inData:Landroid/os/Bundle;

.field private isAvailable:Z

.field private isLLM:Z

.field private isSupport:Z

.field private isUnavailableBySelf:Z

.field private runType:I

.field private state:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/data/DetectData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/data/DetectData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/data/DetectData;->Companion:Lcom/oplus/aiunit/core/data/DetectData$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->detectName:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->inData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 2
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/data/DetectData;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->inData:Landroid/os/Bundle;

    const-class p1, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p1, "ai::key::detect_data_state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->state:I

    const-string p1, "ai::key::detect_data_available"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isAvailable:Z

    const-string p1, "ai::key::detect_data_unavailable_self"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isUnavailableBySelf:Z

    const-string p1, "package::unit_supported"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isUnavailableBySelf:Z

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    :cond_0
    iget-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isAvailable:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    :cond_1
    const-string p1, "ai::key::detect_data_llm"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isLLM:Z

    const-string p1, "ai::key::detect_data_run_type"

    const/4 v2, -0x1

    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oplus/aiunit/core/data/DetectData;->runType:I

    if-ne v3, v2, :cond_2

    invoke-direct {p0}, Lcom/oplus/aiunit/core/data/DetectData;->defaultRunType()I

    move-result v2

    iput v2, p0, Lcom/oplus/aiunit/core/data/DetectData;->runType:I

    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string p1, "ai::key::detect_download_size"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/aiunit/core/data/DetectData;->downloadSize:J

    const-string p1, "ai::key::unit_config_custom"

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->custom:Ljava/lang/String;

    const-string p1, "package::ai_config_list"

    const-string v2, ""

    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_4

    sget-object v3, Lcom/oplus/aiunit/core/data/AIConfig;->Companion:Lcom/oplus/aiunit/core/data/AIConfig$Companion;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "getJSONObject(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/oplus/aiunit/core/data/AIConfig$Companion;->parse(Lorg/json/JSONObject;)Lcom/oplus/aiunit/core/data/AIConfig;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    iput-object p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->configList:Ljava/util/List;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 3
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/data/DetectData;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->isAvailable:Z

    iput p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->state:I

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/oplus/aiunit/core/data/DetectData;->isUnavailableBySelf:Z

    iput-boolean p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    const-string p2, "aigc_call_summary"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "aigc_sdinpainting"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "aigc_article_summary"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isLLM:Z

    invoke-direct {p0}, Lcom/oplus/aiunit/core/data/DetectData;->defaultRunType()I

    move-result p1

    iput p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->runType:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-class p2, Lcom/oplus/aiunit/core/data/SimpleUnitInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-boolean p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->isAvailable:Z

    const-string v0, "ai::key::detect_data_available"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->state:I

    const-string v0, "ai::key::detect_data_state"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->isUnavailableBySelf:Z

    const-string v0, "ai::key::detect_data_unavailable_self"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    const-string v0, "package::unit_supported"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->isLLM:Z

    const-string v0, "ai::key::detect_data_llm"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget p2, p0, Lcom/oplus/aiunit/core/data/DetectData;->runType:I

    const-string v0, "ai::key::detect_data_run_type"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->inData:Landroid/os/Bundle;

    return-void
.end method

.method private final defaultRunType()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/data/DetectData;->detectName:Ljava/lang/String;

    const-string v1, "aigc_call_summary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/aiunit/core/data/DetectData;->detectName:Ljava/lang/String;

    const-string v1, "aigc_sdinpainting"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/aiunit/core/data/DetectData;->detectName:Ljava/lang/String;

    const-string v1, "aigc_article_summary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/aiunit/core/data/DetectData;->detectName:Ljava/lang/String;

    const-string v1, "aigc_segmentation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->detectName:Ljava/lang/String;

    const-string v0, "audio_asr"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public static synthetic isUnavailableBySelf$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getConfigList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/data/AIConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->configList:Ljava/util/List;

    return-object p0
.end method

.method public final getCustom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->custom:Ljava/lang/String;

    return-object p0
.end method

.method public final getData()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->inData:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getDetectName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->detectName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDownloadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/core/data/DetectData;->downloadSize:J

    return-wide v0
.end method

.method public final getRunType()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->runType:I

    return p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->state:I

    return p0
.end method

.method public final getUnitInfoList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/aiunit/core/data/SimpleUnitInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->inData:Landroid/os/Bundle;

    const-string v0, "ai::key::detect_data_unit_info_list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getUnitInfoList "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DetectData"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->isAvailable:Z

    return p0
.end method

.method public final isLLM()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->isLLM:Z

    return p0
.end method

.method public final isSupport()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    return p0
.end method

.method public final isUnavailableBySelf()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->isUnavailableBySelf:Z

    return p0
.end method

.method public final setAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isAvailable:Z

    return-void
.end method

.method public final setConfigList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/data/AIConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->configList:Ljava/util/List;

    return-void
.end method

.method public final setCustom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->custom:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->downloadSize:J

    return-void
.end method

.method public final setLLM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isLLM:Z

    return-void
.end method

.method public final setRunType(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->runType:I

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->state:I

    return-void
.end method

.method public final setSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    return-void
.end method

.method public final setUnavailableBySelf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/data/DetectData;->isUnavailableBySelf:Z

    return-void
.end method

.method public final toDetectInfo()Lcom/oplus/aiunit/core/data/DetectInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/data/DetectData;->inData:Landroid/os/Bundle;

    const-string v1, "ai::key::detect_data_unit_info_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toDetectInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetectData"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/oplus/aiunit/core/data/DetectInfo;

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->detectName:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lcom/oplus/aiunit/core/data/DetectInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/oplus/aiunit/core/data/DetectInfo;

    iget-object v0, p0, Lcom/oplus/aiunit/core/data/DetectData;->detectName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/oplus/aiunit/core/data/DetectData;->isAvailable:Z

    iget-boolean p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    invoke-direct {v1, v0, v2, p0}, Lcom/oplus/aiunit/core/data/DetectInfo;-><init>(Ljava/lang/String;ZZ)V

    :goto_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DetectData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/data/DetectData;->detectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/aiunit/core/data/DetectData;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/aiunit/core/data/DetectData;->isSupport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/aiunit/core/data/DetectData;->isAvailable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/core/data/DetectData;->configList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
