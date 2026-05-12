.class public final Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/AIConnector$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/speech/asr/client/ASRClient;->sendPCMData([BLjava/lang/String;JJ)V
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
.field public final synthetic a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

.field public final synthetic b:[B

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;[BLjava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    iput-object p2, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->b:[B

    iput-object p3, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->d:J

    iput-wide p6, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method

.method public failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ln8/h0;
    .locals 1

    .line 2
    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v0, p1, p2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$runFailure(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/AIConnector$Action$DefaultImpls;->failure(Lcom/oplus/aiunit/core/AIConnector$Action;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln8/h0;

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->run()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public run()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getTAG(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendPCMData start"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getDetector(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;

    iget-object v2, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->b:[B

    iget-object v3, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->d:J

    iget-wide v6, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->e:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;->setPCMData([BLjava/lang/String;JJ)V

    iget-object v1, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getDetector(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/speech/asr/slot/ASROutputSlot;

    iget-object v2, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getDetector(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$sendPCMData$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getTAG(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPCMData result, process code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
