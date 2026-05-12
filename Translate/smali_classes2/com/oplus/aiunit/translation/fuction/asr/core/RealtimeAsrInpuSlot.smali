.class public final Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;
.super Lcom/oplus/aiunit/translation/common/BaseInputSlot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot$Companion;

.field public static final SIZE_BUFFER:I = 0xa

.field private static final TAG:Ljava/lang/String; = "RealtimeAsrInpuSlot"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->Companion:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/aiunit/core/base/AIContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/translation/common/BaseInputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-void
.end method

.method private final dealByteArray([B)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealByteArray, length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RealtimeAsrInpuSlot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "frameUnit is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameSlot;->getAIContext()Lcom/oplus/aiunit/core/base/AIContext;

    move-result-object v3

    mul-int/lit8 v4, v0, 0xa

    invoke-virtual {v3, v4}, Lcom/oplus/aiunit/core/base/AIContext;->applyFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p1, "frame Unit apply failed"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNoBufferSpace:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "byteBuffer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidParam:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data size not match with previous"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setAsrRequiredParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAsrRequiredParams: hashcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RealtimeAsrInpuSlot"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "realtime_asr_init_pkg_name"

    invoke-virtual {p0, v0, p2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p2, "realtime_asr_hashcode"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p1, "realtime_asr_audio_ws_channel"

    invoke-virtual {p0, p1, p3}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "key_sdk_version"

    const-string p2, "1.4.6"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_sdk_version_code"

    const-string p2, "146"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic setRealtimeAsrInitInput$default(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    move-object v3, p0

    move-object v6, p3

    invoke-virtual/range {v3 .. v11}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setRealtimeAsrInitInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final setFeatureEnableInput(Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom::translation_method"

    const-string v1, "method_set_feature_enable"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "realtime_asr_audio_ws_channel"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getEnableMt()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getEnableMt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "realtime_asr_is_enable_mt"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getEnableTts()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getEnableTts()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "realtime_asr_is_enable_tts"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getSpeed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "realtime_asr_tts_speed"

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getVoiceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "realtime_asr_tts_voice_name"

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getVoiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getExpandParams()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "realtime_asr_feature_enable_expand"

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getExpandParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getHashcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setAsrRequiredParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setInitOmniPluginInput()V
    .locals 2

    const-string v0, "custom::translation_method"

    const-string v1, "method_init_omni_plugin"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRealtimeAsrAbandonInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "hashcode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom::translation_method"

    const-string v1, "method_realtime_asr_abandon"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "realtime_asr_record_id"

    invoke-virtual {p0, v0, p4}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setAsrRequiredParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRealtimeAsrAudioInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    const-string v0, "hashcode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msgId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->dealByteArray([B)V

    const-string p4, "custom::translation_method"

    const-string v0, "method_realtime_asr_audio"

    invoke-virtual {p0, p4, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "realtime_asr_audio_msgid"

    invoke-virtual {p0, p4, p5}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setAsrRequiredParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRealtimeAsrEndInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "hashcode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom::translation_method"

    const-string v1, "method_realtime_asr_end"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "realtime_asr_record_id"

    invoke-virtual {p0, v0, p4}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setAsrRequiredParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRealtimeAsrInitInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "hashcode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom::translation_method"

    const-string v1, "method_realtime_asr_init"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "realtime_asr_init_src_language"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "realtime_asr_init_target_language"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const-string p1, "realtime_asr_is_store_audio"

    invoke-virtual {p6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "realtime_asr_expand_params"

    invoke-virtual {p0, p1, p7}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "realtime_asr_extend_header_params"

    invoke-virtual {p0, p1, p8}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setAsrRequiredParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRealtimeAsrReleaseInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "hashcode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom::translation_method"

    const-string v1, "method_realtime_asr_release"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setAsrRequiredParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRealtimeAsrStartInput(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getWsChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setWsChannel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setRecordId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getEnableLLM()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setEnableLLM(Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getSceneId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSceneId(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getModel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setModel(I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getAccent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setAccent(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getAsrAudioTrack()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setAsrChannel(I)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSampleBytes(I)V

    const/16 v1, 0x3e80

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSampleRate(I)V

    const/16 v1, 0x280

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setFrameSize(I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getenableLid()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setEnableLid(Z)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getSourceLanguages()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getSourceLanguages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSourceLanguages(Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getEnableMt()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setEnableMt(Z)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getSrcLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSrcLanguage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getTargetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setTargetLanguage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getEnableTts()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setEnableTts(Z)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getVoiceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getVoiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setVoiceName(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getSpeedGrade()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getSpeedGrade()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSpeedGrade(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/google/gson/d;

    invoke-direct {v1}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom::translation_method"

    const-string v2, "method_realtime_asr_start"

    invoke-virtual {p0, v1, v2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "realtime_asr_startasr_jsonstring"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getHashcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getWsChannel()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;->setAsrRequiredParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
