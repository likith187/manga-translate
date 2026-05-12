.class public final Lcom/coloros/translate/screen/translate/download/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/translate/download/a$a;,
        Lcom/coloros/translate/screen/translate/download/a$b;,
        Lcom/coloros/translate/screen/translate/download/a$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/coloros/translate/screen/translate/download/a$b;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/coloros/translate/screen/translate/download/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/translate/download/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/download/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/translate/download/a;->c:Lcom/coloros/translate/screen/translate/download/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/download/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/screen/translate/download/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/download/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lcom/coloros/translate/screen/translate/download/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/translate/download/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lcom/coloros/translate/screen/translate/download/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/translate/download/a;->o(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final g(Landroid/content/Context;)J
    .locals 6

    const-string p0, "AiDownloadManager"

    const-wide/16 v0, -0x1

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    const-string v2, "ai_omni"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {p1, v2, v4, v3, v4}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/data/DetectData;->getConfigList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/o;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/data/AIConfig;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/data/AIConfig;->getUnitVersion()J

    move-result-wide v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    move-wide v2, v0

    :goto_1
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUnitVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p0, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :goto_2
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUnitVersion: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-wide v0
.end method

.method private final h(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "AiDownloadManager"

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/translate/download/a;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-static {p1, p2, v3, v1, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->getSceneData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/SceneData;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/data/SceneData;->getSupport()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/data/SceneData;->getDownloadType()Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object v1

    sget-object v5, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NONE:Lcom/oplus/aiunit/core/data/DownloadType;

    if-ne v1, v5, :cond_1

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/translate/download/a;->i(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/data/SceneData;->getSupport()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v3

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/data/SceneData;->getDownloadType()Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object v3

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAiModeDownloadSuccess: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAiModeDownloadSuccess: error "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2
.end method

.method private final i(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/d;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ai_omni"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v0, v2, v3, v2}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/DetectData;->getState()I

    move-result v0

    const-string v2, "AiDownloadManager"

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v3, 0x38a

    if-eq v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/translate/download/a;->g(Landroid/content/Context;)J

    move-result-wide p0

    const-wide/16 v3, 0x1

    cmp-long v0, v3, p0

    if-gtz v0, :cond_1

    const-wide/16 v3, 0x3ef

    cmp-long p0, p0, v3

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isOmniPluginUpdate:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "isOmniPluginUpdate:stateUnavailable false"

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private final j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x4

    invoke-static {p1, p2, p0, v0, p0}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/DetectData;->getState()I

    move-result p0

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShowPrivacyAgree(), state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiDownloadManager"

    invoke-virtual {p2, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38a

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Lcom/oplus/aiunit/toolkits/AISettings;->isPrivacyAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isShowPrivacyAgree(),  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private final k(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a;->a:Landroid/content/Context;

    new-instance v1, Lcom/coloros/translate/screen/translate/download/a$e;

    invoke-direct {v1, p1, p0}, Lcom/coloros/translate/screen/translate/download/a$e;-><init>(Ljava/lang/String;Lcom/coloros/translate/screen/translate/download/a;)V

    invoke-static {v0, p1, v1}, Lcom/oplus/aiunit/download/api/AIDownload;->register(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;)V

    return-void
.end method

.method private final o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/translate/download/a$g;

    invoke-direct {v0, p2, p0, p1}, Lcom/coloros/translate/screen/translate/download/a$g;-><init>(Ljava/lang/String;Lcom/coloros/translate/screen/translate/download/a;Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-static {p1, v0, p0}, Lcom/oplus/aiunit/toolkits/AISettings;->startPrivacyGuide(Landroid/content/Context;Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;Z)Z

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "sceneName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/screen/translate/download/a;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a;->a:Landroid/content/Context;

    new-instance v1, Lcom/coloros/translate/screen/translate/download/a$d;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/screen/translate/download/a$d;-><init>(Lcom/coloros/translate/screen/translate/download/a;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/coloros/translate/screen/widget/a0;->d(Landroid/content/Context;Lw8/l;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/translate/download/a;->n(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "sceneName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/screen/translate/download/a;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final f()Lcom/coloros/translate/screen/translate/download/a$c;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/download/a;->b:Lcom/coloros/translate/screen/translate/download/a$c;

    return-object p0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    const-string p0, "sceneName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "removeOnlyDownloadListener()"

    const-string v1, "AiDownloadManager"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Lcom/oplus/aiunit/download/api/AIDownload;->removeOnly(Ljava/lang/String;)V

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

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOnlyDownloadListener(), removeOnly error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m(Lcom/coloros/translate/screen/translate/download/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/download/a;->b:Lcom/coloros/translate/screen/translate/download/a$c;

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 12

    const-string v0, "sceneName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiDownloadManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/download/a;->a:Landroid/content/Context;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, p1, v4, v3, v4}, Lcom/oplus/aiunit/toolkits/AISettings;->getSceneData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/SceneData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/data/SceneData;->getSupport()I

    move-result v3

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/data/SceneData;->getDownloadType()Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/data/SceneData;->getSupport()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/data/SceneData;->getDownloadType()Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object v1

    sget-object v3, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NONE:Lcom/oplus/aiunit/core/data/DownloadType;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/download/a;->a:Landroid/content/Context;

    new-instance v3, Lcom/coloros/translate/screen/translate/download/a$f;

    invoke-direct {v3, p0, p1}, Lcom/coloros/translate/screen/translate/download/a$f;-><init>(Lcom/coloros/translate/screen/translate/download/a;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, p1, v3, v4, v5}, Lcom/oplus/aiunit/download/api/AIDownload;->queryByName(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;IZ)V

    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/download/a;->b:Lcom/coloros/translate/screen/translate/download/a$c;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/coloros/translate/screen/translate/download/a$c;->b()V

    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v7, "NOT_SUPPORT"

    const-string v8, "screen_translation"

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v5 .. v11}, Lcom/coloros/translate/utils/n;->S(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/download/a;->b:Lcom/coloros/translate/screen/translate/download/a$c;

    if-eqz v1, :cond_2

    const-string v3, "download_aiunit_not_support"

    invoke-interface {v1, v3}, Lcom/coloros/translate/screen/translate/download/a$c;->a(Ljava/lang/String;)V

    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_2
    :goto_0
    if-nez v4, :cond_4

    :cond_3
    const-string v1, "download: getSceneData is null"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v5, "SCENE_NONE"

    const-string v6, "screen_translation"

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/coloros/translate/utils/n;->S(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/download/a;->b:Lcom/coloros/translate/screen/translate/download/a$c;

    if-eqz p0, :cond_4

    const-string p1, "download_aiunit_scene_data_is_null"

    invoke-interface {p0, p1}, Lcom/coloros/translate/screen/translate/download/a$c;->a(Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_4
    return-void
.end method
