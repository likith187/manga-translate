.class public final Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/AIConnector$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/vision/client/VisionClient;->processEngine(Landroid/graphics/Bitmap;)Lcom/oplus/aiunit/core/base/FrameOutputSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/aiunit/core/AIConnector$Action<",
        "TO;>;"
    }
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/oplus/aiunit/vision/client/VisionClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/aiunit/vision/client/VisionClient<",
            "TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/vision/client/VisionClient;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/aiunit/vision/client/VisionClient<",
            "TI;TO;>;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;->this$0:Lcom/oplus/aiunit/vision/client/VisionClient;

    iput-object p2, p0, Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/aiunit/core/protocol/common/ErrorCode;",
            "Ljava/lang/String;",
            ")TO;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/AIConnector$Action$DefaultImpls;->failure(Lcom/oplus/aiunit/core/AIConnector$Action;Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    return-object p0
.end method

.method public bridge synthetic failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object p0

    return-object p0
.end method

.method public run()Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;->this$0:Lcom/oplus/aiunit/vision/client/VisionClient;

    invoke-static {v0}, Lcom/oplus/aiunit/vision/client/VisionClient;->access$getDetector(Lcom/oplus/aiunit/vision/client/VisionClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v0

    const-string v1, "createInputSlot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/aiunit/core/base/BitmapInputSlot;

    .line 3
    iget-object v1, p0, Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setTargetBitmap(Landroid/graphics/Bitmap;)I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;->this$0:Lcom/oplus/aiunit/vision/client/VisionClient;

    invoke-static {v1}, Lcom/oplus/aiunit/vision/client/VisionClient;->access$getDetector(Lcom/oplus/aiunit/vision/client/VisionClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v1

    const-string v2, "createOutputSlot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;->this$0:Lcom/oplus/aiunit/vision/client/VisionClient;

    invoke-static {p0}, Lcom/oplus/aiunit/vision/client/VisionClient;->access$getDetector(Lcom/oplus/aiunit/vision/client/VisionClient;)Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;->run()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object p0

    return-object p0
.end method
