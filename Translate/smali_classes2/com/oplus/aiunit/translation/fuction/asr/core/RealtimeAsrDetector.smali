.class public final Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrDetector;
.super Lcom/oplus/aiunit/translation/common/BaseDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/aiunit/translation/common/BaseDetector<",
        "Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;",
        "Lcom/oplus/aiunit/translation/common/BaseOutputSlot;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectorName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/translation/common/BaseDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrDetector;->createInputSlot()Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;

    move-result-object p0

    return-object p0
.end method

.method public createInputSlot()Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;
    .locals 2

    .line 2
    const-string v0, "RealtimeAsrDetector"

    const-string v1, "createInputSlot"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrInpuSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-object v0
.end method

.method public bridge synthetic createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrDetector;->createOutputSlot()Lcom/oplus/aiunit/translation/common/BaseOutputSlot;

    move-result-object p0

    return-object p0
.end method

.method public createOutputSlot()Lcom/oplus/aiunit/translation/common/BaseOutputSlot;
    .locals 2

    .line 2
    const-string v0, "RealtimeAsrDetector"

    const-string v1, "createOutputSlot"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/oplus/aiunit/translation/common/BaseOutputSlot;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/translation/common/BaseOutputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-object v0
.end method
