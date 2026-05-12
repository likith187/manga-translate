.class public Lcom/oplus/aiunit/core/base/FrameOutputSlot;
.super Lcom/oplus/aiunit/core/base/FrameSlot;
.source "SourceFile"


# static fields
.field private static final OUTPUT_TAG_PREFIX:Ljava/lang/String; = "output_"

.field private static final TAG:Ljava/lang/String; = "FrameOutputSlot"


# instance fields
.field private final mBitmapCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mFramePackage:Lcom/oplus/aiunit/core/FramePackage;

.field private mJsonResult:Ljava/lang/String;

.field private mStatistics:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/base/AIContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/base/FrameSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mBitmapCollection:Ljava/util/Map;

    const-string p1, ""

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mJsonResult:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mStatistics:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mFramePackage:Lcom/oplus/aiunit/core/FramePackage;

    return-void
.end method


# virtual methods
.method public clearBitmaps()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mBitmapCollection:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public convertBitmap(Lcom/oplus/aiunit/core/FrameUnit;)V
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mBitmapCollection:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "output_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mBitmapCollection:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getFramePackage()Lcom/oplus/aiunit/core/FramePackage;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mFramePackage:Lcom/oplus/aiunit/core/FramePackage;

    return-object p0
.end method

.method public getJsonResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mJsonResult:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputBitmap()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mBitmapCollection:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mBitmapCollection:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_0
    return-object v0
.end method

.method public getStatistics()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mStatistics:Ljava/lang/String;

    return-object p0
.end method

.method public setFramePackage(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mFramePackage:Lcom/oplus/aiunit/core/FramePackage;

    return-void
.end method

.method public setJsonResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mJsonResult:Ljava/lang/String;

    return-void
.end method

.method public setStatistics(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->mStatistics:Ljava/lang/String;

    return-void
.end method
