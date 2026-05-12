.class public abstract Lcom/coloros/translate/screen/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/16 v2, 0x50

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/coloros/translate/screen/utils/l;->b(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "ScreenshotHelper"

    const-string p1, "ScreenshotHelper shot is null"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/coloros/translate/screen/translate/business/a;->a(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    invoke-static {p0, v2}, Lcom/coloros/translate/screen/utils/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Lcom/coloros/translate/screen/utils/w;->d(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    invoke-static {p0, v2}, Lcom/coloros/translate/screen/utils/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :cond_3
    return-object p0
.end method

.method private static b(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/p;->b(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/p;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/p;->a(Landroid/content/Context;)I

    move-result p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    move p0, v0

    :goto_1
    sub-int p0, v4, p0

    invoke-virtual {v5, v0, p1, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v0, p1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    const/4 p0, -0x1

    invoke-static {v5, v3, v4, p0, v2}, Lo6/a;->g(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getScreenshot error,e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenshotHelper"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    return-object v1
.end method
