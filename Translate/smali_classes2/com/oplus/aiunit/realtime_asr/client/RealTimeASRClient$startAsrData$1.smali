.class public final Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/AIConnector$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->startAsrData(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V
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
.field public final synthetic $addLocalAsrData:Z

.field public final synthetic $callId:Ljava/lang/String;

.field public final synthetic $speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

.field public final synthetic this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->$callId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->$speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    iput-boolean p4, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->$addLocalAsrData:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method

.method public failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ln8/h0;
    .locals 9

    .line 2
    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsrData failure code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNoInternet:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_NET_DISCONNECT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v4}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v5

    invoke-virtual {v4}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getStatusDesc()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startAsrData sendStatus code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0, v4, v3, v1, v3}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->sendStatus$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    sget-object v2, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_PROCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-static {v0, v2, v3, v1, v3}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->sendStatus$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/AIConnector$Action$DefaultImpls;->failure(Lcom/oplus/aiunit/core/AIConnector$Action;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln8/h0;

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->run()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->STARTED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    invoke-static {v0, v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$setAppState$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start realtime Asr"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->$callId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->$speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;->callStartAsrMethod(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrOutputSlot;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAsr ret, process code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->$addLocalAsrData:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->$callId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->$speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;-><init>(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p0, v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$addAsrStartData(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;)V

    :cond_0
    return-void
.end method
