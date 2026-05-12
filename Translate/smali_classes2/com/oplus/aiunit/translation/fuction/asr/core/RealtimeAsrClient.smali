.class public final Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;
.super Lcom/oplus/aiunit/translation/common/BaseClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;,
        Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$Companion;,
        Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;,
        Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;,
        Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$ReleaseAsrReqParam;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/aiunit/translation/common/BaseClient<",
        "Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;",
        "Lcom/oplus/aiunit/translation/common/BaseOutputSlot;",
        "Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrDetector;",
        ">;"
    }
.end annotation


# static fields
.field public static final ABANDON_ASK:Ljava/lang/String; = "ABANDON_ASK"

.field public static final ASR_ASK:Ljava/lang/String; = "ASR_ASK"

.field public static final Companion:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$Companion;

.field public static final END_ASK:Ljava/lang/String; = "END_ASK"

.field public static final ERROR_PLUGIN_INNER_FAILURE:I = 0x1870e

.field public static final INIT_ASR_ASK:Ljava/lang/String; = "INIT_ASR_ASK"

.field public static final METHOD_ABANDON_REALTIME_ASR:Ljava/lang/String; = "method_realtime_asr_abandon"

.field public static final METHOD_END_REALTIME_ASR:Ljava/lang/String; = "method_realtime_asr_end"

.field public static final METHOD_INIT_OMNI_PLUGIN:Ljava/lang/String; = "method_init_omni_plugin"

.field public static final METHOD_INIT_REALTIME_ASR:Ljava/lang/String; = "method_realtime_asr_init"

.field public static final METHOD_REALTIME_ASR_AUDIO:Ljava/lang/String; = "method_realtime_asr_audio"

.field public static final METHOD_REALTIME_ASR_CALLBACK:Ljava/lang/String; = "method_realtime_asr_callback"

.field public static final METHOD_RELEASE_REALTIME_ASR:Ljava/lang/String; = "method_realtime_asr_release"

.field public static final METHOD_SET_FEATURE_ENABLE:Ljava/lang/String; = "method_set_feature_enable"

.field public static final METHOD_START_REALTIME_ASR:Ljava/lang/String; = "method_realtime_asr_start"

.field public static final PARAM_CLIENT_LABEL:Ljava/lang/String; = "RealtimeAsrClient"

.field public static final PARAM_KEY_REALTIME_ASR_ACK_TYPE:Ljava/lang/String; = "realtime_asr_ack_type"

.field public static final PARAM_KEY_REALTIME_ASR_AUDIO_CONTENT:Ljava/lang/String; = "realtime_asr_audio_content"

.field public static final PARAM_KEY_REALTIME_ASR_AUDIO_FILE:Ljava/lang/String; = "realtime_asr_tts_audioFile"

.field public static final PARAM_KEY_REALTIME_ASR_AUDIO_MSGID:Ljava/lang/String; = "realtime_asr_audio_msgid"

.field public static final PARAM_KEY_REALTIME_ASR_BIZTYPE:Ljava/lang/String; = "realtime_asr_biz_type"

.field public static final PARAM_KEY_REALTIME_ASR_END_OFFSET:Ljava/lang/String; = "realtime_asr_end_offset"

.field public static final PARAM_KEY_REALTIME_ASR_ERROR_CODE:Ljava/lang/String; = "realtime_asr_error_code"

.field public static final PARAM_KEY_REALTIME_ASR_ERROR_MSG:Ljava/lang/String; = "realtime_asr_error_msg"

.field public static final PARAM_KEY_REALTIME_ASR_EXPAND_PARAMS:Ljava/lang/String; = "realtime_asr_expand_params"

.field public static final PARAM_KEY_REALTIME_ASR_EXTEND_HEADER_PARAMS:Ljava/lang/String; = "realtime_asr_extend_header_params"

.field public static final PARAM_KEY_REALTIME_ASR_FEATURE_EXPAND:Ljava/lang/String; = "realtime_asr_feature_enable_expand"

.field public static final PARAM_KEY_REALTIME_ASR_HASHCODE:Ljava/lang/String; = "realtime_asr_hashcode"

.field public static final PARAM_KEY_REALTIME_ASR_INIT_DEST_LANG:Ljava/lang/String; = "realtime_asr_init_target_language"

.field public static final PARAM_KEY_REALTIME_ASR_INIT_PKGNAME:Ljava/lang/String; = "realtime_asr_init_pkg_name"

.field public static final PARAM_KEY_REALTIME_ASR_INIT_SRC_LANG:Ljava/lang/String; = "realtime_asr_init_src_language"

.field public static final PARAM_KEY_REALTIME_ASR_IS_ENABLE_MT:Ljava/lang/String; = "realtime_asr_is_enable_mt"

.field public static final PARAM_KEY_REALTIME_ASR_IS_ENABLE_TTS:Ljava/lang/String; = "realtime_asr_is_enable_tts"

.field public static final PARAM_KEY_REALTIME_ASR_IS_STORE_AUDIO:Ljava/lang/String; = "realtime_asr_is_store_audio"

.field public static final PARAM_KEY_REALTIME_ASR_MT_SRC_TEXT:Ljava/lang/String; = "realtime_asr_mt_src_text"

.field public static final PARAM_KEY_REALTIME_ASR_MT_TARGET_TEXT:Ljava/lang/String; = "realtime_asr_mt_target_text"

.field public static final PARAM_KEY_REALTIME_ASR_MT_TYPE:Ljava/lang/String; = "realtime_asr_mt_type"

.field public static final PARAM_KEY_REALTIME_ASR_RECORD_ID:Ljava/lang/String; = "realtime_asr_record_id"

.field public static final PARAM_KEY_REALTIME_ASR_REQUEST_ID:Ljava/lang/String; = "realtime_asr_request_id"

.field public static final PARAM_KEY_REALTIME_ASR_START_OFFSET:Ljava/lang/String; = "realtime_asr_start_offset"

.field public static final PARAM_KEY_REALTIME_ASR_START_REQUEST:Ljava/lang/String; = "realtime_asr_startasr_jsonstring"

.field public static final PARAM_KEY_REALTIME_ASR_TEXT:Ljava/lang/String; = "realtime_asr_text"

.field public static final PARAM_KEY_REALTIME_ASR_TTS_BIT:Ljava/lang/String; = "realtime_asr_tts_bit"

.field public static final PARAM_KEY_REALTIME_ASR_TTS_FORMAT:Ljava/lang/String; = "realtime_asr_tts_format"

.field public static final PARAM_KEY_REALTIME_ASR_TTS_SAMPLE:Ljava/lang/String; = "realtime_asr_tts_sample"

.field public static final PARAM_KEY_REALTIME_ASR_TTS_SPEED:Ljava/lang/String; = "realtime_asr_tts_speed"

.field public static final PARAM_KEY_REALTIME_ASR_TTS_TEXT:Ljava/lang/String; = "realtime_asr_tts_text"

.field public static final PARAM_KEY_REALTIME_ASR_VOICE_NAME:Ljava/lang/String; = "realtime_asr_tts_voice_name"

.field public static final PARAM_KEY_REALTIME_ASR_WS_CHANNEL:Ljava/lang/String; = "realtime_asr_audio_ws_channel"

.field public static final PARAM_KEY_RSP_EXTEND_PARAMS:Ljava/lang/String; = "realtime_asr_response_extend"

.field public static final PARAM_KEY_RSP_EXTEND_RISKCODE:Ljava/lang/String; = "realtime_asr_rsp_risk_code"

.field public static final PARAM_KEY_RSP_EXTEND_RISK_WORDS:Ljava/lang/String; = "realtime_asr_rsp_risk_words"

.field public static final PARAM_VALUE_REALTIME_ASR_CALLBACK_TYPE:Ljava/lang/String; = "realtime_asr_callback_type"

.field public static final PARAM_VALUE_REALTIME_ASR_CB_ONASR:Ljava/lang/String; = "realtime_asr_callback_onasr"

.field public static final PARAM_VALUE_REALTIME_ASR_CB_ONMT:Ljava/lang/String; = "realtime_asr_callback_onmt"

.field public static final PARAM_VALUE_REALTIME_ASR_CB_ONRESULT:Ljava/lang/String; = "realtime_asr_callback_onresult"

.field public static final PARAM_VALUE_REALTIME_ASR_CB_ONTTS:Ljava/lang/String; = "realtime_asr_callback_ontts"

.field public static final PARAM_VALUE_REALTIME_ASR_START_REQUEST:Ljava/lang/String; = "realtime_asr_start_request_info"

.field public static final PARAM_VALUE_REALTIME_ASR_TASK_COMPLETE:Ljava/lang/String; = "realtime_asr_task_complete"

.field public static final RELEASE_ASR_ASK:Ljava/lang/String; = "RELEASE_ASR_ASK"

.field public static final START_ASK:Ljava/lang/String; = "START_ASK"

.field public static final TAG:Ljava/lang/String; = "RealtimeAsrClient"


# instance fields
.field private mCommonCallback:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/translation/callback/AsrRspCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialCallback:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->Companion:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrDetector;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RealtimeAsrClient"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/aiunit/translation/common/BaseClient;-><init>(Landroid/content/Context;Lcom/oplus/aiunit/translation/common/BaseDetector;Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->mCommonCallback:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic abandonAsrAudio$default(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->abandonAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getRealtimeAsrCallback(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic endAsrAudio$default(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->endAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;
    .locals 1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->mCommonCallback:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    return-object p0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->mSpecialCallback:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    return-object p0
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

    goto :goto_1

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

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/oplus/aiunit/translation/callback/Callback;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/oplus/aiunit/translation/callback/Callback;

    invoke-interface {p2, p1}, Lcom/oplus/aiunit/translation/callback/Callback;->onError(Ljava/lang/String;)V
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

    :cond_1
    :goto_2
    return-void
.end method

.method public static synthetic initRealtimeAsr$default(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->initRealtimeAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V

    return-void
.end method

.method private final registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V
    .locals 1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->mCommonCallback:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_0
    iput-object p4, p0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->mSpecialCallback:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    :goto_1
    return-void
.end method

.method public static synthetic sendAsrAudio$default(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->sendAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method private final unregisterCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->mCommonCallback:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final abandonAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashcode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->setPkgName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->setHashcode(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->setChannel(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->setRecordId(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p4

    new-instance v1, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$abandonAsrAudio$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$abandonAsrAudio$1;-><init>(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "method_realtime_asr_abandon"

    invoke-virtual {p0, v0, p4, p1, v1}, Lcom/oplus/aiunit/translation/common/BaseClient;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void
.end method

.method public final endAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashcode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->setPkgName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->setHashcode(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->setChannel(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->setRecordId(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p4

    new-instance v1, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$endAsrAudio$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$endAsrAudio$1;-><init>(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "method_realtime_asr_end"

    invoke-virtual {p0, v0, p4, p1, v1}, Lcom/oplus/aiunit/translation/common/BaseClient;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void
.end method

.method public handleInput(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/core/callback/IAIMessenger;)Ljava/lang/String;
    .locals 15
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

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "methods"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "messenger"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/aiunit/core/base/FrameDetector;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v4

    const-string v5, "createInputSlot(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;

    const-string v5, "param_client_label"

    const-string v6, "RealtimeAsrClient"

    invoke-virtual {v4, v5, v6}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "key_sdk_version"

    const-string v6, "1.4.6"

    invoke-virtual {v4, v5, v6}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "key_sdk_version_code"

    const-string v6, "146"

    invoke-virtual {v4, v5, v6}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "null cannot be cast to non-null type com.oplus.aiunit.translation.fuction.asr.core.RealtimeAsrClient.EndAsrReqParam"

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v5, "method_set_feature_enable"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.SetFeatureEnableRequest"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;

    invoke-virtual {v4, v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setFeatureEnableInput(Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;)V

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "method_init_omni_plugin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setInitOmniPluginInput()V

    goto/16 :goto_2

    :sswitch_2
    const-string v5, "method_realtime_asr_abandon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->getHashcode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->getRecordId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v5, v6, v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setRealtimeAsrAbandonInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_3
    const-string v5, "method_realtime_asr_end"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->getChannel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->getRecordId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->getHashcode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$EndAsrReqParam;->getRecordId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v5, v6, v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setRealtimeAsrEndInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "METHOD_END_REALTIME_ASR: param error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "method_realtime_asr_start"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    const-string v1, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.StartAsrRequest"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;

    invoke-virtual {v4, v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setRealtimeAsrStartInput(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)V

    goto/16 :goto_2

    :sswitch_5
    const-string v5, "method_realtime_asr_audio"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    const-string v1, "null cannot be cast to non-null type com.oplus.aiunit.translation.fuction.asr.core.RealtimeAsrClient.AudioAsrReqParam"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->getChannel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->getAudio()[B

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->getMsgId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->getHashcode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->getChannel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->getAudio()[B

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->getMsgId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v6, v4

    invoke-virtual/range {v6 .. v11}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setRealtimeAsrAudioInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "METHOD_REALTIME_ASR_AUDIO: param error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_6
    const-string v5, "method_realtime_asr_release"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    const-string v1, "null cannot be cast to non-null type com.oplus.aiunit.translation.fuction.asr.core.RealtimeAsrClient.ReleaseAsrReqParam"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$ReleaseAsrReqParam;

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$ReleaseAsrReqParam;->getHashcode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$ReleaseAsrReqParam;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$ReleaseAsrReqParam;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v5, v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setRealtimeAsrReleaseInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_7
    const-string v5, "method_realtime_asr_init"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const-string v1, "null cannot be cast to non-null type com.oplus.aiunit.translation.fuction.asr.core.RealtimeAsrClient.InitAsrReqParam"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->getTargetLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->getHashcode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->getChannel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->isStoreAudio()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->getExpandParams()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->getExtendHeaderParams()Ljava/lang/String;

    move-result-object v14

    move-object v6, v4

    invoke-virtual/range {v6 .. v14}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setRealtimeAsrInitInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v4, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setMessenger(Lcom/oplus/aiunit/core/callback/IAIMessenger;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v0

    const-string v1, "createOutputSlot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/translation/common/BaseOutputSlot;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->getJsonResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oSlot jsonString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct {p0, v1, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->handleOSlotResult(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->getJsonResult()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7497bc1b -> :sswitch_7
        -0x38a9a2ee -> :sswitch_6
        -0x1ecd685f -> :sswitch_5
        -0x1dd03fd3 -> :sswitch_4
        -0x1447049a -> :sswitch_3
        0x3e570380 -> :sswitch_2
        0x5b1d2d08 -> :sswitch_1
        0x62b88887 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleResult(Lcom/oplus/aiunit/core/FramePackage;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 11
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

    const-string p2, "originMethods"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RealtimeAsrClient handling result for originMethods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "custom::translation_method"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResult, methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v1, "realtime_asr_init_pkg_name"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    if-eqz p1, :cond_2

    const-string v2, "realtime_asr_hashcode"

    invoke-virtual {p1, v2}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    if-eqz p1, :cond_3

    const-string v3, "realtime_asr_audio_ws_channel"

    invoke-virtual {p1, v3}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, p3

    :goto_3
    const-string v4, "method_realtime_asr_callback"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "realtime_asr_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "RealtimeAsrClient: PARAM_VALUE_REALTIME_ASR_CB_ONTTS"

    const-string v6, "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT"

    const-string v7, "getParamStr(...)"

    const-string v8, "realtime_asr_response_extend"

    const-string v9, "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT: pasre json error: "

    const-string v10, "package::json_result"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string p2, "realtime_asr_callback_ontts"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-virtual {p1, v10}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    :try_start_0
    new-instance p2, Lcom/google/gson/d;

    invoke-direct {p2}, Lcom/google/gson/d;-><init>()V

    const-class v0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/d;->m(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    sget-object p2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p1

    if-eqz p1, :cond_13

    if-eqz p3, :cond_13

    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p3, Lcom/oplus/aiunit/translation/data/AsrTtsAck;

    invoke-interface {p1, p3}, Lcom/oplus/aiunit/translation/callback/AsrRspCallback;->onTts(Lcom/oplus/aiunit/translation/data/AsrTtsAck;)V

    :cond_6
    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v5}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_1
    const-string v4, "realtime_asr_callback_onasr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-virtual {p1, v10}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4, v6}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    :try_start_1
    new-instance p2, Lcom/google/gson/d;

    invoke-direct {p2}, Lcom/google/gson/d;-><init>()V

    const-class v4, Lcom/oplus/aiunit/translation/data/AsrAudioAck;

    invoke-virtual {p2, v0, v4}, Lcom/google/gson/d;->m(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p1, v8}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_8

    new-instance p2, Lcom/oplus/aiunit/translation/data/AsrRspExtendCodec;

    invoke-direct {p2}, Lcom/oplus/aiunit/translation/data/AsrRspExtendCodec;-><init>()V

    invoke-virtual {p1, v8}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/oplus/aiunit/translation/data/AsrRspExtendCodec;->parseAsrRspExtend(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_8

    move-object p2, p3

    check-cast p2, Lcom/oplus/aiunit/translation/data/AsrAudioAck;

    invoke-virtual {p2, p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->setExtend(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    sget-object p2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p1

    if-eqz p1, :cond_13

    if-eqz p3, :cond_13

    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p3, Lcom/oplus/aiunit/translation/data/AsrAudioAck;

    invoke-interface {p1, p3}, Lcom/oplus/aiunit/translation/callback/AsrRspCallback;->onAsr(Lcom/oplus/aiunit/translation/data/AsrAudioAck;)V

    :cond_9
    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RealtimeAsrClient: PARAM_VALUE_REALTIME_ASR_CB_ONASR"

    invoke-virtual {p1, p0, p2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_2
    const-string p2, "realtime_asr_callback_onresult"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {p1, v10}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    :try_start_2
    new-instance p2, Lcom/google/gson/d;

    invoke-direct {p2}, Lcom/google/gson/d;-><init>()V

    const-class v0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/d;->m(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    sget-object p2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_6
    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p2

    if-eqz p2, :cond_13

    if-eqz p3, :cond_13

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT: RealtimeAsrCallback = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p2

    if-eqz p2, :cond_b

    check-cast p3, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;

    invoke-interface {p2, p3}, Lcom/oplus/aiunit/translation/callback/AsrRspCallback;->onResult(Lcom/oplus/aiunit/translation/data/AsrBaseResponse;)V

    :cond_b
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v6}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_3
    const-string p3, "realtime_asr_task_complete"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    goto/16 :goto_9

    :cond_c
    const-string p3, "realtime_asr_error_code"

    invoke-virtual {p1, p3}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_7

    :cond_d
    const/4 p1, 0x0

    :goto_7
    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p3

    if-eqz p3, :cond_13

    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p3

    if-eqz p3, :cond_e

    invoke-interface {p3, p1}, Lcom/oplus/aiunit/translation/callback/AsrRspCallback;->taskComplete(I)V

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RealtimeAsrClient: PARAM_VALUE_REALTIME_ASR_TASK_COMPLETE"

    invoke-virtual {p2, p0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_4
    const-string v4, "realtime_asr_callback_onmt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_9

    :cond_f
    invoke-virtual {p1, v10}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PARAM_VALUE_REALTIME_ASR_CB_ONMT"

    invoke-virtual {p2, v4, v6}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_10

    :try_start_3
    new-instance p2, Lcom/google/gson/d;

    invoke-direct {p2}, Lcom/google/gson/d;-><init>()V

    const-class v4, Lcom/oplus/aiunit/translation/data/AsrMtAck;

    invoke-virtual {p2, v0, v4}, Lcom/google/gson/d;->m(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_10

    invoke-virtual {p1, v8}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_10

    new-instance p2, Lcom/oplus/aiunit/translation/data/AsrRspExtendCodec;

    invoke-direct {p2}, Lcom/oplus/aiunit/translation/data/AsrRspExtendCodec;-><init>()V

    invoke-virtual {p1, v8}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/oplus/aiunit/translation/data/AsrRspExtendCodec;->parseAsrRspExtend(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_10

    move-object p2, p3

    check-cast p2, Lcom/oplus/aiunit/translation/data/AsrMtAck;

    invoke-virtual {p2, p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->setExtend(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception p1

    sget-object p2, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_8
    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p1

    if-eqz p1, :cond_12

    if-eqz p3, :cond_12

    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p1

    if-eqz p1, :cond_11

    check-cast p3, Lcom/oplus/aiunit/translation/data/AsrMtAck;

    invoke-interface {p1, p3}, Lcom/oplus/aiunit/translation/callback/AsrRspCallback;->onMt(Lcom/oplus/aiunit/translation/data/AsrMtAck;)V

    :cond_11
    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v5}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p1

    if-eqz p1, :cond_13

    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RealtimeAsrClient: PARAM_VALUE_REALTIME_ASR_CB_ONMT"

    invoke-virtual {p1, p0, p2}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5721c5d3 -> :sswitch_4
        0x2fa0b160 -> :sswitch_3
        0x459641a3 -> :sswitch_2
        0x72e8deba -> :sswitch_1
        0x72e9262d -> :sswitch_0
    .end sparse-switch
.end method

.method public final initOmniPlugin()V
    .locals 3

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$initOmniPlugin$1;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$initOmniPlugin$1;-><init>(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;)V

    const/4 v1, 0x0

    const-string v2, "method_init_omni_plugin"

    invoke-virtual {p0, v1, v1, v2, v0}, Lcom/oplus/aiunit/translation/common/BaseClient;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void
.end method

.method public final initRealtimeAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V
    .locals 4

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashcode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->init(Landroid/content/Context;Z)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initRealtimeAsr"

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
    invoke-direct {p0, p4, p3, p5, p9}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;-><init>()V

    invoke-virtual {v0, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->setHashcode(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->setLanguage(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->setTargetLanguage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->setPkgName(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->setChannel(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->setStoreAudio(Ljava/lang/Boolean;)V

    invoke-virtual {v0, p7}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->setExpandParams(Ljava/lang/String;)V

    invoke-virtual {v0, p8}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$InitAsrReqParam;->setExtendHeaderParams(Ljava/lang/String;)V

    new-instance p1, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$initRealtimeAsr$1;

    invoke-direct {p1, p9}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$initRealtimeAsr$1;-><init>(Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V

    const-string p2, "method_realtime_asr_init"

    invoke-virtual {p0, v0, p9, p2, p1}, Lcom/oplus/aiunit/translation/common/BaseClient;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void
.end method

.method public final releaseAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashcode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$ReleaseAsrReqParam;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$ReleaseAsrReqParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$ReleaseAsrReqParam;->setPkgName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$ReleaseAsrReqParam;->setHashcode(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$ReleaseAsrReqParam;->setChannel(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object v1

    new-instance v2, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$releaseAsr$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$releaseAsr$1;-><init>(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "method_realtime_asr_release"

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/oplus/aiunit/translation/common/BaseClient;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->unregisterCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashcode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->setPkgName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->setHashcode(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->setChannel(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->setMsgId(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$AudioAsrReqParam;->setAudio([B)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object p4

    new-instance p5, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$sendAsrAudio$1;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$sendAsrAudio$1;-><init>(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "method_realtime_asr_audio"

    invoke-virtual {p0, v0, p4, p1, p5}, Lcom/oplus/aiunit/translation/common/BaseClient;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void
.end method

.method public final setRecognizeFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashcode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->setPkgName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->setHashcode(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->setChannel(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->setEnableMt(Ljava/lang/Boolean;)V

    invoke-virtual {v0, p5}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->setEnableTts(Ljava/lang/Boolean;)V

    invoke-virtual {v0, p6}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->setVoiceName(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->setSpeed(Ljava/lang/String;)V

    invoke-virtual {v0, p8}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->setExpandParams(Ljava/lang/String;)V

    new-instance p1, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$setRecognizeFeature$1;

    invoke-direct {p1, p0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$setRecognizeFeature$1;-><init>(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;)V

    const/4 p2, 0x0

    const-string p3, "method_set_feature_enable"

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/oplus/aiunit/translation/common/BaseClient;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void
.end method

.method public final startRealtimeAsr(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)V
    .locals 5

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getHashcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getWsChannel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->getRealtimeAsrCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-result-object v3

    new-instance v4, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$startRealtimeAsr$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$startRealtimeAsr$1;-><init>(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "method_realtime_asr_start"

    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/oplus/aiunit/translation/common/BaseClient;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void
.end method
