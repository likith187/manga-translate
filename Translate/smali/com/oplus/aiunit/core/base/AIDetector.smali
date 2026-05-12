.class public interface abstract Lcom/oplus/aiunit/core/base/AIDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
        "O:",
        "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method public abstract createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public abstract getApiLevel()I
.end method

.method public abstract getDetectorState()I
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getProtocol()I
    .locals 0

    invoke-static {}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getClientProtocol()I

    move-result p0

    return p0
.end method

.method public abstract isSupported()Z
.end method

.method public abstract process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)",
            "Lcom/oplus/aiunit/core/protocol/common/ErrorCode;"
        }
    .end annotation
.end method

.method public abstract processAsync(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/callback/ProcessCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lcom/oplus/aiunit/core/callback/ProcessCallback<",
            "TO;>;)V"
        }
    .end annotation
.end method

.method public abstract start()I
.end method

.method public abstract startDetectAsync(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
.end method

.method public abstract stop()I
.end method

.method public abstract stopAsync()V
.end method
