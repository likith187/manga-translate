.class public Lcom/oplus/aiunit/translation/common/BaseDetector;
.super Lcom/oplus/aiunit/core/base/FrameDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IP:",
        "Lcom/oplus/aiunit/translation/common/BaseInputSlot;",
        "OP:",
        "Lcom/oplus/aiunit/translation/common/BaseOutputSlot;",
        ">",
        "Lcom/oplus/aiunit/core/base/FrameDetector<",
        "TIP;TOP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectorName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
