.class public final Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;
.super Lcom/oplus/aiunit/translation/common/BaseClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/aiunit/translation/common/BaseClient<",
        "Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;",
        "Lcom/oplus/aiunit/translation/common/BaseOutputSlot;",
        "Lcom/oplus/aiunit/translation/fuction/translate/TranslationDetector;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$Companion;

.field public static final METHOD_GET_IMG_TRANS_CONFIG:Ljava/lang/String; = "method_get_img_trans_config"

.field public static final METHOD_GET_OFFLINE_INFO:Ljava/lang/String; = "method_get_offline_info"

.field public static final METHOD_GET_ONLINE_CONFIG:Ljava/lang/String; = "method_get_online_config"

.field public static final METHOD_GET_TRANSLATE_CONFIG:Ljava/lang/String; = "method_get_translate_config"

.field public static final METHOD_GET_WS_TTS_INIT_STATUS:Ljava/lang/String; = "method_get_ws_tts_init_status"

.field public static final METHOD_IMAGE_TRANSLATE_CANCEL:Ljava/lang/String; = "method_image_translate_cancel"

.field public static final METHOD_IMAGE_TRANSLATE_GENERATE:Ljava/lang/String; = "method_image_translate_generate"

.field public static final METHOD_INIT_AI_SPEECH:Ljava/lang/String; = "method_init_speech"

.field public static final METHOD_INIT_AI_TRANSLATION:Ljava/lang/String; = "method_init_translation"

.field public static final METHOD_INIT_OMNI_PLUGIN:Ljava/lang/String; = "method_init_omni_plugin"

.field public static final METHOD_INIT_TRANSLATION_LOG:Ljava/lang/String; = "METHOD_INIT_TRANSLATION_LOG"

.field public static final METHOD_INIT_WS_SPEECH:Ljava/lang/String; = "method_init_ws_speech"

.field public static final METHOD_PHOTO_TRANSLATE_CANCEL:Ljava/lang/String; = "method_photo_translate_cancel"

.field public static final METHOD_PHOTO_TRANSLATE_GENERATE:Ljava/lang/String; = "method_photo_translate_generate"

.field public static final METHOD_RELEASE:Ljava/lang/String; = "method_release"

.field public static final METHOD_SPEECH_GET:Ljava/lang/String; = "method_speech_get"

.field public static final METHOD_SPEECH_STOP:Ljava/lang/String; = "method_speech_stop"

.field public static final METHOD_SSE_TEXT_TRANSLATE_CANCEL:Ljava/lang/String; = "method_sse_text_translate_cancel"

.field public static final METHOD_SSE_TEXT_TRANSLATE_GENERATE:Ljava/lang/String; = "method_sse_text_translate_generate"

.field public static final METHOD_START_WS_TTS:Ljava/lang/String; = "method_start_ws_tts"

.field public static final METHOD_STOP_WS_TTS:Ljava/lang/String; = "method_stop_ws_tts"

.field public static final METHOD_TEXT_TRANSLATE_CANCEL:Ljava/lang/String; = "method_text_translate_cancel"

.field public static final METHOD_TEXT_TRANSLATE_GENERATE:Ljava/lang/String; = "method_text_translate_generate"

.field public static final PARAM_ASR_STRING:Ljava/lang/String; = "param_asr_string"

.field public static final PARAM_CLIENT_LABEL:Ljava/lang/String; = "TranslationClient"

.field public static final PARAM_EVENT_CODE:Ljava/lang/String; = "param_event_code"

.field public static final PARAM_IMG_TRANS_CONFIG:Ljava/lang/String; = "param_img_trans_config"

.field public static final PARAM_KEY_ALGO_MODEL:Ljava/lang/String; = "model"

.field public static final PARAM_KEY_APPID:Ljava/lang/String; = "appid"

.field public static final PARAM_KEY_AUDIO_BUFFER_LENGTH:Ljava/lang/String; = "audio_buffer_length"

.field public static final PARAM_KEY_AUDIO_FILE:Ljava/lang/String; = "audioFile"

.field public static final PARAM_KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final PARAM_KEY_CONFIG_IMAGE_TRANSLATE_MAX_TASK:Ljava/lang/String; = "image_translate_max_task_count"

.field public static final PARAM_KEY_CONFIG_IMAGE_TRANSLATE_TIMEOUT:Ljava/lang/String; = "image_translate_timeout"

.field public static final PARAM_KEY_CONFIG_PHOTO_TRANSLATE_MAX_TASK:Ljava/lang/String; = "photo_translate_max_task_count"

.field public static final PARAM_KEY_CONFIG_PHOTO_TRANSLATE_TIMEOUT:Ljava/lang/String; = "photo_translate_timeout"

.field public static final PARAM_KEY_CONFIG_SPEECH_MAX_TASK:Ljava/lang/String; = "speech_max_task_count"

.field public static final PARAM_KEY_CONFIG_SPEECH_TIMEOUT:Ljava/lang/String; = "speech_timeout"

.field public static final PARAM_KEY_CONFIG_SSE_TEXT_TRANSLATE_MAX_TASK:Ljava/lang/String; = "sse_text_translate_max_task_count"

.field public static final PARAM_KEY_CONFIG_SSE_TEXT_TRANSLATE_TIMEOUT:Ljava/lang/String; = "sse_text_translate_timeout"

.field public static final PARAM_KEY_CONFIG_TEXT_TRANSLATE_MAX_TASK:Ljava/lang/String; = "text_translate_max_task_count"

.field public static final PARAM_KEY_CONFIG_TEXT_TRANSLATE_TIMEOUT:Ljava/lang/String; = "text_translate_timeout"

.field public static final PARAM_KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final PARAM_KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final PARAM_KEY_ERROR_REASON:Ljava/lang/String; = "errorReason"

.field public static final PARAM_KEY_FINISH_FULL_TEXT:Ljava/lang/String; = "full_text"

.field public static final PARAM_KEY_FINISH_REASON:Ljava/lang/String; = "finish_reason"

.field public static final PARAM_KEY_LANGUAGES:Ljava/lang/String; = "languages"

.field public static final PARAM_KEY_PITCH:Ljava/lang/String; = "pitch"

.field public static final PARAM_KEY_REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final PARAM_KEY_SPEECH_AUDIO_BIT:Ljava/lang/String; = "speech_audio_bit"

.field public static final PARAM_KEY_SPEECH_AUDIO_FORM:Ljava/lang/String; = "speech_format"

.field public static final PARAM_KEY_SPEECH_INIT_CONFIG:Ljava/lang/String; = "speech_init_config"

.field public static final PARAM_KEY_SPEECH_INIT_STATE:Ljava/lang/String; = "speech_init_state"

.field public static final PARAM_KEY_SPEECH_SAMPLE_RATE:Ljava/lang/String; = "speech_sample_rate"

.field public static final PARAM_KEY_SPEED:Ljava/lang/String; = "speed"

.field public static final PARAM_KEY_TEXT_TYPE:Ljava/lang/String; = "type"

.field public static final PARAM_KEY_TRANSLATE_INIT_CONFIG:Ljava/lang/String; = "translate_init_config"

.field public static final PARAM_KEY_TRANSLATE_INIT_STATE:Ljava/lang/String; = "translate_init_state"

.field public static final PARAM_KEY_VOICE_GENDER:Ljava/lang/String; = "speaker"

.field public static final PARAM_KEY_WS_TTS_INIT_STATUS:Ljava/lang/String; = "ws_tts_init_status"

.field public static final PARAM_KEY_YOUDAO_DATA:Ljava/lang/String; = "PARAM_KEY_YOUDAO_DATA"

.field public static final PARAM_MT_STRING:Ljava/lang/String; = "param_mt_string"

.field public static final PARAM_TRANSLATE_CONFIG:Ljava/lang/String; = "param_translate_config"

.field public static final PARAM_TTS_STRING:Ljava/lang/String; = "param_tts_string"

.field public static final PARAM_WS_TTS_OBJECT:Ljava/lang/String; = "param_ws_tts_object"

.field public static final TAG:Ljava/lang/String; = "TranslationClient"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->Companion:Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/aiunit/translation/fuction/translate/TranslationDetector;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TranslationClient"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/aiunit/translation/common/BaseClient;-><init>(Landroid/content/Context;Lcom/oplus/aiunit/translation/common/BaseDetector;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generatePhotoTranslate$lambda$1(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generateImageTranslate$lambda$0(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V

    return-void
.end method

.method private static final generateImageTranslate$lambda$0(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V
    .locals 7

    const-string v0, "$request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->getImageModel()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->getYoudaoInfo()Lcom/oplus/aiunit/translation/model/YoudaoInfo;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->getRequestId()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->translate(ILcom/oplus/aiunit/translation/model/YoudaoInfo;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static final generatePhotoTranslate$lambda$1(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V
    .locals 7

    const-string v0, "$request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->getYoudaoInfo()Lcom/oplus/aiunit/translation/model/YoudaoInfo;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->getRequestId()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->translate(ILcom/oplus/aiunit/translation/model/YoudaoInfo;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final generateSourceLan(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p1, "auto"

    :cond_1
    const-string p0, "zh"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "zh-CN"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string p1, "zh-CHS"

    :cond_3
    const-string p0, "zh-TW"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p1, "zh-CHT"

    :cond_4
    const-string p0, "es"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "pt"

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    new-instance p0, Lkotlin/text/n;

    const-string v1, "-"

    invoke-direct {p0, v1}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lkotlin/text/n;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    :cond_6
    return-object p1
.end method

.method private final generateTargetLan(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "zh"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "zh-CN"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p1, "zh-CHS"

    :cond_1
    const-string p0, "zh-TW"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p1, "zh-CHT"

    :cond_2
    const-string p0, "es"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "pt"

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    new-instance p0, Lkotlin/text/n;

    const-string v1, "-"

    invoke-direct {p0, v1}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lkotlin/text/n;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    :cond_4
    return-object p1
.end method

.method private final handleGetImgTransConfigResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "param_img_trans_config"

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p0}, Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getParamStr(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetImgTransConfigResult onError errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",errorString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final handleGetOfflineResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package::json_result"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;->onSuccess(Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetOfflineResult catch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :cond_0
    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getParamStr(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetOfflineResult onError errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",errorString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final handleGetOnlineResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "param_asr_string"

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "param_mt_string"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_tts_string"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p0, v0, p1}, Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getParamStr(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetOnlineResult onError errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",errorString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final handleGetTranslateConfigResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/ToolboxTranslateConfigCallback;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "param_translate_config"

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p0}, Lcom/oplus/aiunit/translation/callback/ToolboxTranslateConfigCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getParamStr(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetTranslateConfigResult onError errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",errorString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/translation/callback/ToolboxTranslateConfigCallback;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final handleGetWsTtsInitStatusResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/WsTtsInitStatusCallback;)V
    .locals 5

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleGetWsTtsInitStatusResult"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v1, "custom::translation_callback_type"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetWsTtsInitStatusResult: callbackMethod = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ws_tts_init_status"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetWsTtsInitStatusResult: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/oplus/aiunit/translation/callback/WsTtsInitStatusCallback;->onStatus(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final handleImageTranslateResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V
    .locals 9

    if-eqz p1, :cond_6

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "PARAM_KEY_YOUDAO_DATA"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->removeShareMemory(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "package::json_result"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p1, v1

    :goto_0
    :try_start_0
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-static {p1}, Lcom/google/gson/n;->d(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/i;->e()Lcom/google/gson/l;

    move-result-object p1

    const-string v1, "angle"

    invoke-virtual {p1, v1}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/i;->b()D

    move-result-wide v1

    const-string v3, "from"

    invoke-virtual {p1, v3}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    move-object v3, v4

    :goto_1
    const-string v5, "to"

    invoke-virtual {p1, v5}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    const-string v6, "algorithmModel"

    invoke-virtual {p1, v6}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/google/gson/i;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v4

    :goto_3
    const-string v7, "renderImage"

    invoke-virtual {p1, v7}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string v7, "translate"

    invoke-virtual {p1, v7}, Lcom/google/gson/l;->q(Ljava/lang/String;)Lcom/google/gson/f;

    move-result-object p1

    const-string v7, "getAsJsonArray(...)"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$handleImageTranslateResult$1$translateType$1;

    invoke-direct {v7}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$handleImageTranslateResult$1$translateType$1;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    const-string v8, "getType(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Lcom/google/gson/d;->i(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fromJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;-><init>(D)V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->setTranslate(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->setFrom(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->setTo(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->setAlgorithmModel(Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->setRenderImage(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-interface {p2, v0}, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;->onTranslated(Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    sget-object p2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImageTranslateResult catch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_5

    :cond_5
    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getParamStr(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImageTranslateResult onError errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",errorString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;->onError(ILjava/lang/String;)V

    :cond_6
    :goto_5
    return-void
.end method

.method private final handleInitSpeechResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/Callback;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "handleInitSpeechResult onSuccess()"

    invoke-virtual {p1, p0, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/oplus/aiunit/translation/callback/Callback;->onSuccess()V

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->setSpeechInitState(I)V

    goto :goto_0

    :cond_1
    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInitSpeechResult onError errorString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->setSpeechInitState(I)V

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/oplus/aiunit/translation/callback/Callback;->onError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final handleInitTranslateResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/Callback;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "handleInitTranslateResult onSuccess()"

    invoke-virtual {p1, p0, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/oplus/aiunit/translation/callback/Callback;->onSuccess()V

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->setTranslateInitState(I)V

    goto :goto_0

    :cond_1
    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInitTranslateResult onError errorString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->setTranslateInitState(I)V

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/oplus/aiunit/translation/callback/Callback;->onError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final handleInitWsSpeechResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;)V
    .locals 13

    if-eqz p1, :cond_4

    :try_start_0
    const-string v2, "custom::translation_callback_type"

    invoke-virtual {p1, v2}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "param_ws_tts_object"

    invoke-virtual {p1, v3}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/gson/d;

    invoke-direct {v3}, Lcom/google/gson/d;-><init>()V

    const-string v4, "CALLBACK_METHOD_ON_RESPONSE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "handleInitWsSpeechResult CALLBACK_METHOD_ON_RESPONSE()"

    invoke-virtual {v2, v4, v5}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$handleInitWsSpeechResult$1$respType$1;

    invoke-direct {v2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$handleInitWsSpeechResult$1$respType$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v4, "getType(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/d;->n(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "fromJson(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;

    if-eqz p2, :cond_4

    invoke-interface {p2, v0}, Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;->onResponse(Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    const-string v3, "CALLBACK_METHOD_ON_TTS_START"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "format"

    const-string v5, "duration"

    const-string v6, "sampleRate"

    const-string v7, "dataType"

    const-string v8, "frameNo"

    const-string v9, "requestId"

    if-eqz v3, :cond_1

    :try_start_1
    sget-object v2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v3

    const-string v10, "handleInitWsSpeechResult CALLBACK_METHOD_ON_TTS_START"

    invoke-virtual {v2, v3, v10}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gson/n;->d(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/i;->e()Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->g()J

    move-result-wide v8

    invoke-virtual {v0, v7}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->c()I

    move-result v6

    invoke-virtual {v0, v5}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/i;->g()J

    move-result-wide v11

    if-eqz p2, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v0, p2

    move-object v1, v2

    move-wide v2, v8

    move-object v4, v7

    move-object v5, v10

    move-wide v7, v11

    invoke-interface/range {v0 .. v8}, Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;->onTtsStart(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto/16 :goto_1

    :cond_1
    const-string v3, "CALLBACK_METHOD_ON_TTS_END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v3

    const-string v10, "handleInitWsSpeechResult CALLBACK_METHOD_ON_TTS_END"

    invoke-virtual {v2, v3, v10}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gson/n;->d(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/i;->e()Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->g()J

    move-result-wide v8

    invoke-virtual {v0, v7}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->c()I

    move-result v6

    invoke-virtual {v0, v5}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/i;->g()J

    move-result-wide v11

    if-eqz p2, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v0, p2

    move-object v1, v2

    move-wide v2, v8

    move-object v4, v7

    move-object v5, v10

    move-wide v7, v11

    invoke-interface/range {v0 .. v8}, Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;->onTtsEnd(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto/16 :goto_1

    :cond_2
    const-string v3, "CALLBACK_METHOD_ON_AUDIO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "handleInitWsSpeechResult CALLBACK_METHOD_ON_AUDIO"

    invoke-virtual {v2, v3, v4}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gson/n;->d(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/i;->e()Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->g()J

    move-result-wide v3

    invoke-virtual {v0, v7}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v7

    const-string v8, "audio"

    invoke-virtual {v0, v8}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/i;->c()I

    move-result v6

    invoke-virtual {v0, v5}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/i;->g()J

    move-result-wide v9

    if-eqz p2, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v8}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v0, p2

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v7

    move v5, v6

    move-wide v6, v9

    invoke-interface/range {v0 .. v8}, Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;->onAudio(Ljava/lang/String;JLjava/lang/String;IJLjava/lang/String;)V

    :cond_3
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInitWsSpeechResult catch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_4
    :goto_1
    return-void
.end method

.method private final handleOSlotResult(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "AIUnit\u76f8\u5173\u9519\u8bef"

    const/4 v0, -0x2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    move v0, p1

    move-object p1, v5

    :goto_0
    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oSlot code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    instance-of v1, p2, Lcom/oplus/aiunit/translation/callback/Callback;

    if-eqz v1, :cond_1

    check-cast p2, Lcom/oplus/aiunit/translation/callback/Callback;

    invoke-interface {p2, p1}, Lcom/oplus/aiunit/translation/callback/Callback;->onError(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    instance-of v1, p2, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;

    if-eqz v1, :cond_2

    check-cast p2, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;

    invoke-interface {p2, v0, p1}, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;->onError(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    instance-of v1, p2, Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;

    if-eqz v1, :cond_3

    check-cast p2, Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;

    invoke-interface {p2, v0, p1}, Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;->onError(ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    instance-of v1, p2, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;

    if-eqz v1, :cond_4

    check-cast p2, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;

    invoke-interface {p2, v0, p1}, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;->onError(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    instance-of v1, p2, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;

    if-eqz v1, :cond_5

    check-cast p2, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;

    invoke-interface {p2, v0, p1}, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;->onError(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    instance-of v1, p2, Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;

    if-eqz v1, :cond_6

    check-cast p2, Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;

    invoke-interface {p2, v0, p1}, Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;->onError(ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    instance-of v1, p2, Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;

    if-eqz v1, :cond_7

    check-cast p2, Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;

    invoke-interface {p2, v0, p1}, Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oSlot catch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private final handlePhotoTranslateResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V
    .locals 9

    if-eqz p1, :cond_6

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "PARAM_KEY_YOUDAO_DATA"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->removeShareMemory(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "package::json_result"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p1, v1

    :goto_0
    :try_start_0
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-static {p1}, Lcom/google/gson/n;->d(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/i;->e()Lcom/google/gson/l;

    move-result-object p1

    const-string v1, "angle"

    invoke-virtual {p1, v1}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/i;->b()D

    move-result-wide v1

    const-string v3, "from"

    invoke-virtual {p1, v3}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    move-object v3, v4

    :goto_1
    const-string v5, "to"

    invoke-virtual {p1, v5}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    const-string v6, "algorithmModel"

    invoke-virtual {p1, v6}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/google/gson/i;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v4

    :goto_3
    const-string v7, "renderImage"

    invoke-virtual {p1, v7}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string v7, "translate"

    invoke-virtual {p1, v7}, Lcom/google/gson/l;->q(Ljava/lang/String;)Lcom/google/gson/f;

    move-result-object p1

    const-string v7, "getAsJsonArray(...)"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$handlePhotoTranslateResult$1$translateType$1;

    invoke-direct {v7}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$handlePhotoTranslateResult$1$translateType$1;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    const-string v8, "getType(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Lcom/google/gson/d;->i(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fromJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;-><init>(D)V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->setTranslate(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->setFrom(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->setTo(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->setAlgorithmModel(Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->setRenderImage(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-interface {p2, v0}, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;->onTranslated(Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    sget-object p2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePhotoTranslateResult catch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_5

    :cond_5
    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getParamStr(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePhotoTranslateResult onError errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",errorString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;->onError(ILjava/lang/String;)V

    :cond_6
    :goto_5
    return-void
.end method

.method private final handleSSETextTranslateResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;)V
    .locals 5

    if-eqz p1, :cond_5

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestId"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callback_method_ondataavailable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "package::json_result"

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, v1, p0}, Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;->onDataAvailable(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v2, "callback_method_onerror"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "errorCode"

    invoke-virtual {p1, v2}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getParamStr(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSSETextTranslateResult onError errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",errorString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, v1, p1, v0}, Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "callback_method_onstop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;->onStop(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "callback_method_onstart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;->onStart(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "callback_method_onfinish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v3}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, v1, p0}, Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;->onFinished(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "handleSSETextTranslateResult error"

    invoke-virtual {p1, p0, p2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private final handleSynthesizeTextResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/SynthesisCallback;)V
    .locals 9

    if-eqz p1, :cond_b

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_ondataavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "requestId"

    if-eqz v1, :cond_6

    new-instance v0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/model/TtsAudioForm;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "audioFile"

    invoke-virtual {p1, v3}, Lcom/oplus/aiunit/core/FramePackage;->removeShareMemory(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "audio_buffer_length"

    invoke-virtual {p1, v3}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    move v3, v4

    :goto_0
    sget-object v5, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSynthesizeTextResult :decodedBytes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",receiveLength:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "speech_format"

    invoke-virtual {p1, v6}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "speech_sample_rate"

    invoke-virtual {p1, v7}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    const-string v8, "speech_audio_bit"

    invoke-virtual {p1, v8}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    invoke-virtual {p1, v2}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6}, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->setFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->setSample(I)V

    invoke-virtual {v0, v8}, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->setBitDepth(I)V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->setRequestId(Ljava/lang/String;)V

    array-length p1, v1

    if-ge p1, v3, :cond_4

    if-eqz p2, :cond_3

    const-string p1, "AIUnit share memory size not match"

    const v2, 0xc3505

    invoke-interface {p2, v2, p1}, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;->onError(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "handleSynthesizeTextResult onError size"

    invoke-virtual {v5, p1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v1, v4, v3}, Lkotlin/collections/i;->o([BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    sget-object v2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSynthesizeTextResult catch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_4
    if-eqz p2, :cond_5

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;->onAudioAvailable([BLcom/oplus/aiunit/translation/model/TtsAudioForm;)V

    :cond_5
    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "handleSynthesizeTextResult onAudioAvailable"

    invoke-virtual {p1, p0, p2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    const-string v1, "callback_method_onstart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "handleSynthesizeTextResult onStart"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_b

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p0}, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;->onStart(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    const-string v1, "callback_method_onstop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "handleSynthesizeTextResult onStop"

    invoke-virtual {p1, p0, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    invoke-interface {p2}, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;->onStop()V

    goto :goto_5

    :cond_8
    const-string v1, "callback_method_onfinish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "handleSynthesizeTextResult onFinished"

    invoke-virtual {p1, p0, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    invoke-interface {p2}, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;->onFinished()V

    goto :goto_5

    :cond_9
    const-string v1, "callback_method_onerror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getParamStr(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSynthesizeTextResult onError errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",errorString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;->onError(ILjava/lang/String;)V

    goto :goto_5

    :cond_a
    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "else default"

    invoke-virtual {p1, p0, p2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void
.end method

.method private final handleTextTranslateResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;)V
    .locals 5

    if-eqz p1, :cond_3

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package::json_result"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "param_event_code"

    invoke-virtual {p1, v2}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    new-instance v2, Lcom/google/gson/e;

    invoke-direct {v2}, Lcom/google/gson/e;-><init>()V

    const-class v3, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    new-instance v4, Lcom/oplus/aiunit/translation/model/TextTranslateDataDeserializer;

    invoke-direct {v4}, Lcom/oplus/aiunit/translation/model/TextTranslateDataDeserializer;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/e;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/e;->b()Lcom/google/gson/d;

    move-result-object v2

    new-instance v3, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$handleTextTranslateResult$1$listType$1;

    invoke-direct {v3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$handleTextTranslateResult$1$listType$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "getType(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/d;->n(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fromJson(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, v0, v1, p1}, Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;->onSuccess(Ljava/lang/String;Ljava/util/List;I)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object p2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTextTranslateResult catch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_3

    :cond_2
    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getParamStr(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTextTranslateResult onError errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",errorString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;->onError(ILjava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public final cancelImageTranslate(Ljava/lang/String;)V
    .locals 10

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient cancelImageTranslate()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "method_image_translate_cancel"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final cancelPhotoTranslate(Ljava/lang/String;)V
    .locals 10

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient cancelPhotoTranslate()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "method_photo_translate_cancel"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final cancelSSETextTranslate(Ljava/lang/String;)V
    .locals 10

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient cancelSSETextTranslate()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "method_sse_text_translate_cancel"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final cancelSynthesizeText(Ljava/lang/String;)V
    .locals 10

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient cancelSynthesizeText()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "method_speech_stop"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final cancelTextTranslate(Ljava/lang/String;)V
    .locals 10

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient cancelTextTranslate()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "method_text_translate_cancel"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final generateImageTranslate(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V
    .locals 8

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient generateImageTranslate()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->getPictureTransModel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->getSourceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generateSourceLan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->getTargetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generateTargetLan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generateImageTranslate$params$1;

    invoke-direct {v2, p1, v0, v1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generateImageTranslate$params$1;-><init>(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/aiunit/translation/fuction/translate/b;

    invoke-direct {v1, p1, v2, p2}, Lcom/oplus/aiunit/translation/fuction/translate/b;-><init>(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ln8/e;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xc3501

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;->onError(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->getPictureTransModel()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->setAlgorithmModel(I)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v4, "method_image_translate_generate"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final generatePhotoTranslate(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V
    .locals 8

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient generatePhotoTranslate()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->getPictureTransModel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->getSourceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generateSourceLan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->getTargetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generateTargetLan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;

    invoke-direct {v2, p1, v0, v1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;-><init>(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/aiunit/translation/fuction/translate/a;

    invoke-direct {v1, p1, v2, p2}, Lcom/oplus/aiunit/translation/fuction/translate/a;-><init>(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ln8/e;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xc3501

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;->onError(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->getPictureTransModel()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->setAlgorithmModel(I)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v4, "method_photo_translate_generate"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final generateSSETextTranslate(Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient generateSSETextTranslate()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "method_sse_text_translate_generate"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final generateTextTranslate(Lcom/oplus/aiunit/translation/request/TextTranslateRequest;Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient generateTextTranslate()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "method_text_translate_generate"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final getImgTransConfig(Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient getImgTransConfig()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "method_get_img_trans_config"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final getOfflineInfo(Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient getOfflineInfo()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "method_get_offline_info"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final getOnlineConfig(Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient getOnlineConfig()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "method_get_online_config"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final getToolboxTranslateConfig(Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;Lcom/oplus/aiunit/translation/callback/ToolboxTranslateConfigCallback;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient getToolboxTranslateConfig()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "method_get_translate_config"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final getWsTtsInitStatus(Lcom/oplus/aiunit/translation/callback/WsTtsInitStatusCallback;)V
    .locals 10

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient getWsTtsInitStatus()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v6, "method_get_ws_tts_init_status"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public handleInput(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/core/callback/IAIMessenger;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/core/callback/IAIMessenger;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "methods"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messenger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v1

    const-string v2, "createInputSlot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;

    const-string v2, "param_client_label"

    const-string v3, "TranslationClient"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->INSTANCE:Lcom/oplus/aiunit/translation/utils/InitStateSingleton;

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_sdk_version"

    invoke-virtual {v1, v4, v3}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_package_name"

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/utils/InitStateSingleton;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "method_image_translate_generate"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.ImageTranslateRequest"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setImageTranslateInput(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;)V

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "method_init_omni_plugin"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1, p1, v4}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setMethodInput(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "method_get_img_trans_config"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto/16 :goto_0

    :cond_2
    instance-of p3, p1, Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;

    if-eqz p3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;

    :cond_3
    invoke-virtual {v1, v3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setGetImgTransInput(Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "method_text_translate_generate"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.TextTranslateRequest"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setTextTranslateInput(Lcom/oplus/aiunit/translation/request/TextTranslateRequest;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "method_sse_text_translate_generate"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto/16 :goto_0

    :cond_5
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.StreamTextTranslateRequest"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setSSETextTranslateInput(Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "method_get_online_config"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto/16 :goto_0

    :cond_6
    instance-of p3, p1, Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;

    if-eqz p3, :cond_7

    move-object v3, p1

    check-cast v3, Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;

    :cond_7
    invoke-virtual {v1, v3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setGetOnlineInput(Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "method_start_ws_tts"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.WsTtsRequest"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/request/WsTtsRequest;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setStartWsTtsInput(Lcom/oplus/aiunit/translation/request/WsTtsRequest;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "method_get_offline_info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto/16 :goto_0

    :cond_9
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.OfflinePackageRequest"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setGetOfflineInput(Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "method_photo_translate_cancel"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setMethodInput(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "method_text_translate_cancel"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setMethodInput(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "method_stop_ws_tts"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    goto/16 :goto_0

    :cond_c
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.EndTtsRequest"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/request/EndTtsRequest;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setMethodEndTts(Lcom/oplus/aiunit/translation/request/EndTtsRequest;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "method_photo_translate_generate"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    goto/16 :goto_0

    :cond_d
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.PhotoTranslateRequest"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setPhotoTranslateInput(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;)V

    goto/16 :goto_0

    :sswitch_c
    const-string p1, "method_release"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v1, p1, v4}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setMethodInput(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "method_image_translate_cancel"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f

    goto/16 :goto_0

    :cond_f
    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setMethodInput(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "method_get_translate_config"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_10

    goto/16 :goto_0

    :cond_10
    instance-of p3, p1, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;

    if-eqz p3, :cond_11

    move-object v3, p1

    check-cast v3, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;

    :cond_11
    invoke-virtual {v1, v3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setGetTranslateConfig(Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;)V

    goto/16 :goto_0

    :sswitch_f
    const-string p1, "method_get_ws_tts_init_status"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_12

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v1, p1, v4}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setMethodInput(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "method_sse_text_translate_cancel"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13

    goto :goto_0

    :cond_13
    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setMethodInput(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_11
    const-string p1, "method_init_ws_speech"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    invoke-virtual {v1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setInitWsSpeech()V

    goto :goto_0

    :sswitch_12
    const-string v2, "method_init_translation"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_15

    goto :goto_0

    :cond_15
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.callback.ITranslateConfig"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/callback/ITranslateConfig;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setTranslationInitInput(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;)V

    goto :goto_0

    :sswitch_13
    const-string v2, "method_speech_get"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_16

    goto :goto_0

    :cond_16
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.SynthesisRequest"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/request/SynthesisRequest;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setSynthesisInput(Lcom/oplus/aiunit/translation/request/SynthesisRequest;)V

    goto :goto_0

    :sswitch_14
    const-string v2, "method_speech_stop"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_17

    goto :goto_0

    :cond_17
    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setMethodInput(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_15
    const-string v2, "method_init_speech"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_18

    goto :goto_0

    :cond_18
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.callback.ISpeechConfig"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/callback/ISpeechConfig;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationInputSlot;->setSpeechInitInput(Lcom/oplus/aiunit/translation/callback/ISpeechConfig;)V

    :goto_0
    invoke-virtual {v1, p4}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setMessenger(Lcom/oplus/aiunit/core/callback/IAIMessenger;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object p1

    const-string p3, "createOutputSlot(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/translation/common/BaseOutputSlot;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object p3

    invoke-virtual {p3, v1, p1}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->getJsonResult()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oSlot jsonString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p3, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleOSlotResult(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->getJsonResult()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76e04b6d -> :sswitch_15
        -0x64b7251f -> :sswitch_14
        -0x5e169b69 -> :sswitch_13
        -0x5c821260 -> :sswitch_12
        -0x5b7e4dac -> :sswitch_11
        -0x4b32dd3b -> :sswitch_10
        -0x4b2b7507 -> :sswitch_f
        -0x3f74ea46 -> :sswitch_e
        -0x3e145df3 -> :sswitch_d
        -0x1d53d157 -> :sswitch_c
        -0x1abb19ef -> :sswitch_b
        -0xb279971 -> :sswitch_a
        -0x80ff981 -> :sswitch_9
        -0x53589ea -> :sswitch_8
        0x18b8b71 -> :sswitch_7
        0xa7fe72b -> :sswitch_6
        0x16210da7 -> :sswitch_5
        0x294f2300 -> :sswitch_4
        0x2f48003a -> :sswitch_3
        0x5946821c -> :sswitch_2
        0x5b1d2d08 -> :sswitch_1
        0x68caf048 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleResult(Lcom/oplus/aiunit/core/FramePackage;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/aiunit/core/FramePackage;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "originMethods"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranslationClient handling result for method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const-string v1, "custom::translation_method"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResult, methods: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "null cannot be cast to non-null type com.oplus.aiunit.translation.callback.Callback"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "method_image_translate_generate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;

    if-eqz v0, :cond_2

    move-object p3, p2

    check-cast p3, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleImageTranslateResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V

    goto/16 :goto_2

    :sswitch_1
    const-string p0, "method_init_omni_plugin"

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "method_get_img_trans_config"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;

    if-eqz v0, :cond_4

    move-object p3, p2

    check-cast p3, Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;

    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleGetImgTransConfigResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;)V

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "method_text_translate_generate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_2

    :cond_5
    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;

    if-eqz v0, :cond_6

    move-object p3, p2

    check-cast p3, Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;

    :cond_6
    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleTextTranslateResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;)V

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "method_sse_text_translate_generate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_2

    :cond_7
    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;

    if-eqz v0, :cond_8

    move-object p3, p2

    check-cast p3, Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;

    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleSSETextTranslateResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;)V

    goto/16 :goto_2

    :sswitch_5
    const-string v0, "method_get_online_config"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_2

    :cond_9
    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;

    if-eqz v0, :cond_a

    move-object p3, p2

    check-cast p3, Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;

    :cond_a
    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleGetOnlineResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;)V

    goto/16 :goto_2

    :sswitch_6
    const-string v0, "method_get_offline_info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_2

    :cond_b
    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;

    if-eqz v0, :cond_c

    move-object p3, p2

    check-cast p3, Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;

    :cond_c
    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleGetOfflineResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;)V

    goto/16 :goto_2

    :sswitch_7
    const-string v0, "method_photo_translate_generate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_2

    :cond_d
    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;

    if-eqz v0, :cond_e

    move-object p3, p2

    check-cast p3, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;

    :cond_e
    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handlePhotoTranslateResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V

    goto/16 :goto_2

    :sswitch_8
    const-string p0, "method_release"

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "method_get_translate_config"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_2

    :cond_f
    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/ToolboxTranslateConfigCallback;

    if-eqz v0, :cond_10

    move-object p3, p2

    check-cast p3, Lcom/oplus/aiunit/translation/callback/ToolboxTranslateConfigCallback;

    :cond_10
    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleGetTranslateConfigResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/ToolboxTranslateConfigCallback;)V

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "method_get_ws_tts_init_status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient METHOD_GET_WS_TTS_INIT_STATUS handleResult"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/WsTtsInitStatusCallback;

    if-eqz v0, :cond_12

    move-object p3, p2

    check-cast p3, Lcom/oplus/aiunit/translation/callback/WsTtsInitStatusCallback;

    :cond_12
    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleGetWsTtsInitStatusResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/WsTtsInitStatusCallback;)V

    goto :goto_2

    :sswitch_b
    const-string p3, "method_init_ws_speech"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13

    goto :goto_2

    :cond_13
    const-string p3, "null cannot be cast to non-null type com.oplus.aiunit.translation.callback.TtsWebsocketCallback"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleInitWsSpeechResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;)V

    goto :goto_2

    :sswitch_c
    const-string p3, "method_init_translation"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14

    goto :goto_2

    :cond_14
    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/oplus/aiunit/translation/callback/Callback;

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleInitTranslateResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/Callback;)V

    goto :goto_2

    :sswitch_d
    const-string v0, "method_speech_get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2

    :cond_15
    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;

    if-eqz v0, :cond_16

    move-object p3, p2

    check-cast p3, Lcom/oplus/aiunit/translation/callback/SynthesisCallback;

    :cond_16
    invoke-direct {p0, p1, p3}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleSynthesizeTextResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/SynthesisCallback;)V

    goto :goto_2

    :sswitch_e
    const-string p3, "method_init_speech"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_17

    goto :goto_2

    :cond_17
    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/oplus/aiunit/translation/callback/Callback;

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->handleInitSpeechResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/translation/callback/Callback;)V

    :cond_18
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76e04b6d -> :sswitch_e
        -0x5e169b69 -> :sswitch_d
        -0x5c821260 -> :sswitch_c
        -0x5b7e4dac -> :sswitch_b
        -0x4b2b7507 -> :sswitch_a
        -0x3f74ea46 -> :sswitch_9
        -0x1d53d157 -> :sswitch_8
        -0x1abb19ef -> :sswitch_7
        0x18b8b71 -> :sswitch_6
        0x16210da7 -> :sswitch_5
        0x294f2300 -> :sswitch_4
        0x2f48003a -> :sswitch_3
        0x5946821c -> :sswitch_2
        0x5b1d2d08 -> :sswitch_1
        0x68caf048 -> :sswitch_0
    .end sparse-switch
.end method

.method public final initOmniPlugin()V
    .locals 10

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient release()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "method_init_omni_plugin"

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final initSpeech(Lcom/oplus/aiunit/translation/callback/ISpeechConfig;Lcom/oplus/aiunit/translation/callback/Callback;)V
    .locals 10

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->init(Landroid/content/Context;Z)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient init SpeechSDK()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetectName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->isDetectAvailable(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient isDetectAvailable not"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "method_init_speech"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final initTranslate(Lcom/oplus/aiunit/translation/callback/ITranslateConfig;Lcom/oplus/aiunit/translation/callback/Callback;)V
    .locals 10

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->init(Landroid/content/Context;Z)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient init TranslateSDK()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetectName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->isDetectAvailable(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient isDetectAvailable not"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "method_init_translation"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final initWsSpeech(Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;)V
    .locals 10

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->init(Landroid/content/Context;Z)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient initWsSpeech()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetectName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->isDetectAvailable(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient isDetectAvailable not"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v6, "method_init_ws_speech"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final release()V
    .locals 10

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient release()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "method_release"

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final startWsTts(Lcom/oplus/aiunit/translation/request/WsTtsRequest;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient startWsTts()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "method_start_ws_tts"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final stopWsTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient stopWsTts()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/oplus/aiunit/translation/request/EndTtsRequest;

    invoke-direct {v4}, Lcom/oplus/aiunit/translation/request/EndTtsRequest;-><init>()V

    invoke-virtual {v4, p2}, Lcom/oplus/aiunit/translation/request/EndTtsRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/oplus/aiunit/translation/request/EndTtsRequest;->setChannel(Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "method_stop_ws_tts"

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthesizeText(Lcom/oplus/aiunit/translation/request/SynthesisRequest;Lcom/oplus/aiunit/translation/callback/SynthesisCallback;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationClient synthesizeText()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "method_speech_get"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/oplus/aiunit/translation/common/BaseClient;->process$default(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;ILjava/lang/Object;)V

    return-void
.end method
