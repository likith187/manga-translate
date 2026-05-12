.class public final Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;
.super Lcom/oplus/aiunit/core/callback/IAIMessenger$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2;->invoke()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IAIMessenger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Lcom/oplus/aiunit/core/FramePackage;)I
    .locals 9

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    :goto_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :cond_1
    const-string v0, "audio_text_result"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getAppState$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->getValue()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " get result:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->Companion:Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;->fromJson(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :cond_3
    move-object v0, v2

    move-object v1, v0

    :goto_3
    :try_start_1
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_5
    iget-object v3, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v3}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioText.fromJson error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProtocol:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    :cond_5
    move-object v1, v2

    :goto_6
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getData()Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->getType()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_6
    move-object v3, v2

    :goto_7
    iget-object v4, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-virtual {v4}, Lcom/oplus/aiunit/core/AIConnector;->getRunningType()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v5}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getRemoveModalWord$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getRunningType: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", removeModalWord: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/AIConnector;->getRunningType()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getRemoveModalWord$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getData()Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->getType()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    move-object p1, v2

    :goto_8
    const-string v1, "FINAL"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getSpeechAsrClient(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient;->turnToSmoothJsonText(Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;)Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;

    move-result-object v0

    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getData()Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->getSmoothText()Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v2

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smooth asr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getAppState$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->getValue()I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->INITED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->getValue()I

    move-result v1

    if-lt p1, v1, :cond_b

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-virtual {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->getAudioTextCallback()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1, v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;->onResult(Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_a

    :cond_a
    move-object p1, v2

    :goto_a
    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "asrAckMsg \u4e3a null"

    invoke-static {p1, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$isEndAsr$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getCode()I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_ASR_COMPLETE_SUCCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v1

    if-ne p1, v1, :cond_d

    invoke-static {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "receive FINAL message, task Complete success"

    invoke-static {p1, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->getAudioTextCallback()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;

    move-result-object p1

    if-eqz p1, :cond_f

    goto :goto_b

    :cond_d
    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getCode()I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_RESULT_DATA:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v1

    if-ne p1, v1, :cond_e

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getCode()I

    move-result p1

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_NET_CONNECTED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v1

    if-eq p1, v1, :cond_10

    :cond_e
    invoke-static {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "receive Error message, task Complete with Failure"

    invoke-static {p1, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->getAudioTextCallback()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;

    move-result-object p1

    if-eqz p1, :cond_f

    :goto_b
    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getCode()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;->taskComplete(I)V

    :cond_f
    invoke-static {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$isEndAsr$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_10
    invoke-static {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$isEndAsr$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->getAudioTextCallback()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;->onResult(Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;)V

    goto/16 :goto_0
.end method
