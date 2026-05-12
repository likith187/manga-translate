.class public final Lcom/coloros/translate/engine/tts/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/tts/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 7

    const-string p0, "AiUnitStreamTtsClient"

    const-wide/16 v0, -0x1

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    sget-object v2, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v2}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ai_omni"

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/data/DetectData;->getConfigList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/collections/o;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/core/data/AIConfig;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/data/AIConfig;->getUnitVersion()J

    move-result-wide v2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_0
    move-wide v2, v0

    :goto_1
    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUnitVersion(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :goto_2
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUnitVersion(), error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-wide v0
.end method

.method public final b()Z
    .locals 5

    invoke-virtual {p0}, Lcom/coloros/translate/engine/tts/e$a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v2, v0

    const/4 v2, 0x0

    if-gtz p0, :cond_0

    const-wide/16 v3, 0x3ed

    cmp-long p0, v0, v3

    if-gez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
