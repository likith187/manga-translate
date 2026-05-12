.class public final Lk2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lk2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk2/a;

    invoke-direct {v0}, Lk2/a;-><init>()V

    sput-object v0, Lk2/a;->INSTANCE:Lk2/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Landroid/content/Context;)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 6

    const-string p3, "rect"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, ", size: "

    const-string p4, " h: "

    const-string v0, "ScreenUtils"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/oplus/screenshot/OplusScreenCapture$DisplayCaptureArgs$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/oplus/screenshot/OplusScreenCapture$DisplayCaptureArgs$Builder;-><init>(I)V

    invoke-virtual {v2, p0}, Lcom/oplus/screenshot/OplusScreenCapture$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Lcom/oplus/screenshot/OplusScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/screenshot/OplusScreenCapture$DisplayCaptureArgs$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/screenshot/OplusScreenCapture$DisplayCaptureArgs$Builder;->setSize(II)Lcom/oplus/screenshot/OplusScreenCapture$DisplayCaptureArgs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScreenCapture$DisplayCaptureArgs$Builder;->build()Lcom/oplus/screenshot/OplusScreenCapture$DisplayCaptureArgs;

    move-result-object p0

    invoke-static {}, Lcom/oplus/screenshot/OplusScreenCapture;->getInstance()Lcom/oplus/screenshot/OplusScreenCapture;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/screenshot/OplusScreenCapture;->captureDisplay(Lcom/oplus/screenshot/OplusScreenCapture$DisplayCaptureArgs;)Lcom/oplus/screenshot/OplusScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    const-string p1, "captureDisplay(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[takeScreenAboveU2] w: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    new-instance p1, Landroid/view/OplusWindowManager;

    invoke-direct {p1}, Landroid/view/OplusWindowManager;-><init>()V

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/OplusWindowManager;->getLongshotWindowByTypeForR(I)Landroid/view/SurfaceControl;

    move-result-object p1

    new-instance p2, Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {p2, p1}, Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {p2, p0}, Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Lcom/oplus/screenshot/OplusScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs$Builder;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Lcom/oplus/screenshot/OplusScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs$Builder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Lcom/oplus/screenshot/OplusScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs$Builder;->build()Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/screenshot/OplusScreenCapture;->getInstance()Lcom/oplus/screenshot/OplusScreenCapture;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/screenshot/OplusScreenCapture;->captureLayers(Lcom/oplus/screenshot/OplusScreenCapture$LayerCaptureArgs;)Lcom/oplus/screenshot/OplusScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[takeScreenAboveU] w: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1

    :goto_3
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "takeScreenShot ignore "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final d(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "rect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lk2/a;->c(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lk2/a;->e(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "rect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, p4}, Lo6/a;->g(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
