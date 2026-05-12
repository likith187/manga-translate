.class public Lcom/oplus/aiunit/vision/client/VisionClient;
.super Lcom/oplus/aiunit/core/AIConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/oplus/aiunit/core/base/BitmapInputSlot;",
        "O:",
        "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
        ">",
        "Lcom/oplus/aiunit/core/AIConnector<",
        "TI;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/aiunit/core/base/FrameDetector<",
            "TI;TO;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/core/AIConnector;-><init>(Landroid/content/Context;Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDetector(Lcom/oplus/aiunit/vision/client/VisionClient;)Lcom/oplus/aiunit/core/base/FrameDetector;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic processInner$default(Lcom/oplus/aiunit/vision/client/VisionClient;Landroid/graphics/Bitmap;ZILjava/lang/Object;)Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/vision/client/VisionClient;->processInner(Landroid/graphics/Bitmap;Z)Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: processInner"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final processEngine(Landroid/graphics/Bitmap;)Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TO;"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/vision/client/VisionClient$processEngine$1;-><init>(Lcom/oplus/aiunit/vision/client/VisionClient;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    return-object p0
.end method

.method public final processInner(Landroid/graphics/Bitmap;Z)Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Z)TO;"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/vision/client/VisionClient$processInner$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/aiunit/vision/client/VisionClient$processInner$1;-><init>(Lcom/oplus/aiunit/vision/client/VisionClient;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    return-object p0
.end method
