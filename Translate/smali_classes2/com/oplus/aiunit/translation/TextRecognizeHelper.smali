.class public final Lcom/oplus/aiunit/translation/TextRecognizeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

.field private static mContext:Landroid/content/Context;

.field private static final mTranslationClient$delegate:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper$mTranslationClient$2;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper$mTranslationClient$2;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mTranslationClient$delegate:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMContext$p()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;
    .locals 0

    sget-object p0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mTranslationClient$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    return-object p0
.end method


# virtual methods
.method public final cancelImageTranslate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->cancelImageTranslate(Ljava/lang/String;)V

    return-void
.end method

.method public final cancelPhotoTranslate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->cancelPhotoTranslate(Ljava/lang/String;)V

    return-void
.end method

.method public final cancelStreamTextTranslate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->cancelSSETextTranslate(Ljava/lang/String;)V

    return-void
.end method

.method public final cancelSynthesizeText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->cancelSynthesizeText(Ljava/lang/String;)V

    return-void
.end method

.method public final cancelTextTranslate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->cancelTextTranslate(Ljava/lang/String;)V

    return-void
.end method

.method public final generateImageTranslate(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generateImageTranslate(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V

    return-void
.end method

.method public final generatePhotoTranslate(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generatePhotoTranslate(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V

    return-void
.end method

.method public final generateStreamTextTranslate(Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generateSSETextTranslate(Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;)V

    return-void
.end method

.method public final generateTextTranslate(Lcom/oplus/aiunit/translation/request/TextTranslateRequest;Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generateTextTranslate(Lcom/oplus/aiunit/translation/request/TextTranslateRequest;Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;)V

    return-void
.end method

.method public final getDetectorName()Ljava/lang/String;
    .locals 0

    const-string p0, "ai_omni"

    return-object p0
.end method

.method public final getImgTransConfig(Landroid/content/Context;Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->getImgTransConfig(Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;)V

    return-void
.end method

.method public final getOfflinePackageInfo(Landroid/content/Context;Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->getOfflineInfo(Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;)V

    return-void
.end method

.method public final getSceneName()Ljava/lang/String;
    .locals 0

    const-string p0, "ai_omni"

    return-object p0
.end method

.method public final getToolboxTranslateConfig(Landroid/content/Context;Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;Lcom/oplus/aiunit/translation/callback/ToolboxTranslateConfigCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->getToolboxTranslateConfig(Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;Lcom/oplus/aiunit/translation/callback/ToolboxTranslateConfigCallback;)V

    return-void
.end method

.method public final getTranslationConfig(Landroid/content/Context;Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->getOnlineConfig(Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;)V

    return-void
.end method

.method public final getWsTtsInitStatus(Lcom/oplus/aiunit/translation/callback/WsTtsInitStatusCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->getWsTtsInitStatus(Lcom/oplus/aiunit/translation/callback/WsTtsInitStatusCallback;)V

    return-void
.end method

.method public final initOmniPlugin()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->initOmniPlugin()V

    return-void
.end method

.method public final initSpeech(Landroid/content/Context;Lcom/oplus/aiunit/translation/callback/ISpeechConfig;Lcom/oplus/aiunit/translation/callback/Callback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/oplus/aiunit/translation/TextRecognizeHelper$initSpeech$realConfig$1;

    invoke-direct {p2}, Lcom/oplus/aiunit/translation/TextRecognizeHelper$initSpeech$realConfig$1;-><init>()V

    :cond_1
    sget-object p1, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    invoke-interface {p2}, Lcom/oplus/aiunit/translation/callback/ISpeechConfig;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->setPackageName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->initSpeech(Lcom/oplus/aiunit/translation/callback/ISpeechConfig;Lcom/oplus/aiunit/translation/callback/Callback;)V

    return-void
.end method

.method public final initTranslate(Landroid/content/Context;Lcom/oplus/aiunit/translation/callback/ITranslateConfig;Lcom/oplus/aiunit/translation/callback/Callback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/oplus/aiunit/translation/TextRecognizeHelper$initTranslate$realConfig$1;

    invoke-direct {p2}, Lcom/oplus/aiunit/translation/TextRecognizeHelper$initTranslate$realConfig$1;-><init>()V

    :cond_1
    sget-object p1, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    invoke-interface {p2}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->setPackageName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->initTranslate(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;Lcom/oplus/aiunit/translation/callback/Callback;)V

    return-void
.end method

.method public final initWsSpeech(Landroid/content/Context;Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->mContext:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->initWsSpeech(Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;)V

    return-void
.end method

.method public final release()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->release()V

    return-void
.end method

.method public final startWsTts(Lcom/oplus/aiunit/translation/request/WsTtsRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->startWsTts(Lcom/oplus/aiunit/translation/request/WsTtsRequest;)V

    return-void
.end method

.method public final stopWsTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->stopWsTts(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthesizeText(Lcom/oplus/aiunit/translation/request/SynthesisRequest;Lcom/oplus/aiunit/translation/callback/SynthesisCallback;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getMTranslationClient()Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->synthesizeText(Lcom/oplus/aiunit/translation/request/SynthesisRequest;Lcom/oplus/aiunit/translation/callback/SynthesisCallback;)V

    return-void
.end method
