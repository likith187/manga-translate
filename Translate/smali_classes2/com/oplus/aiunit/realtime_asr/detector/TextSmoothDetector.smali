.class public final Lcom/oplus/aiunit/realtime_asr/detector/TextSmoothDetector;
.super Lcom/oplus/aiunit/core/base/FrameDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/aiunit/core/base/FrameDetector<",
        "Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;",
        "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nlp_text_smooth"

    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/core/base/FrameDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/detector/TextSmoothDetector;->createInputSlot()Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;

    move-result-object p0

    return-object p0
.end method

.method public createInputSlot()Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;
    .locals 1

    .line 2
    new-instance v0, Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-object v0
.end method

.method public getConfigMemoryPool()[I
    .locals 0

    const/16 p0, 0x200

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method
