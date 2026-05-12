.class public final Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;
.super Lcom/oplus/aiunit/core/base/FrameInputSlot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot$Companion;

.field public static final KEY_CALL_ID:Ljava/lang/String; = "asr_call_id"

.field public static final KEY_DUID:Ljava/lang/String; = "dUId"

.field public static final KEY_FILE_DOWN:Ljava/lang/String; = "filePathDown"

.field public static final KEY_FILE_DOWN_DURATION:Ljava/lang/String; = "durationDown"

.field public static final KEY_FILE_DOWN_PEER_ID:Ljava/lang/String; = "peerIdDown"

.field public static final KEY_FILE_IS_SMOOTH:Ljava/lang/String; = "isSmooth"

.field public static final KEY_FILE_LANGUAGE_TYPE:Ljava/lang/String; = "languageType"

.field public static final KEY_FILE_RECORDID:Ljava/lang/String; = "recordId"

.field public static final KEY_FILE_UP:Ljava/lang/String; = "filePathUp"

.field public static final KEY_FILE_UP_DURATION:Ljava/lang/String; = "durationUp"

.field public static final KEY_FILE_UP_PEER_ID:Ljava/lang/String; = "peerIdUp"

.field public static final KEY_FROM_LANGUAGE:Ljava/lang/String; = "fromLanguage"

.field public static final KEY_HEART_TIME:Ljava/lang/String; = "heartTime"

.field public static final KEY_LANGUAGE_LIST:Ljava/lang/String; = "languageList"

.field public static final KEY_LAST_HTTP_TIMEOUT:Ljava/lang/String; = "asr_last_http_timeout"

.field public static final KEY_MARK_KEYWORDS:Ljava/lang/String; = "asr_mark_keywords"

.field public static final KEY_METHOD_TYPE:Ljava/lang/String; = "asr_method_type"

.field public static final KEY_OFFLINE:Ljava/lang/String; = "asr_offline"

.field public static final KEY_PEER_ID:Ljava/lang/String; = "asr_peer_id"

.field public static final KEY_PREFIX:Ljava/lang/String; = "asr_"

.field public static final KEY_PUSH_DATA_TIME:Ljava/lang/String; = "asr_push_data_time"

.field public static final KEY_QUERY_TEXT_TIME:Ljava/lang/String; = "asr_query_text_time"

.field public static final KEY_QUERY_TIME:Ljava/lang/String; = "queryTime"

.field public static final KEY_REQUESTID:Ljava/lang/String; = "requestId"

.field public static final KEY_SEQ_NUMBER:Ljava/lang/String; = "asr_seq_number"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "asr_timestamp"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final METHOD_ABANDON:Ljava/lang/String; = "asr_ai_abandon"

.field public static final METHOD_AI_END_CALL:Ljava/lang/String; = "asr_ai_end_call"

.field public static final METHOD_AI_RELEASE:Ljava/lang/String; = "asr_ai_release"

.field public static final METHOD_CACHE:Ljava/lang/String; = "asr_current_call_cache"

.field public static final METHOD_CONSUME_ONE_COUNT:Ljava/lang/String; = "method_consume_count"

.field public static final METHOD_FILE_INIT:Ljava/lang/String; = "asr_file_init"

.field public static final METHOD_FILE_RETRY:Ljava/lang/String; = "asr_file_retry"

.field public static final METHOD_FILE_STOP:Ljava/lang/String; = "asr_file_stop"

.field public static final METHOD_GET_ONLINE_CONFIG:Ljava/lang/String; = "method_get_online_config"

.field public static final METHOD_INIT:Ljava/lang/String; = "asr_init"

.field public static final METHOD_PROCESS_DATA:Ljava/lang/String; = "asr_process_data"

.field public static final METHOD_QUERY_REMAIN_COUNT:Ljava/lang/String; = "method_query_count"

.field public static final METHOD_RETRY:Ljava/lang/String; = "asr_ai_retry"

.field public static final METHOD_SET_LANGUAGE:Ljava/lang/String; = "asr_set_language"

.field public static final METHOD_UPLOAD_FILE:Ljava/lang/String; = "asr_upload_file"

.field public static final SIZE_BUFFER:I = 0xa

.field public static final TAG:Ljava/lang/String; = "ASRInputSlot"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;->Companion:Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/aiunit/core/base/AIContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-void
.end method

.method public static synthetic initASR$default(Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;ZLjava/lang/String;JJZJILjava/lang/Object;)V
    .locals 11

    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;->initASR(ZLjava/lang/String;JJZJ)V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 9

    const-string v0, "dealByteArray"

    const-string v1, "ASRInputSlot"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameSlot;->getAIContext()Lcom/oplus/aiunit/core/base/AIContext;

    move-result-object v3

    mul-int/lit8 v4, v0, 0xa

    invoke-virtual {v3, v4}, Lcom/oplus/aiunit/core/base/AIContext;->applyFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p1, "frame Unit apply failed"

    invoke-static {v1, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidParam:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    return-void

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oplus/aiunit/core/FrameUnit;->setFlag(I)V

    invoke-virtual {v3, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setWidth(I)V

    invoke-virtual {v3, v2}, Lcom/oplus/aiunit/core/FrameUnit;->setHeight(I)V

    invoke-virtual {v3, v4}, Lcom/oplus/aiunit/core/FrameUnit;->setChannel(I)V

    invoke-virtual {p0, v3}, Lcom/oplus/aiunit/core/base/FrameSlot;->addFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)I

    move-result v5

    if-gez v5, :cond_1

    const-string p1, "add frame unit failed."

    invoke-static {v1, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidParam:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/oplus/aiunit/core/FrameUnit;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/FrameUnit;->getHeight()I

    move-result v6

    if-ne v5, v0, :cond_4

    mul-int/2addr v5, v6

    add-int v7, v5, v0

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/FrameUnit;->getBufferSize()I

    move-result v8

    if-le v7, v8, :cond_2

    const-string p1, "data size will overflow, won\'t set anymore."

    invoke-static {v1, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNoBufferSpace:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    :cond_3
    add-int/2addr v6, v4

    invoke-virtual {v3, v6}, Lcom/oplus/aiunit/core/FrameUnit;->setHeight(I)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data len "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidParam:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data size not match with previous"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final abandon(Ljava/lang/String;)V
    .locals 3

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "asr_method_type"

    const-string v2, "asr_ai_abandon"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_call_id"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final aiEndCall(Ljava/lang/String;)V
    .locals 2

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "asr_ai_end_call"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "asr_call_id"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final aiRelease(Ljava/lang/String;)V
    .locals 2

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "asr_ai_release"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "asr_call_id"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final currentHasCache()V
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "asr_current_call_cache"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final doConsumeCount(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "duid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "method_consume_count"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "asr_dUId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "recordId"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "asr_recordId"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final fileInit(Ljava/lang/String;)V
    .locals 2

    const-string v0, "duid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "asr_file_init"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "asr_dUId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final fileRetry(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "asr_file_retry"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "recordId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "asr_recordId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getOnlineConfig(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "method_get_online_config"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asr_requestId"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "asr_type"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getRemainCount(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "duid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "method_query_count"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "asr_dUId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "recordId"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "asr_recordId"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final initASR(ZLjava/lang/String;JJZJ)V
    .locals 2

    const-string v0, "callId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "asr_init"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "asr_mark_keywords"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "asr_call_id"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "asr_push_data_time"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "asr_query_text_time"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "asr_offline"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "asr_last_http_timeout"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final retry(Ljava/lang/String;)V
    .locals 3

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "asr_method_type"

    const-string v2, "asr_ai_retry"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_call_id"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setFileData(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "asr_upload_file"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filePathUp"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asr_filePathUp"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "filePathDown"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asr_filePathDown"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "durationUp"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "asr_durationUp"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "durationDown"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "asr_durationDown"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "peerIdUp"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asr_peerIdUp"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "peerIdDown"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asr_peerIdDown"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isSmooth"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "asr_isSmooth"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "dUId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asr_dUId"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "queryTime"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "asr_queryTime"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "heartTime"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "asr_heartTime"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "languageType"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asr_languageType"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "recordId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "asr_recordId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "asr_set_language"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "asr_fromLanguage"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/google/gson/d;

    invoke-direct {p1}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "asr_languageList"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setPCMData([BLjava/lang/String;JJ)V
    .locals 1

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;->a([B)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string p1, "asr_method_type"

    const-string v0, "asr_process_data"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "asr_peer_id"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "asr_seq_number"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "asr_timestamp"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final stopFileData(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "asr_method_type"

    const-string v1, "asr_file_stop"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "recordId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "asr_recordId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
