.class public final Lcom/coloros/translate/repository/a$f;
.super Lcom/coloros/translate/repository/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/a;->f(Lcom/oplus/aiunit/core/data/SceneData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/coloros/translate/repository/a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/a$f;->b:Lcom/coloros/translate/repository/a;

    const-string p1, "queryByName"

    invoke-direct {p0, p1}, Lcom/coloros/translate/repository/a$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onQuery(Lcom/oplus/aiunit/download/core/DownloadInfo;)V
    .locals 11

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/a$c;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/core/DownloadInfo;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "realDownPlugin onQuery(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DownloadAiManager"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/core/DownloadInfo;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget p0, Lcom/coloros/translate/R$string;->ai_cloud_downloading_tips:I

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0, v2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/repository/a$f;->b:Lcom/coloros/translate/repository/a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/a;->g()V

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object v5

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v0, "main_app"

    invoke-virtual {p1, v5, v0}, Lcom/coloros/translate/utils/n;->T(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    sget-object p1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p1

    new-instance v0, Lcom/oplus/aiunit/download/api/DownloadRequest;

    invoke-direct {v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;-><init>()V

    invoke-virtual {v0, v5}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setSceneName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setEnableProgressUI(Z)V

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setEnableProgressCallback(Z)V

    new-instance v1, Lcom/oplus/aiunit/download/api/CustomTerms;

    invoke-direct {v1}, Lcom/oplus/aiunit/download/api/CustomTerms;-><init>()V

    sget v2, Lcom/coloros/translate/R$string;->ai_cloud_download_title:I

    invoke-static {v2}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/download/api/CustomTerms;->setTitle(Ljava/lang/String;)V

    sget v2, Lcom/coloros/translate/R$string;->ai_cloud_download_desc:I

    invoke-static {v2}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/download/api/CustomTerms;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setTerms(Lcom/oplus/aiunit/download/api/CustomTerms;)V

    invoke-static {p1, v0}, Lcom/oplus/aiunit/download/api/AIDownload;->start(Landroid/content/Context;Lcom/oplus/aiunit/download/api/DownloadRequest;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/repository/a$f;->b:Lcom/coloros/translate/repository/a;

    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIDownload.start exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, p1}, Lcom/coloros/translate/utils/c0$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v4, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START_EXCEPTION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-string v7, "main_app"

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/coloros/translate/utils/n;->S(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/repository/a;->e()Lcom/coloros/translate/repository/a$b;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "download_aiunit_fail"

    invoke-interface {p0, p1}, Lcom/coloros/translate/repository/a$b;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method
