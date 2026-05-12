.class public final Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/AIConnector$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;->process(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/aiunit/core/AIConnector$Action<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $jsonSource:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;->$jsonSource:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/AIConnector$Action$DefaultImpls;->failure(Lcom/oplus/aiunit/core/AIConnector$Action;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;->run()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;

    invoke-static {v0}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v0

    const-string v1, "createInputSlot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;

    invoke-static {v1}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v1

    const-string v2, "createOutputSlot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;->$jsonSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;->setJsonValue(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;

    invoke-static {v2}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SDK textSmooth process start."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;

    invoke-static {v2}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;->access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;->this$0:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;

    invoke-static {p0}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;->access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SDK textSmooth process end."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->getJsonResult()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
