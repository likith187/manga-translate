.class public final Lcom/oplus/aiunit/translation/TextRecognizeHelper$initSpeech$realConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/ISpeechConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/translation/TextRecognizeHelper;->initSpeech(Landroid/content/Context;Lcom/oplus/aiunit/translation/callback/ISpeechConfig;Lcom/oplus/aiunit/translation/callback/Callback;)V
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

.method public getSpeechMaxTaskCount()I
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ISpeechConfig$DefaultImpls;->getSpeechMaxTaskCount(Lcom/oplus/aiunit/translation/callback/ISpeechConfig;)I

    move-result p0

    return p0
.end method

.method public getTextToSpeechTimeout()J
    .locals 2

    invoke-static {p0}, Lcom/oplus/aiunit/translation/callback/ISpeechConfig$DefaultImpls;->getTextToSpeechTimeout(Lcom/oplus/aiunit/translation/callback/ISpeechConfig;)J

    move-result-wide v0

    return-wide v0
.end method
