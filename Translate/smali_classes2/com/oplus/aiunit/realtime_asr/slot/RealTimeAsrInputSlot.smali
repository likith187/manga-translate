.class public final Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;
.super Lcom/oplus/aiunit/core/base/FrameInputSlot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot$Companion;

.field public static final KEY_AUDIO_DATA:Ljava/lang/String; = "audioStream"

.field public static final KEY_AUDIO_DURATION:Ljava/lang/String; = "audioDuration"

.field public static final KEY_BIZ_TYPE:Ljava/lang/String; = "bizType"

.field public static final KEY_CALL_ID:Ljava/lang/String; = "callId"

.field public static final KEY_IS_REMOVE_MODAL:Ljava/lang/String; = "isRemoveModal"

.field public static final KEY_IS_REMOVE_SENSITIVE:Ljava/lang/String; = "isRemoveSensitive"

.field public static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEY_MESSAGE_ID:Ljava/lang/String; = "msgId"

.field public static final KEY_METHOD_CALL:Ljava/lang/String; = "callMethod"

.field public static final KEY_RECONNECT_TYPE:Ljava/lang/String; = "reconnectType"

.field public static final KEY_SPEAKER:Ljava/lang/String; = "speaker"

.field public static final KEY_TARGET_LANGUAGE:Ljava/lang/String; = "targetLanguage"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final METHOD_ASR_ABANDON:Ljava/lang/String; = "asrAbandon"

.field public static final METHOD_ASR_GET_APP_STATE:Ljava/lang/String; = "getAppState"

.field public static final METHOD_ASR_RECONNECT:Ljava/lang/String; = "asrReconnect"

.field public static final METHOD_ASR_RELEASE:Ljava/lang/String; = "asrRelease"

.field public static final METHOD_ASR_RETRY_ON_FAILURE:Ljava/lang/String; = "asrRetryOnFailure"

.field public static final METHOD_END_ASR:Ljava/lang/String; = "endAsr"

.field public static final METHOD_GET_ONLINE_CONFIG:Ljava/lang/String; = "get_online_config"

.field public static final METHOD_INIT_ASR:Ljava/lang/String; = "initAsr"

.field public static final METHOD_PROCESS_DOWN_ASR:Ljava/lang/String; = "processDownAsr"

.field public static final METHOD_PROCESS_UP_ASR:Ljava/lang/String; = "processUpAsr"

.field public static final METHOD_START_ASR:Ljava/lang/String; = "startAsr"

.field public static final SDK_CHANGE:Ljava/lang/String; = "sdkChange"

.field public static final SIZE_BUFFER:I = 0xa

.field public static final TAG:Ljava/lang/String; = "RealTimeAsrInputSlot"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;->Companion:Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/aiunit/core/base/AIContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-void
.end method

.method public static synthetic callInitAsrMethod$default(Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;ZZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;->callInitAsrMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;ZZ)V

    return-void
.end method

.method private final dealByteArray([B)V
    .locals 9

    const-string v0, "dealByteArray"

    const-string v1, "RealTimeAsrInputSlot"

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


# virtual methods
.method public final callAbandonMethod(Ljava/lang/String;)V
    .locals 3

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v1, "callMethod"

    const-string v2, "asrAbandon"

    invoke-virtual {p0, v1, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final callAiReleaseMethod(Ljava/lang/String;)V
    .locals 3

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v1, "callMethod"

    const-string v2, "asrRelease"

    invoke-virtual {p0, v1, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final callEndAsrMethod(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V
    .locals 4

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "speaker"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v2, "callMethod"

    const-string v3, "endAsr"

    invoke-virtual {p0, v2, v3}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "bizType"

    const-string v0, "AUDIO"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final callGetAppStateMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "callMethod"

    const-string v1, "getAppState"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final callInitAsrMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;ZZ)V
    .locals 5

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "language"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "targetLanguage"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v3, "callMethod"

    const-string v4, "initAsr"

    invoke-virtual {p0, v3, v4}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "sdkChange"

    const-string p2, "1"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, p3}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    const-string p1, "speaker"

    invoke-virtual {p0, p1, p4}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isRemoveModal"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isRemoveSensitive"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final callProcessDownAsr(Ljava/lang/String;JLjava/lang/String;[BILjava/lang/String;)V
    .locals 3

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeStamp"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "audioFrameData"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "speaker"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;->dealByteArray([B)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string p5, "callMethod"

    const-string v2, "processDownAsr"

    invoke-virtual {p0, p5, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "msgId"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "timestamp"

    invoke-virtual {p0, p1, p4}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "audioDuration"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p7}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final callProcessUpAsr(Ljava/lang/String;JLjava/lang/String;[BI)V
    .locals 2

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeStamp"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "audioFrameData"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;->dealByteArray([B)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string p5, "callMethod"

    const-string v1, "processUpAsr"

    invoke-virtual {p0, p5, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "msgId"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "timestamp"

    invoke-virtual {p0, p1, p4}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "audioDuration"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final callReconnectMethod(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v1, "callMethod"

    const-string v2, "asrReconnect"

    invoke-virtual {p0, v1, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "reconnectType"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final callRetryOnFailureMethod(Ljava/lang/Long;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v0, "callMethod"

    const-string v1, "asrRetryOnFailure"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "msgId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final callStartAsrMethod(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V
    .locals 4

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "speaker"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    const-string v2, "callMethod"

    const-string v3, "startAsr"

    invoke-virtual {p0, v2, v3}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final getOnlineConfig(Lcom/oplus/aiunit/realtime_asr/request/TranslateConfigRequest;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "callMethod"

    const-string v2, "get_online_config"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    return-void
.end method
