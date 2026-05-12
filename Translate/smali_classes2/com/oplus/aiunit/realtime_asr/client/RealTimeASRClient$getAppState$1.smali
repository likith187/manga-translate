.class public final Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/AIConnector$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->getAppState()Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/aiunit/core/AIConnector$Action<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 1
    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppState failure code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_PROCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->sendStatus$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/AIConnector$Action$DefaultImpls;->failure(Lcom/oplus/aiunit/core/AIConnector$Action;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "get AppState"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;->callGetAppStateMethod()V

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrOutputSlot;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get AppState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;->run()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
