.class public final Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/AIConnector$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->endAsr(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/aiunit/core/AIConnector$Action<",
        "Ln8/h0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $callId:Ljava/lang/String;

.field public final synthetic $speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

.field public final synthetic this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->$callId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->$speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method

.method public failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ln8/h0;
    .locals 4

    .line 2
    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endAsr failure code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_PROCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->sendStatus$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/AIConnector$Action$DefaultImpls;->failure(Lcom/oplus/aiunit/core/AIConnector$Action;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln8/h0;

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->run()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "end realtime Asr"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->STOPPED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    invoke-static {v0, v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$setAppState$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->$callId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->$speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;->callEndAsrMethod(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrOutputSlot;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$isEndAsr$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    new-instance v2, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1$run$1;

    iget-object v3, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-direct {v2, v3}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1$run$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)V

    invoke-static {v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$setSetCheckFinalTimerTask$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/util/TimerTask;)V

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$setTimer$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/util/Timer;)V

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTimer$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getSetCheckFinalTimerTask$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/TimerTask;

    move-result-object v2

    const-wide/16 v3, 0x13ec

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endAsr ret, process code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$setAsrInitData$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;)V

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getAsrStartDataList$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
