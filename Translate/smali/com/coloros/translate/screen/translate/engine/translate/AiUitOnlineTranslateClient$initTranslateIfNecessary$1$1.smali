.class public final Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$initTranslateIfNecessary$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/ITranslateConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$initTranslateIfNecessary$1$1;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageTranslateMaxTaskCount()I
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "AiUitOnlineTranslateClient"

    const-string v1, "initTranslate image translate max task count:30"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1e

    return p0
.end method

.method public getImageTranslateTimeout()J
    .locals 2

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig$DefaultImpls;->getImageTranslateTimeout(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$initTranslateIfNecessary$1$1;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMContext$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getPackageName(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPhotoTranslateMaxTaskCount()I
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig$DefaultImpls;->getPhotoTranslateMaxTaskCount(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)I

    move-result p0

    return p0
.end method

.method public getPhotoTranslateTimeout()J
    .locals 2

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig$DefaultImpls;->getPhotoTranslateTimeout(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSSETextTranslateMaxTaskCount()I
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig$DefaultImpls;->getSSETextTranslateMaxTaskCount(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)I

    move-result p0

    return p0
.end method

.method public getSSETextTranslateTimeout()J
    .locals 2

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig$DefaultImpls;->getSSETextTranslateTimeout(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTextTranslateMaxTaskCount()I
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "AiUitOnlineTranslateClient"

    const-string v1, "initTranslate text translate max task count:30"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1e

    return p0
.end method

.method public getTextTranslateTimeout()J
    .locals 2

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig$DefaultImpls;->getTextTranslateTimeout(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)J

    move-result-wide v0

    return-wide v0
.end method
