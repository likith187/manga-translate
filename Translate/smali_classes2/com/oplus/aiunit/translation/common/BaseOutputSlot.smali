.class public Lcom/oplus/aiunit/translation/common/BaseOutputSlot;
.super Lcom/oplus/aiunit/core/base/FrameOutputSlot;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/base/AIContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-void
.end method
