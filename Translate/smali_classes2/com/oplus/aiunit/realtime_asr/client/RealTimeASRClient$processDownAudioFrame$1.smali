.class public final Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/AIConnector$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->processDownAudioFrame(Ljava/lang/String;JLjava/lang/String;[BILcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V
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
.field public final synthetic $audioData:[B

.field public final synthetic $callId:Ljava/lang/String;

.field public final synthetic $duration:I

.field public final synthetic $msgId:J

.field public final synthetic $speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

.field public final synthetic $timeStamp:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;JLjava/lang/String;[BILcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$callId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$msgId:J

    iput-object p5, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$timeStamp:Ljava/lang/String;

    iput-object p6, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$audioData:[B

    iput p7, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$duration:I

    iput-object p8, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method

.method public failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ln8/h0;
    .locals 3

    .line 2
    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processDownAudioFrame failure code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/AIConnector$Action$DefaultImpls;->failure(Lcom/oplus/aiunit/core/AIConnector$Action;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln8/h0;

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->run()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public run()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "process down Asr"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$callId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$msgId:J

    iget-object v5, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$timeStamp:Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$audioData:[B

    iget v7, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$duration:I

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->$speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->getValue()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;->callProcessDownAsr(Ljava/lang/String;JLjava/lang/String;[BILjava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrOutputSlot;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;

    invoke-static {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processDownAudioFrame ret, process code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
