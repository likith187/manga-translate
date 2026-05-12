.class Lcom/oplus/aiunit/core/FrameUnit$1;
.super Lcom/oplus/aiunit/core/data/IBitmap$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/core/FrameUnit;->setBinderBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/aiunit/core/FrameUnit;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/FrameUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit$1;->this$0:Lcom/oplus/aiunit/core/FrameUnit;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/data/IBitmap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit$1;->this$0:Lcom/oplus/aiunit/core/FrameUnit;

    invoke-static {p0}, Lcom/oplus/aiunit/core/FrameUnit;->access$000(Lcom/oplus/aiunit/core/FrameUnit;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
