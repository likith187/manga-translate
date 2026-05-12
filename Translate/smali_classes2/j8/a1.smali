.class public Lj8/a1;
.super Lj8/n0;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "j8.a1"


# instance fields
.field a:Lj8/n0$a;

.field b:Lorg/opencv/core/Mat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lj8/a1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/opencv/android/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OpenCV initialization failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;Lj8/n0$a;)V
    .locals 5

    invoke-direct {p0}, Lj8/n0;-><init>()V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    sget-object v1, Lj8/a1;->c:Ljava/lang/String;

    const-string v2, "textrender_init"

    invoke-virtual {v0, v2, v1}, Ll8/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, v3}, Ll8/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input new "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    const-string v3, "convert2rgb"

    invoke-virtual {v0, v3}, Ll8/d;->a(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lj8/a1;->a:Lj8/n0$a;

    if-nez p2, :cond_1

    new-instance p2, Lj8/n0$a;

    invoke-direct {p2}, Lj8/n0$a;-><init>()V

    :cond_1
    iget v0, p2, Lj8/n0$a;->j:I

    iget-object v3, p2, Lj8/n0$a;->k:Ljava/lang/String;

    invoke-static {v0, v3}, Ll8/c;->h(ILjava/lang/String;)V

    const-string v0, "config"

    invoke-static {v1, v0, p2}, Ll8/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lorg/opencv/core/Mat;

    invoke-direct {p2}, Lorg/opencv/core/Mat;-><init>()V

    iput-object p2, p0, Lj8/a1;->b:Lorg/opencv/core/Mat;

    invoke-static {p1, p2}, Lorg/opencv/android/Utils;->a(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    iget-object p0, p0, Lj8/a1;->b:Lorg/opencv/core/Mat;

    const/4 p1, 0x3

    invoke-static {p0, p0, p1}, Lorg/opencv/imgproc/Imgproc;->a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object p0

    const-string p1, "createSrcMat"

    invoke-virtual {p0, p1}, Ll8/d;->a(Ljava/lang/String;)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object p0

    invoke-virtual {p0, v2}, Ll8/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lj8/m0;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lj8/a1;->q(Lj8/m0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/opencv/core/Mat;Lj8/n0$a;Lj8/m0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj8/a1;->s(Lorg/opencv/core/Mat;Lj8/n0$a;Lj8/m0;)V

    return-void
.end method

.method public static synthetic f(Lorg/opencv/core/Mat;Lj8/n0$a;Lj8/m0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj8/a1;->t(Lorg/opencv/core/Mat;Lj8/n0$a;Lj8/m0;)V

    return-void
.end method

.method public static synthetic g(Lj8/m0;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lj8/a1;->r(Lj8/m0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lj8/m0;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lj8/a1;->p(Lj8/m0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static i(Lorg/opencv/core/Mat;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 10

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj8/w0;

    invoke-direct {v1}, Lj8/w0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v8, Laa/g;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide v2, 0x406fe00000000000L    # 255.0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Laa/g;-><init>(DDD)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v8, v1}, Lk8/i;->e(Lorg/opencv/core/Mat;Ljava/util/List;Laa/g;I)V

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lj8/x0;

    invoke-direct {v2}, Lj8/x0;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v9, Laa/g;

    const-wide/16 v5, 0x0

    const-wide v7, 0x406fe00000000000L    # 255.0

    const-wide/16 v3, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Laa/g;-><init>(DDD)V

    invoke-static {p0, v0, v9, v1}, Lk8/i;->e(Lorg/opencv/core/Mat;Ljava/util/List;Laa/g;I)V

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lj8/y0;

    invoke-direct {v0}, Lj8/y0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Laa/g;

    const-wide v5, 0x406fe00000000000L    # 255.0

    const-wide/16 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Laa/g;-><init>(DDD)V

    invoke-static {p0, p1, v0, v1}, Lk8/i;->e(Lorg/opencv/core/Mat;Ljava/util/List;Laa/g;I)V

    return-object p0
.end method

.method private static j(Lj8/m0;Lorg/opencv/core/Mat;Landroid/content/Context;Lj8/n0$a;)V
    .locals 4

    invoke-static {p0, p2, p3}, Lj8/a1;->m(Lj8/m0;Landroid/content/Context;Lj8/n0$a;)Lorg/opencv/core/Mat;

    move-result-object p2

    sget-object v0, Lj8/a1;->c:Ljava/lang/String;

    iget v1, p0, Lj8/m0;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text_%d.jpg"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lk8/i;->k(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Mat;)V

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->v()I

    move-result v1

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->d()I

    move-result v2

    iget-object v3, p0, Lj8/m0;->f:Lj8/m0$a;

    invoke-static {v1, v2, v3, p3}, Lj8/a1;->o(IILj8/m0$a;Lj8/n0$a;)Lorg/opencv/core/Mat;

    move-result-object v1

    iget v2, p0, Lj8/m0;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mask_%d.jpg"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lk8/i;->k(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Mat;)V

    new-instance v2, Lorg/opencv/core/Mat;

    iget-object v3, p0, Lj8/m0;->f:Lj8/m0$a;

    iget-object v3, v3, Lj8/m0$a;->d:Laa/e;

    invoke-direct {v2, p1, v3}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Laa/e;)V

    iget p1, p0, Lj8/m0;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "target_%d.jpg"

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lk8/i;->k(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Mat;)V

    iget-boolean p1, p3, Lj8/n0$a;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-static {p2, p2, p1}, Lorg/opencv/imgproc/Imgproc;->a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    :cond_0
    invoke-virtual {p2, v2, v1}, Lorg/opencv/core/Mat;->f(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V

    iget p0, p0, Lj8/m0;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "result_%d.jpg"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Lk8/i;->k(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Mat;)V

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->u()V

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->u()V

    return-void
.end method

.method private static k(Ljava/util/List;Lorg/opencv/core/Mat;Landroid/content/Context;Lj8/n0$a;)Lorg/opencv/core/Mat;
    .locals 12

    iget-boolean v0, p3, Lj8/n0$a;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->x()Laa/h;

    move-result-object p1

    sget v1, Laa/a;->d:I

    new-instance v11, Laa/g;

    const-wide v7, 0x406fe00000000000L    # 255.0

    const-wide/16 v9, 0x0

    const-wide v3, 0x406fe00000000000L    # 255.0

    const-wide v5, 0x406fe00000000000L    # 255.0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Laa/g;-><init>(DDDD)V

    invoke-direct {v0, p1, v1, v11}, Lorg/opencv/core/Mat;-><init>(Laa/h;ILaa/g;)V

    move-object p1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj8/m0;

    invoke-static {v0, p1, p2, p3}, Lj8/a1;->j(Lj8/m0;Lorg/opencv/core/Mat;Landroid/content/Context;Lj8/n0$a;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lj8/a1;->c:Ljava/lang/String;

    const-string p2, "result_mat"

    invoke-static {p0, p2, p1}, Lk8/i;->k(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Mat;)V

    return-object p1
.end method

.method private static l(Landroid/graphics/Canvas;Lj8/m0;Lj8/c1;)V
    .locals 10

    iget-object v0, p1, Lj8/m0;->g:Lorg/opencv/core/Mat;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p1, Lj8/m0;->i:[I

    aget v4, v0, v2

    aget v5, v0, v3

    aget v0, v0, v1

    invoke-static {v4, v5, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v8, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iget-object v4, p1, Lj8/m0;->h:[I

    aget v2, v4, v2

    aget v3, v4, v3

    aget v1, v4, v1

    invoke-static {v2, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p1, Lj8/m0;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p1, Lj8/m0;->l:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    sget-object v1, Lj8/a1;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set font "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lj8/m0;->l:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ll8/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lj8/m0;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lj8/m0;->k:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    :goto_0
    iget-object p1, p1, Lj8/m0;->c:Ljava/lang/String;

    iget v2, p2, Lj8/c1;->f:I

    iget p2, p2, Lj8/c1;->b:I

    add-int/2addr v2, p2

    int-to-float p2, v2

    int-to-float v1, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static m(Lj8/m0;Landroid/content/Context;Lj8/n0$a;)Lorg/opencv/core/Mat;
    .locals 4

    iget-object v0, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    sget v1, Laa/a;->c:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-virtual {v0, v0, v1}, Lorg/opencv/core/Mat;->e(Lorg/opencv/core/Mat;I)V

    :cond_0
    iget-object v0, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->d()I

    move-result v0

    iget-object v1, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->v()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-static {v1, v0}, Lorg/opencv/android/Utils;->c(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj8/m0;->f:Lj8/m0$a;

    iget-object v0, v0, Lj8/m0$a;->c:Ljava/util/List;

    invoke-static {v0}, Lk8/e;->t(Ljava/util/List;)Laa/h;

    move-result-object v0

    iget-wide v1, v0, Laa/h;->a:D

    double-to-int v1, v1

    iget-wide v2, v0, Laa/h;->b:D

    double-to-int v0, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-boolean v2, p0, Lj8/m0;->n:Z

    if-eqz v2, :cond_2

    iget-object p1, p2, Lj8/n0$a;->i:Lj8/c1;

    invoke-static {v1, p0, p1}, Lj8/a1;->l(Landroid/graphics/Canvas;Lj8/m0;Lj8/c1;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, p0, p2}, Lj8/b1;->a(Landroid/content/Context;Lj8/m0;Lj8/n0$a;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    new-instance p1, Lorg/opencv/core/Mat;

    invoke-direct {p1}, Lorg/opencv/core/Mat;-><init>()V

    invoke-static {v0, p1}, Lorg/opencv/android/Utils;->a(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    const/4 p2, 0x1

    invoke-static {p1, p1, p2}, Lorg/opencv/imgproc/Imgproc;->a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    iget-object p2, p0, Lj8/m0;->f:Lj8/m0$a;

    iget-object p2, p2, Lj8/m0$a;->c:Ljava/util/List;

    invoke-static {p2}, Lk8/e;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lj8/m0;->f:Lj8/m0$a;

    iget-object p0, p0, Lj8/m0$a;->d:Laa/e;

    invoke-virtual {p0}, Laa/e;->d()Laa/h;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lk8/i;->z(Lorg/opencv/core/Mat;Ljava/util/List;Laa/h;)Lorg/opencv/core/Mat;

    move-result-object p0

    return-object p0
.end method

.method private static n(Ljava/util/List;Lorg/opencv/core/Mat;Lj8/n0$a;)V
    .locals 1

    new-instance v0, Lj8/v0;

    invoke-direct {v0, p1, p2}, Lj8/v0;-><init>(Lorg/opencv/core/Mat;Lj8/n0$a;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static o(IILj8/m0$a;Lj8/n0$a;)Lorg/opencv/core/Mat;
    .locals 8

    iget-object p3, p2, Lj8/m0$a;->b:Ljava/util/List;

    iget-object v0, p2, Lj8/m0$a;->c:Ljava/util/List;

    invoke-static {v0}, Lk8/e;->n(Ljava/util/List;)Laa/d;

    move-result-object v0

    invoke-static {p3, v0}, Lk8/e;->y(Ljava/util/List;Laa/d;)Ljava/util/List;

    move-result-object p3

    new-instance v0, Lorg/opencv/core/Mat;

    new-instance v1, Laa/g;

    const-wide v2, 0x406fe00000000000L    # 255.0

    invoke-direct {v1, v2, v3}, Laa/g;-><init>(D)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lorg/opencv/core/Mat;-><init>(IIILaa/g;)V

    iget-object p0, p2, Lj8/m0$a;->d:Laa/e;

    invoke-virtual {p0}, Laa/e;->d()Laa/h;

    move-result-object p0

    invoke-static {v0, p3, p0}, Lk8/i;->z(Lorg/opencv/core/Mat;Ljava/util/List;Laa/h;)Lorg/opencv/core/Mat;

    move-result-object p0

    const-wide v5, 0x406fe00000000000L    # 255.0

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lorg/opencv/imgproc/Imgproc;->i(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)D

    return-object p0
.end method

.method private static synthetic p(Lj8/m0;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lj8/m0;->f:Lj8/m0$a;

    iget-object p0, p0, Lj8/m0$a;->a:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic q(Lj8/m0;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lj8/m0;->f:Lj8/m0$a;

    iget-object p0, p0, Lj8/m0$a;->b:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic r(Lj8/m0;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lj8/m0;->f:Lj8/m0$a;

    iget-object p0, p0, Lj8/m0$a;->c:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic s(Lorg/opencv/core/Mat;Lj8/n0$a;Lj8/m0;)V
    .locals 2

    iget-object v0, p2, Lj8/m0;->h:[I

    if-nez v0, :cond_0

    iget-object p1, p2, Lj8/m0;->f:Lj8/m0$a;

    iget-object p1, p1, Lj8/m0$a;->a:Ljava/util/List;

    invoke-static {p0, p1}, Lk8/i;->u(Lorg/opencv/core/Mat;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object p0

    sget-object p1, Lj8/a1;->c:Ljava/lang/String;

    iget v0, p2, Lj8/m0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "subSrcMat_%d.jpg"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lk8/i;->k(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Mat;)V

    iget-object p1, p2, Lj8/m0;->g:Lorg/opencv/core/Mat;

    iget-object v0, p2, Lj8/m0;->i:[I

    invoke-static {p0, p1, v0}, Lj8/h;->o(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;[I)[I

    move-result-object p1

    iput-object p1, p2, Lj8/m0;->h:[I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->u()V

    goto :goto_0

    :cond_0
    iget-boolean p0, p1, Lj8/n0$a;->h:Z

    if-eqz p0, :cond_1

    iget-object p0, p2, Lj8/m0;->i:[I

    iget-object p1, p2, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-static {v0, p0, p1}, Lj8/h;->k([I[ILorg/opencv/core/Mat;)[I

    move-result-object p0

    iput-object p0, p2, Lj8/m0;->h:[I

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic t(Lorg/opencv/core/Mat;Lj8/n0$a;Lj8/m0;)V
    .locals 3

    new-instance v0, Lj8/m0$a;

    iget-object v1, p2, Lj8/m0;->d:[Laa/d;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->x()Laa/h;

    move-result-object p0

    iget-object p1, p1, Lj8/n0$a;->i:Lj8/c1;

    iget v2, p1, Lj8/c1;->a:I

    iget p1, p1, Lj8/c1;->b:I

    invoke-direct {v0, v1, p0, v2, p1}, Lj8/m0$a;-><init>([Laa/d;Laa/h;II)V

    iput-object v0, p2, Lj8/m0;->f:Lj8/m0$a;

    return-void
.end method

.method private static u(Lorg/opencv/core/Mat;Ljava/util/List;Landroid/content/Context;Lj8/n0$a;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    sget-object v1, Lj8/a1;->c:Ljava/lang/String;

    const-string v2, "text_render"

    invoke-virtual {v0, v2, v1}, Ll8/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "renderData"

    invoke-static {v1, v0, p1}, Ll8/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    iget-boolean v0, p3, Lj8/n0$a;->b:Z

    iput-boolean v0, p3, Lj8/n0$a;->b:Z

    iget-boolean v3, p3, Lj8/n0$a;->d:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p3, Lj8/n0$a;->d:Z

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->x()Laa/h;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lj8/m0;->r(Ljava/util/List;Laa/h;Lj8/n0$a;)Ljava/util/List;

    move-result-object p1

    const-string v0, "renderItems"

    invoke-static {v1, v0, p1}, Ll8/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    const-string v3, "toRenderItems"

    invoke-virtual {v0, v3}, Ll8/d;->a(Ljava/lang/String;)V

    iget-boolean v0, p3, Lj8/n0$a;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->x()Laa/h;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lj8/m0;->J(Ljava/util/List;Laa/h;Lj8/n0$a;)Ljava/util/List;

    move-result-object p1

    const-string v0, "merged_renderItems"

    invoke-static {v1, v0, p1}, Ll8/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    const-string v1, "mergedRenderItems"

    invoke-virtual {v0, v1}, Ll8/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lj8/z0;

    invoke-direct {v0, p0, p3}, Lj8/z0;-><init>(Lorg/opencv/core/Mat;Lj8/n0$a;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    const-string v1, "calcBBox"

    invoke-virtual {v0, v1}, Ll8/d;->a(Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p3, Lj8/n0$a;->l:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lj8/a1;->i(Lorg/opencv/core/Mat;Ljava/util/List;)Lorg/opencv/core/Mat;

    invoke-static {p0, p0, v1}, Lorg/opencv/imgproc/Imgproc;->a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->d()I

    move-result p1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->v()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/opencv/android/Utils;->c(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object p0

    invoke-virtual {p0, v2}, Ll8/d;->c(Ljava/lang/String;)V

    return-object p1

    :cond_2
    invoke-static {p1, p2, p3}, Lj8/u;->o(Ljava/util/List;Landroid/content/Context;Lj8/n0$a;)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    const-string v3, "calcFontSize"

    invoke-virtual {v0, v3}, Ll8/d;->a(Ljava/lang/String;)V

    iget-boolean v0, p3, Lj8/n0$a;->f:Z

    if-eqz v0, :cond_3

    invoke-static {p0, p1, p3}, Lj8/u0;->g(Lorg/opencv/core/Mat;Ljava/util/List;Lj8/n0$a;)V

    goto :goto_2

    :cond_3
    invoke-static {p0, p1, p3}, Lj8/u0;->l(Lorg/opencv/core/Mat;Ljava/util/List;Lj8/n0$a;)V

    :goto_2
    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    const-string v3, "createBackground"

    invoke-virtual {v0, v3}, Ll8/d;->a(Ljava/lang/String;)V

    invoke-static {p1, p0, p3}, Lj8/a1;->n(Ljava/util/List;Lorg/opencv/core/Mat;Lj8/n0$a;)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    const-string v3, "findTextColor"

    invoke-virtual {v0, v3}, Ll8/d;->a(Ljava/lang/String;)V

    invoke-static {p1, p0, p2, p3}, Lj8/a1;->k(Ljava/util/List;Lorg/opencv/core/Mat;Landroid/content/Context;Lj8/n0$a;)Lorg/opencv/core/Mat;

    move-result-object p0

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object p1

    const-string p2, "render_item"

    invoke-virtual {p1, p2}, Ll8/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->d()I

    move-result p1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->v()I

    move-result p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-boolean p2, p3, Lj8/n0$a;->c:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto :goto_3

    :cond_4
    invoke-static {p0, p0, v1}, Lorg/opencv/imgproc/Imgproc;->a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    :goto_3
    invoke-static {p0, p1}, Lorg/opencv/android/Utils;->c(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object p0

    const-string p2, "matToBitmap"

    invoke-virtual {p0, p2}, Ll8/d;->a(Ljava/lang/String;)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object p0

    invoke-virtual {p0, v2}, Ll8/d;->c(Ljava/lang/String;)V

    return-object p1

    :cond_5
    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object p0

    const-string p1, "textrender_init"

    invoke-virtual {p0, p1}, Ll8/d;->c(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot render text! context is null!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lj8/a1;->b:Lorg/opencv/core/Mat;

    iget-object v1, p0, Lj8/a1;->a:Lj8/n0$a;

    invoke-static {v0, p2, p1, v1}, Lj8/a1;->u(Lorg/opencv/core/Mat;Ljava/util/List;Landroid/content/Context;Lj8/n0$a;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lj8/a1;->v()V

    return-object p1
.end method

.method public v()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lj8/a1;->a:Lj8/n0$a;

    iget-object v1, p0, Lj8/a1;->b:Lorg/opencv/core/Mat;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->u()V

    iput-object v0, p0, Lj8/a1;->b:Lorg/opencv/core/Mat;

    :cond_0
    return-void
.end method
