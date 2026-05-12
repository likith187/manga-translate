.class public abstract Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;
.super Lcom/oplus/aiunit/core/callback/IInferenceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aisubsystem/core/client/AiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "InferenceCallback"
.end annotation


# instance fields
.field private final inputSlot:Lcom/oplus/aiunit/core/base/FrameInputSlot;

.field private final outputSlot:Lcom/oplus/aiunit/core/base/FrameOutputSlot;

.field final synthetic this$0:Lcom/oplus/aisubsystem/core/client/AiClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
            "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
            ")V"
        }
    .end annotation

    const-string v0, "inputSlot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputSlot"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IInferenceCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->inputSlot:Lcom/oplus/aiunit/core/base/FrameInputSlot;

    iput-object p3, p0, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->outputSlot:Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    return-void
.end method


# virtual methods
.method public final onInferenceCallback(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->inputSlot:Lcom/oplus/aiunit/core/base/FrameInputSlot;

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->outputSlot:Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    invoke-virtual {v0, v1, v2, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->restoreFrameUnit(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->inputSlot:Lcom/oplus/aiunit/core/base/FrameInputSlot;

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->outputSlot:Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    invoke-virtual {v0, v1, v2, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->postProcess(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getIntErrorCode()I

    move-result v0

    sget-object v1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->outputSlot:Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    invoke-virtual {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->onInferenceSuccess(Lcom/oplus/aiunit/core/base/FrameOutputSlot;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->onInferenceFailure(ILjava/lang/String;)V

    :goto_0
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProcessFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p1

    const-string v0, "framePackage is null"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;->onInferenceFailure(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public abstract onInferenceFailure(ILjava/lang/String;)V
.end method

.method public abstract onInferenceSuccess(Lcom/oplus/aiunit/core/base/FrameOutputSlot;)V
.end method
