.class public final Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;
.super Lcom/oplus/aiunit/translation/common/BaseInputSlot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$Companion;,
        Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;,
        Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$SpeechInitDataObject;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$Companion;

.field private static final TAG:Ljava/lang/String; = "TranslationInputSlot"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->Companion:Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/aiunit/core/base/AIContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/translation/common/BaseInputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-void
.end method

.method private final addSpeechInitConfigParam()V
    .locals 3

    sget-object v0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->getSpeechInitJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->getSpeechInitState()I

    move-result v0

    const-string v2, "speech_init_config"

    invoke-virtual {p0, v2, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "speech_init_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final addTranslateInitConfigParam()V
    .locals 5

    sget-object v0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->getTranslateInitJson()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTranslateInitConfigParam json = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranslationInputSlot"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->getTranslateInitState()I

    move-result v0

    const-string v2, "translate_init_config"

    invoke-virtual {p0, v2, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "translate_init_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final setGetImgTransInput(Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;)V
    .locals 2

    const-string v0, "custom::translation_method"

    const-string v1, "method_get_img_trans_config"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setGetOfflineInput(Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom::translation_method"

    const-string v1, "method_get_offline_info"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setGetOnlineInput(Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;)V
    .locals 2

    const-string v0, "custom::translation_method"

    const-string v1, "method_get_online_config"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appid"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;->getExtend()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setGetTranslateConfig(Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;)V
    .locals 2

    const-string v0, "custom::translation_method"

    const-string v1, "method_get_translate_config"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setImageTranslateInput(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->addTranslateInitConfigParam()V

    const-string v0, "custom::translation_method"

    const-string v1, "method_image_translate_generate"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setInitWsSpeech()V
    .locals 2

    const-string v0, "custom::translation_method"

    const-string v1, "method_init_ws_speech"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMethodEndTts(Lcom/oplus/aiunit/translation/request/EndTtsRequest;)V
    .locals 2

    const-string v0, "resultRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom::translation_method"

    const-string v1, "method_stop_ws_tts"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/EndTtsRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestId"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/EndTtsRequest;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMethodInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomParam setMethodInput:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",requestId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationInputSlot"

    invoke-static {v2, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "custom::translation_method"

    invoke-virtual {p0, v1, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPhotoTranslateInput(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->addTranslateInitConfigParam()V

    const-string v0, "custom::translation_method"

    const-string v1, "method_photo_translate_generate"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setSSETextTranslateInput(Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->addTranslateInitConfigParam()V

    const-string v0, "custom::translation_method"

    const-string v1, "method_sse_text_translate_generate"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setSpeechInitInput(Lcom/oplus/aiunit/translation/callback/ISpeechConfig;)V
    .locals 4

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom::translation_method"

    const-string v1, "method_init_speech"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/oplus/aiunit/translation/callback/ISpeechConfig;->getTextToSpeechTimeout()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/oplus/aiunit/translation/callback/ISpeechConfig;->getSpeechMaxTaskCount()I

    move-result v2

    invoke-interface {p1}, Lcom/oplus/aiunit/translation/callback/ISpeechConfig;->getPackageName()Ljava/lang/String;

    const-string p1, "speech_timeout"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "speech_max_task_count"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->addSpeechInitConfigParam()V

    new-instance p1, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$SpeechInitDataObject;

    invoke-direct {p1, v0, v1, v2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$SpeechInitDataObject;-><init>(JI)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "speech_init_config"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeechInitInput json = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslationInputSlot"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget-object p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->setSpeechInitJson(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setStartWsTtsInput(Lcom/oplus/aiunit/translation/request/WsTtsRequest;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom::translation_method"

    const-string v1, "method_start_ws_tts"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setSynthesisInput(Lcom/oplus/aiunit/translation/request/SynthesisRequest;)V
    .locals 11

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->addSpeechInitConfigParam()V

    const-string v0, "custom::translation_method"

    const-string v1, "method_speech_get"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    invoke-virtual {p0, v2, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->getExtend()Ljava/util/Map;

    move-result-object v0

    const-string v1, "appid"

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SynthesisRequest;->getParams()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "languages"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "pitch"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "speed"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v6, "speaker"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {p1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "model"

    invoke-virtual {p1, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v3}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    array-length p1, v1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    new-instance p1, Lcom/google/gson/d;

    invoke-direct {p1}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSynthesisInput languages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranslationInputSlot"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final setTextTranslateInput(Lcom/oplus/aiunit/translation/request/TextTranslateRequest;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->addTranslateInitConfigParam()V

    const-string v0, "custom::translation_method"

    const-string v1, "method_text_translate_generate"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setTranslationInitInput(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "provider"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "custom::translation_method"

    const-string v3, "method_init_translation"

    invoke-virtual {v0, v1, v3}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;->getTextTranslateTimeout()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;->getTextTranslateMaxTaskCount()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;->getSSETextTranslateTimeout()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;->getSSETextTranslateMaxTaskCount()I

    move-result v10

    invoke-interface/range {p1 .. p1}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;->getImageTranslateTimeout()J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;->getImageTranslateMaxTaskCount()I

    move-result v13

    invoke-interface/range {p1 .. p1}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;->getPhotoTranslateTimeout()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;->getPhotoTranslateMaxTaskCount()I

    move-result v16

    invoke-interface/range {p1 .. p1}, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;->getPackageName()Ljava/lang/String;

    const-string v1, "text_translate_timeout"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text_translate_max_task_count"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sse_text_translate_timeout"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sse_text_translate_max_task_count"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "image_translate_timeout"

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "image_translate_max_task_count"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "photo_translate_timeout"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "photo_translate_max_task_count"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->addTranslateInitConfigParam()V

    new-instance v1, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot$InitDataObject;-><init>(JIJIJIJI)V

    new-instance v2, Lcom/google/gson/d;

    invoke-direct {v2}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "translate_init_config"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTranslationInitInput json = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranslationInputSlot"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->setTranslateInitJson(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
