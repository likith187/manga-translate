.class public final Lcom/oplus/aiunit/translation/TextRecognizeHelper$initTranslate$realConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/ITranslateConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/translation/TextRecognizeHelper;->initTranslate(Landroid/content/Context;Lcom/oplus/aiunit/translation/callback/ITranslateConfig;Lcom/oplus/aiunit/translation/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageTranslateMaxTaskCount()I
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig$DefaultImpls;->getImageTranslateMaxTaskCount(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)I

    move-result p0

    return p0
.end method

.method public getImageTranslateTimeout()J
    .locals 2

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig$DefaultImpls;->getImageTranslateTimeout(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->access$getMContext$p()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "default"

    :cond_1
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
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig$DefaultImpls;->getTextTranslateMaxTaskCount(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)I

    move-result p0

    return p0
.end method

.method public getTextTranslateTimeout()J
    .locals 2

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig$DefaultImpls;->getTextTranslateTimeout(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)J

    move-result-wide v0

    return-wide v0
.end method
