.class public final Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/AIConnector$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/speech/asr/client/ASRClient;->initAsr(ZLjava/lang/String;JJZJ)Z
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

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Z

.field public final synthetic g:J

.field public final synthetic h:Lkotlin/jvm/internal/z;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;ZLjava/lang/String;JJZJLkotlin/jvm/internal/z;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    iput-boolean p2, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->b:Z

    iput-object p3, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->d:J

    iput-wide p6, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->e:J

    iput-boolean p8, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->f:Z

    iput-wide p9, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->g:J

    iput-object p11, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->h:Lkotlin/jvm/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ln8/h0;

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

    iget-object v0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v0, p1, p2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$runFailure(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/AIConnector$Action$DefaultImpls;->failure(Lcom/oplus/aiunit/core/AIConnector$Action;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln8/h0;

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->run()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public run()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getTAG(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initASR"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getDetector(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;

    iget-boolean v2, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->b:Z

    iget-object v3, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->d:J

    iget-wide v6, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->e:J

    iget-boolean v8, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->f:Z

    iget-wide v9, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->g:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;->initASR(ZLjava/lang/String;JJZJ)V

    iget-object v1, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getDetector(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/speech/asr/slot/ASROutputSlot;

    iget-object v2, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getDetector(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object v0

    sget-object v2, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->getFramePackage()Lcom/oplus/aiunit/core/FramePackage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    const-string v2, "asr_status"

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/core/ParamPackage;->getParamInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->h:Lkotlin/jvm/internal/z;

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v2, Lkotlin/jvm/internal/z;->element:Z

    iget-object v2, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v2}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getTAG(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->h:Lkotlin/jvm/internal/z;

    iget-boolean p0, p0, Lkotlin/jvm/internal/z;->element:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initASR, initCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", errorCode: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$initAsr$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getTAG(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initASR, errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
