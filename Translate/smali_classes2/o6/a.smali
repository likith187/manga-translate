.class public abstract Lo6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/a$a;,
        Lo6/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo6/a;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo6/a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lo6/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/graphics/Rect;IIIILandroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    invoke-static {}, Lo6/a$a;->a()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p5}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/hardware/HardwareBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p5, :cond_0

    :try_start_2
    invoke-virtual {p5}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p5, :cond_1

    :try_start_3
    invoke-virtual {p5}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p5

    :try_start_4
    invoke-virtual {v0, p5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    const-string v1, "bitmap_type"

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lo6/a;->f(Ljava/lang/String;Landroid/graphics/Rect;IIII)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->d()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static c(Landroid/graphics/Rect;IIIILandroid/hardware/HardwareBuffer;)Landroid/graphics/Bitmap;
    .locals 6

    :try_start_0
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string v0, "bitmap_type"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lo6/a;->f(Ljava/lang/String;Landroid/graphics/Rect;IIII)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->d()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ln6/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.view.OplusSurfaceControl"

    return-object v0

    :cond_0
    invoke-static {}, Lo6/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static e()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lo6/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;Landroid/graphics/Rect;IIII)Lcom/oplus/epona/Response;
    .locals 2

    new-instance v0, Lcom/oplus/epona/Request$b;

    invoke-direct {v0}, Lcom/oplus/epona/Request$b;-><init>()V

    sget-object v1, Lo6/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$b;->c(Ljava/lang/String;)Lcom/oplus/epona/Request$b;

    move-result-object v0

    const-string v1, "screenshot"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$b;->b(Ljava/lang/String;)Lcom/oplus/epona/Request$b;

    move-result-object v0

    const-string v1, "sourceCrop"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/epona/Request$b;->e(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$b;

    move-result-object p1

    const-string v0, "width"

    invoke-virtual {p1, v0, p2}, Lcom/oplus/epona/Request$b;->d(Ljava/lang/String;I)Lcom/oplus/epona/Request$b;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {p1, p2, p3}, Lcom/oplus/epona/Request$b;->d(Ljava/lang/String;I)Lcom/oplus/epona/Request$b;

    move-result-object p1

    const-string p2, "maxLayer"

    invoke-virtual {p1, p2, p4}, Lcom/oplus/epona/Request$b;->d(Ljava/lang/String;I)Lcom/oplus/epona/Request$b;

    move-result-object p1

    const-string p2, "rotation"

    invoke-virtual {p1, p2, p5}, Lcom/oplus/epona/Request$b;->d(Ljava/lang/String;I)Lcom/oplus/epona/Request$b;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {p1, p2, p0}, Lcom/oplus/epona/Request$b;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$b;->a()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/d;->o(Lcom/oplus/epona/Request;)Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->d()Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {}, Ln6/d;->j()Z

    move-result v0

    const-string v1, "result"

    const-string v2, "buffer_result"

    if-eqz v0, :cond_1

    const-string v3, "buffer_type"

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Lo6/a;->f(Ljava/lang/String;Landroid/graphics/Rect;IIII)Lcom/oplus/epona/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->d()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/hardware/HardwareBuffer;

    if-eqz v8, :cond_0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v3 .. v8}, Lo6/a;->c(Landroid/graphics/Rect;IIIILandroid/hardware/HardwareBuffer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->d()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    invoke-static {}, Ln6/d;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "buffer_type"

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Lo6/a;->f(Ljava/lang/String;Landroid/graphics/Rect;IIII)Lcom/oplus/epona/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->d()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/graphics/GraphicBuffer;

    if-eqz v8, :cond_2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v3 .. v8}, Lo6/a;->b(Landroid/graphics/Rect;IIIILandroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->d()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_3
    invoke-static {}, Ln6/d;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lo6/a$b;->a()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_4
    invoke-static {}, Ln6/d;->e()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-static {}, Lo6/a$b;->b()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4, v1, p0}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_5
    new-instance p0, Ln6/c;

    const-string p1, "not supported before O"

    invoke-direct {p0, p1}, Ln6/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method
