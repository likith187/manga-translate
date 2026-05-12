.class public final Lcom/coloros/translate/repository/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/repository/a$a;,
        Lcom/coloros/translate/repository/a$b;,
        Lcom/coloros/translate/repository/a$c;
    }
.end annotation


# static fields
.field public static final b:Lcom/coloros/translate/repository/a$a;


# instance fields
.field private a:Lcom/coloros/translate/repository/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/repository/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/repository/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/repository/a;->b:Lcom/coloros/translate/repository/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/repository/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/repository/a;->j(Z)V

    return-void
.end method

.method private final d()V
    .locals 9

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "configUpdate"

    const-string v2, "DownloadAiManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v3

    new-instance v5, Lcom/coloros/translate/repository/a$e;

    invoke-direct {v5, p0}, Lcom/coloros/translate/repository/a$e;-><init>(Lcom/coloros/translate/repository/a;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/oplus/aiunit/toolkits/AISettings;->checkUpdate$default(Landroid/content/Context;ZLcom/oplus/aiunit/toolkits/callback/SettingsCallback;Landroid/os/Bundle;ILjava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "configUpdate error"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final f(Lcom/oplus/aiunit/core/data/SceneData;)V
    .locals 3

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/data/SceneData;->getDownloadType()Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object p1

    sget-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NONE:Lcom/oplus/aiunit/core/data/DownloadType;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/repository/a$f;

    invoke-direct {v1, p0}, Lcom/coloros/translate/repository/a$f;-><init>(Lcom/coloros/translate/repository/a;)V

    const/4 p0, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, p0, v2}, Lcom/oplus/aiunit/download/api/AIDownload;->queryByName(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;IZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/repository/a;->a:Lcom/coloros/translate/repository/a$b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coloros/translate/repository/a$b;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final j(Z)V
    .locals 11

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->getSceneData$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/aiunit/core/data/SceneData;

    move-result-object v0

    const-string v1, "DownloadAiManager"

    if-eqz v0, :cond_3

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/SceneData;->getSupport()I

    move-result v4

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/SceneData;->getDownloadType()Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startDownLoad isSupport : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , downloadType : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/SceneData;->getSupport()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0, v0}, Lcom/coloros/translate/repository/a;->f(Lcom/oplus/aiunit/core/data/SceneData;)V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "startDownLoad download config fail"

    invoke-virtual {v2, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-string v6, "NOT_SUPPORT"

    const-string v7, "main_app"

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/coloros/translate/utils/n;->S(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/repository/a;->a:Lcom/coloros/translate/repository/a$b;

    if-eqz p1, :cond_2

    const-string v0, "download_aiunit_not_support"

    invoke-interface {p1, v0}, Lcom/coloros/translate/repository/a$b;->a(Ljava/lang/String;)V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :cond_1
    const-string p1, "startDownLoad download config start"

    invoke-virtual {v2, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/repository/a;->d()V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_2
    :goto_0
    if-nez v3, :cond_4

    :cond_3
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "startDownLoad: getSceneData is null"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v4, "SCENE_NONE"

    const-string v5, "main_app"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/coloros/translate/utils/n;->S(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/repository/a;->a:Lcom/coloros/translate/repository/a$b;

    if-eqz p0, :cond_4

    const-string p1, "download_aiunit_scene_data_is_null"

    invoke-interface {p0, p1}, Lcom/coloros/translate/repository/a$b;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic k(Lcom/coloros/translate/repository/a;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/repository/a;->j(Z)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    invoke-static {}, Lcom/coloros/translate/repository/e;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    new-instance v2, Lcom/coloros/translate/repository/a$d;

    invoke-direct {v2, p0}, Lcom/coloros/translate/repository/a$d;-><init>(Lcom/coloros/translate/repository/a;)V

    invoke-static {v0, v2, v1}, Lcom/oplus/aiunit/toolkits/AISettings;->startPrivacyGuide(Landroid/content/Context;Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/coloros/translate/repository/a;->k(Lcom/coloros/translate/repository/a;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 0

    invoke-static {}, Lcom/coloros/translate/repository/e;->d()Z

    move-result p0

    return p0
.end method

.method public final e()Lcom/coloros/translate/repository/a$b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/a;->a:Lcom/coloros/translate/repository/a$b;

    return-object p0
.end method

.method public final g()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/repository/a$g;

    invoke-direct {v2, p0}, Lcom/coloros/translate/repository/a$g;-><init>(Lcom/coloros/translate/repository/a;)V

    invoke-static {v0, v1, v2}, Lcom/oplus/aiunit/download/api/AIDownload;->register(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;)V

    return-void
.end method

.method public final h()V
    .locals 4

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "removeOnlyDownloadListener()"

    const-string v1, "DownloadAiManager"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/aiunit/download/api/AIDownload;->removeOnly(Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeOnlyDownloadListener(), removeOnly error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/coloros/translate/repository/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/a;->a:Lcom/coloros/translate/repository/a$b;

    return-void
.end method
