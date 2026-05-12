.class public final Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;
.super Lcom/oplus/aiunit/core/base/FrameDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/aiunit/core/base/FrameDetector<",
        "Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;",
        "Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrOutputSlot;",
        ">;"
    }
.end annotation


# instance fields
.field private forceCloud:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realtime_asr"

    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/core/base/FrameDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;->forceCloud:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;->createInputSlot()Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;

    move-result-object p0

    return-object p0
.end method

.method public createInputSlot()Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;
    .locals 1

    .line 2
    new-instance v0, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-object v0
.end method

.method public bridge synthetic createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;->createOutputSlot()Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrOutputSlot;

    move-result-object p0

    return-object p0
.end method

.method public createOutputSlot()Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrOutputSlot;
    .locals 1

    .line 2
    new-instance v0, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrOutputSlot;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrOutputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-object v0
.end method

.method public getConfigMemoryPool()[I
    .locals 0

    const/16 p0, 0x200

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "getExtras(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;->forceCloud:Z

    const-string v2, "ai::key::filter_local_llm"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p0, p0, Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;->forceCloud:Z

    const-string v1, "ai::key::filter_attach_local_llm"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getUnstableRunningType()I
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;->forceCloud:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getUnstableRunningType()I

    move-result p0

    return p0
.end method
