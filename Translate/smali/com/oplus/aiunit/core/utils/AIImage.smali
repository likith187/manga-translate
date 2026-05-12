.class public final Lcom/oplus/aiunit/core/utils/AIImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/utils/AIImage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/utils/AIImage$Companion;

.field private static final TAG:Ljava/lang/String; = "AIImage"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/utils/AIImage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/utils/AIImage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/utils/AIImage;->Companion:Lcom/oplus/aiunit/core/utils/AIImage$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final calculateSampleSize(IIII)I
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/utils/AIImage;->Companion:Lcom/oplus/aiunit/core/utils/AIImage$Companion;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oplus/aiunit/core/utils/AIImage$Companion;->access$calculateSampleSize(Lcom/oplus/aiunit/core/utils/AIImage$Companion;IIII)I

    move-result p0

    return p0
.end method

.method public static final compress(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/utils/AIImage;->Companion:Lcom/oplus/aiunit/core/utils/AIImage$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/utils/AIImage$Companion;->compress(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final minEdgeScaleToSpecificValue(III)F
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/utils/AIImage;->Companion:Lcom/oplus/aiunit/core/utils/AIImage$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/utils/AIImage$Companion;->minEdgeScaleToSpecificValue(III)F

    move-result p0

    return p0
.end method

.method public static final scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Lcom/oplus/aiunit/core/utils/AIImage;->Companion:Lcom/oplus/aiunit/core/utils/AIImage$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/utils/AIImage$Companion;->scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final scale(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 2
    sget-object v0, Lcom/oplus/aiunit/core/utils/AIImage;->Companion:Lcom/oplus/aiunit/core/utils/AIImage$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/utils/AIImage$Companion;->scale(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 3
    sget-object v0, Lcom/oplus/aiunit/core/utils/AIImage;->Companion:Lcom/oplus/aiunit/core/utils/AIImage$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/utils/AIImage$Companion;->scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final scaled(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/utils/AIImage;->Companion:Lcom/oplus/aiunit/core/utils/AIImage$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/utils/AIImage$Companion;->scaled(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
