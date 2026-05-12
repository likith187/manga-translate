.class public final Lcom/oplus/aiunit/speech/asr/client/ASRClient;
.super Lcom/oplus/aiunit/core/AIConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;,
        Lcom/oplus/aiunit/speech/asr/client/ASRClient$Companion;,
        Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/aiunit/core/AIConnector<",
        "Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;",
        "Lcom/oplus/aiunit/speech/asr/slot/ASROutputSlot;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/speech/asr/client/ASRClient$Companion;

.field public static final DEFAULT_DETECTOR_NAME:Ljava/lang/String; = "audio_asr"

.field public static final ERROR_CODE_DROP_DATA:I = 0x6

.field public static final ERROR_CODE_FILE_DEAL_STATUS:I = 0x8

.field public static final ERROR_CODE_FILE_HEART:I = 0x7

.field public static final ERROR_CODE_FILE_REMAIN_COUNT:I = 0x9

.field public static final ERROR_CODE_HISTORY:I = 0x5

.field public static final ERROR_CODE_INIT_FAILED:I = 0x2

.field public static final ERROR_CODE_INIT_SUCCESSFUL:I = 0x1

.field public static final ERROR_CODE_NONE:I = 0x0

.field public static final ERROR_CODE_TASK_COMPLETE:I = 0x3

.field public static final KEY_CALLBACK_ONERROR:Ljava/lang/String; = "asr_callback_onerror"

.field public static final KEY_CALLBACK_ONSUCCESS:Ljava/lang/String; = "asr_callback_onsuccess"

.field public static final KEY_FILE_MESSAGE:Ljava/lang/String; = "asr_file_message"

.field public static final KEY_FILE_STATUS:Ljava/lang/String; = "asr_file_status"

.field public static final KEY_METHOD_CALLBACK_TYPE:Ljava/lang/String; = "asr_method_callback_type"

.field public static final KEY_RESULT_CODE:Ljava/lang/String; = "asr_result_code"

.field public static final KEY_RESULT_DATA:Ljava/lang/String; = "asr_result_data"

.field public static final KEY_RESULT_MSG:Ljava/lang/String; = "asr_result_msg"

.field public static final KEY_RESULT_TYPE:Ljava/lang/String; = "asr_result_type"

.field public static final KEY_RETRY_RESULT:Ljava/lang/String; = "asr_retry_result"

.field public static final KEY_TASK_COMPLETE_RESULT:Ljava/lang/String; = "asr_task_complete_result"

.field public static final RESULT_REMAIN_COUNT:Ljava/lang/String; = "asr_remain_count"

.field public static final RESULT_TYPE_FILE:Ljava/lang/String; = "asr_result_file"


# instance fields
.field public a:Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;

.field public b:Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;

.field public final c:Ln8/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->Companion:Lcom/oplus/aiunit/speech/asr/client/ASRClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    const-string p2, "ASRClient"

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/aiunit/core/AIConnector;-><init>(Landroid/content/Context;Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;)V

    new-instance p2, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2;

    invoke-direct {p2, p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)V

    invoke-static {p2}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->c:Ln8/j;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->a()Lcom/oplus/aiunit/core/callback/IAIMessenger;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->setMessenger(Lcom/oplus/aiunit/core/callback/IAIMessenger;)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 2
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const-string p4, "audio_asr"

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDetector(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleTranslateConfigResult(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->a(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;)V

    return-void
.end method

.method public static final access$runFailure(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p1

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "message"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lcom/oplus/aiunit/core/FramePackage;

    invoke-direct {p1}, Lcom/oplus/aiunit/core/FramePackage;-><init>()V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "asr_status"

    invoke-virtual {p1, v1, p2}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "asr_result"

    invoke-virtual {p1, v0, p2}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->c:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/callback/IAIMessenger;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/callback/IAIMessenger;->send(Lcom/oplus/aiunit/core/FramePackage;)I

    return-void
.end method

.method public static synthetic initAsr$default(Lcom/oplus/aiunit/speech/asr/client/ASRClient;ZLjava/lang/String;JJZJILjava/lang/Object;)Z
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

    invoke-virtual/range {v1 .. v10}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->initAsr(ZLjava/lang/String;JJZJ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/oplus/aiunit/core/callback/IAIMessenger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->c:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/callback/IAIMessenger;

    return-object p0
.end method

.method public final a(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;)V
    .locals 4

    .line 2
    if-eqz p1, :cond_1

    const-string v0, "asr_method_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTranslateConfigResult callbackMethod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "asr_callback_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "asr_result_data"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTranslateConfigResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "asr_result_msg"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asr_result_code"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTranslateConfigResult onError errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",errorString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final abandon(Ljava/lang/String;)V
    .locals 1

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$abandon$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$abandon$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "abandon super.stop() to detach()"

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->stop()V

    return-void
.end method

.method public final aiRelease(Ljava/lang/String;)V
    .locals 1

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$aiRelease$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$aiRelease$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "aiRelease super.stop() to detach()"

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->stop()V

    return-void
.end method

.method public final currentHasCache()Z
    .locals 2

    new-instance v0, Lkotlin/jvm/internal/z;

    invoke-direct {v0}, Lkotlin/jvm/internal/z;-><init>()V

    new-instance v1, Lcom/oplus/aiunit/speech/asr/client/ASRClient$currentHasCache$1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$currentHasCache$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Lkotlin/jvm/internal/z;)V

    invoke-virtual {p0, v1}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    iget-boolean p0, v0, Lkotlin/jvm/internal/z;->element:Z

    return p0
.end method

.method public final doConsumeCount(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "duid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->doConsumeCount(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final doConsumeCount(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    const-string v0, "duid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$doConsumeCount$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$doConsumeCount$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final fileInit(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "duid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/z;

    invoke-direct {v0}, Lkotlin/jvm/internal/z;-><init>()V

    new-instance v1, Lcom/oplus/aiunit/speech/asr/client/ASRClient$fileInit$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$fileInit$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Ljava/lang/String;Lkotlin/jvm/internal/z;)V

    invoke-virtual {p0, v1}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    iget-boolean p0, v0, Lkotlin/jvm/internal/z;->element:Z

    return p0
.end method

.method public final fileRetry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->fileRetry(Landroid/os/Bundle;)V

    return-void
.end method

.method public final fileRetry(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$fileRetry$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$fileRetry$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final getAsrExternalCallback()Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;

    return-object p0
.end method

.method public final getFileASRExternalCallback()Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->b:Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;

    return-object p0
.end method

.method public final getRemainCount(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "duid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->getRemainCount(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final getRemainCount(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    const-string v0, "duid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$getRemainCount$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$getRemainCount$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final getTranslationConfig(Landroid/os/Bundle;Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;)V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$getTranslationConfig$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$getTranslationConfig$1;-><init>(Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;Lcom/oplus/aiunit/speech/asr/client/ASRClient;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final initAsr(ZLjava/lang/String;JJZJ)Z
    .locals 14

    const-string v0, "callId"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->removeUnitCache()V

    new-instance v0, Lkotlin/jvm/internal/z;

    invoke-direct {v0}, Lkotlin/jvm/internal/z;-><init>()V

    new-instance v13, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;ZLjava/lang/String;JJZJLkotlin/jvm/internal/z;)V

    move-object v1, p0

    invoke-virtual {p0, v13}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lkotlin/jvm/internal/z;->element:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init out result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v0, Lkotlin/jvm/internal/z;->element:Z

    return v0
.end method

.method public final retry(Ljava/lang/String;)I
    .locals 2

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/a0;

    invoke-direct {v0}, Lkotlin/jvm/internal/a0;-><init>()V

    const/4 v1, -0x2

    iput v1, v0, Lkotlin/jvm/internal/a0;->element:I

    new-instance v1, Lcom/oplus/aiunit/speech/asr/client/ASRClient$retry$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$retry$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Ljava/lang/String;Lkotlin/jvm/internal/a0;)V

    invoke-virtual {p0, v1}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    iget p0, v0, Lkotlin/jvm/internal/a0;->element:I

    return p0
.end method

.method public final sendFileData(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendFileData$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendFileData$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final sendPCMData([BLjava/lang/String;JJ)V
    .locals 9

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;[BLjava/lang/String;JJ)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final setAsrExternalCallback(Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;

    return-void
.end method

.method public final setFileASRExternalCallback(Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->b:Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$setLanguage$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$setLanguage$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final stopAsr(Ljava/lang/String;)V
    .locals 1

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$stopAsr$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$stopAsr$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final stopFileData()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->stopFileData(Landroid/os/Bundle;)V

    return-void
.end method

.method public final stopFileData(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$stopFileData$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$stopFileData$1;-><init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method
