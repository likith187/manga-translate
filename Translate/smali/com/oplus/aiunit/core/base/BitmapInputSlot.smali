.class public Lcom/oplus/aiunit/core/base/BitmapInputSlot;
.super Lcom/oplus/aiunit/core/base/FrameInputSlot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/base/BitmapInputSlot$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/base/BitmapInputSlot$Companion;

.field private static final TAG:Ljava/lang/String; = "BitmapInputSlot"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/base/BitmapInputSlot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/base/BitmapInputSlot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/base/BitmapInputSlot;->Companion:Lcom/oplus/aiunit/core/base/BitmapInputSlot$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/aiunit/core/base/AIContext;)V
    .locals 1

    const-string v0, "aiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-void
.end method


# virtual methods
.method public final setValue(Landroid/graphics/Bitmap;Z)I
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/aiunit/core/base/BitmapInputSlot;->setValue(Landroid/graphics/Bitmap;ZZ)I

    move-result p0

    return p0
.end method

.method public final setValue(Landroid/graphics/Bitmap;ZZ)I
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanExistFrameUnit()V

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setTargetBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)I

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/oplus/aiunit/core/FrameUnit;

    const-string p3, "input_0"

    invoke-direct {p2, p1, p3}, Lcom/oplus/aiunit/core/FrameUnit;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->addFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)I

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0
.end method
