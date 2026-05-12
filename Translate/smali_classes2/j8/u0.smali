.class abstract Lj8/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "j8.u0"

.field private static b:Lorg/opencv/core/Mat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Laa/h;

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-direct {v0, v1, v2, v1, v2}, Laa/h;-><init>(DD)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/opencv/imgproc/Imgproc;->d(ILaa/h;)Lorg/opencv/core/Mat;

    move-result-object v0

    sput-object v0, Lj8/u0;->b:Lorg/opencv/core/Mat;

    return-void
.end method

.method public static synthetic a(Ll8/f$a;Lj8/m0;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lj8/u0;->r(Ll8/f$a;Lj8/m0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lj8/m0;)Z
    .locals 0

    invoke-static {p0}, Lj8/u0;->p(Lj8/m0;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/opencv/core/Mat;Ljava/util/List;II)Ljava/util/stream/IntStream;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj8/u0;->t(Lorg/opencv/core/Mat;Ljava/util/List;II)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/List;)Laa/c;
    .locals 0

    invoke-static {p0}, Lj8/u0;->s(Ljava/util/List;)Laa/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/opencv/core/Mat;Ll8/f$a;Lj8/n0$a;Lj8/m0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj8/u0;->q(Lorg/opencv/core/Mat;Ll8/f$a;Lj8/n0$a;Lj8/m0;)V

    return-void
.end method

.method public static synthetic f(I[BI)I
    .locals 0

    invoke-static {p0, p1, p2}, Lj8/u0;->u(I[BI)I

    move-result p0

    return p0
.end method

.method public static g(Lorg/opencv/core/Mat;Ljava/util/List;Lj8/n0$a;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lj8/p0;

    invoke-direct {v0}, Lj8/p0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p2}, Lj8/u0;->h(Lorg/opencv/core/Mat;Lj8/n0$a;)Ll8/f$a;

    move-result-object v0

    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    new-instance v2, Laa/h;

    invoke-virtual {v0}, Ll8/f$a;->c()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0}, Ll8/f$a;->c()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Laa/h;-><init>(DD)V

    invoke-static {p0, v1, v2}, Lorg/opencv/imgproc/Imgproc;->h(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Laa/h;)V

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lj8/q0;

    invoke-direct {p1, v1, v0, p2}, Lj8/q0;-><init>(Lorg/opencv/core/Mat;Ll8/f$a;Lj8/n0$a;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->u()V

    :cond_0
    return-void
.end method

.method private static h(Lorg/opencv/core/Mat;Lj8/n0$a;)Ll8/f$a;
    .locals 9

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->d()I

    move-result v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->v()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double v1, p0

    iget-object p0, p1, Lj8/n0$a;->i:Lj8/c1;

    iget-wide v3, p0, Lj8/c1;->c:D

    mul-double v5, v3, v1

    iget-wide v7, p0, Lj8/c1;->d:D

    cmpl-double p1, v5, v7

    if-lez p1, :cond_0

    div-double v3, v7, v1

    :cond_0
    mul-double v5, v3, v1

    iget-wide p0, p0, Lj8/c1;->e:D

    cmpg-double v5, v5, p0

    if-gez v5, :cond_1

    div-double v3, p0, v1

    :cond_1
    new-instance p0, Ll8/f$a;

    invoke-direct {p0, v0, v3, v4}, Ll8/f$a;-><init>(Landroid/util/Size;D)V

    return-object p0
.end method

.method private static i(Lj8/m0;II)V
    .locals 3

    iget-object v0, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->d()I

    move-result v0

    add-int/2addr p2, p1

    mul-int/lit8 v1, p2, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->v()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    sget-object v1, Lj8/u0;->a:Ljava/lang/String;

    const-string v2, "cleanBorder"

    invoke-virtual {v0, v2, v1}, Ll8/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj8/m0;->i:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-static {v0, p1}, Lj8/u0;->n(Lorg/opencv/core/Mat;I)[I

    move-result-object p1

    iput-object p1, p0, Lj8/m0;->i:[I

    :cond_1
    iget-object p1, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    iget-object v0, p0, Lj8/m0;->i:[I

    invoke-static {p1, p2, v0}, Lj8/u0;->j(Lorg/opencv/core/Mat;I[I)Lorg/opencv/core/Mat;

    move-result-object p1

    iput-object p1, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object p0

    invoke-virtual {p0, v2}, Ll8/d;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static j(Lorg/opencv/core/Mat;I[I)Lorg/opencv/core/Mat;
    .locals 16

    move/from16 v0, p1

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x1

    aget v4, p2, v3

    add-int/2addr v2, v4

    const/4 v4, 0x2

    aget v5, p2, v4

    add-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lorg/opencv/core/Mat;->v()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/opencv/core/Mat;->d()I

    move-result v6

    invoke-static/range {p0 .. p0}, Lk8/i;->m(Lorg/opencv/core/Mat;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    new-instance v8, Laa/e;

    invoke-direct {v8, v1, v1, v6, v0}, Laa/e;-><init>(IIII)V

    new-instance v9, Laa/e;

    sub-int v10, v5, v0

    invoke-direct {v9, v1, v10, v6, v0}, Laa/e;-><init>(IIII)V

    new-instance v10, Laa/e;

    mul-int/lit8 v11, v0, 0x2

    sub-int v11, v5, v11

    invoke-direct {v10, v1, v0, v0, v11}, Laa/e;-><init>(IIII)V

    new-instance v12, Laa/e;

    sub-int v13, v6, v0

    invoke-direct {v12, v13, v0, v0, v11}, Laa/e;-><init>(IIII)V

    filled-new-array {v8, v9, v10, v12}, [Laa/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laa/e;

    iget v9, v8, Laa/e;->b:I

    :goto_0
    iget v10, v8, Laa/e;->b:I

    iget v11, v8, Laa/e;->f:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_0

    iget v10, v8, Laa/e;->a:I

    :goto_1
    iget v11, v8, Laa/e;->a:I

    iget v12, v8, Laa/e;->c:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_2

    mul-int v11, v9, v6

    mul-int/lit8 v11, v11, 0x3

    mul-int/lit8 v12, v10, 0x3

    add-int/2addr v11, v12

    aget-byte v12, v7, v11

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v11, 0x1

    aget-byte v14, v7, v13

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v12, v14

    add-int/lit8 v14, v11, 0x2

    aget-byte v15, v7, v14

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v12, v15

    sub-int/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/16 v15, 0x1e

    if-le v12, v15, :cond_1

    aget v12, p2, v1

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    aget v11, p2, v3

    int-to-byte v11, v11

    aput-byte v11, v7, v13

    aget v11, p2, v4

    int-to-byte v11, v11

    aput-byte v11, v7, v14

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/opencv/core/Mat;

    sget v2, Laa/a;->c:I

    invoke-direct {v0, v5, v6, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-virtual {v0, v1, v1, v7}, Lorg/opencv/core/Mat;->r(II[B)I

    return-object v0
.end method

.method private static k(BBB)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0xb

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 p1, p1, 0x2

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shr-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static l(Lorg/opencv/core/Mat;Ljava/util/List;Lj8/n0$a;)V
    .locals 7

    invoke-static {p0, p2}, Lj8/u0;->h(Lorg/opencv/core/Mat;Lj8/n0$a;)Ll8/f$a;

    move-result-object v0

    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    new-instance v2, Laa/h;

    invoke-virtual {v0}, Ll8/f$a;->c()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0}, Ll8/f$a;->c()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Laa/h;-><init>(DD)V

    invoke-static {p0, v1, v2}, Lorg/opencv/imgproc/Imgproc;->h(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Laa/h;)V

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lj8/o0;

    invoke-direct {v2, v0}, Lj8/o0;-><init>(Ll8/f$a;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iget-object v2, p2, Lj8/n0$a;->i:Lj8/c1;

    iget v2, v2, Lj8/c1;->b:I

    int-to-double v2, v2

    iget-wide v4, v0, Ll8/f$a;->a:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    move v0, v2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj8/m0;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v1, v4}, Lk8/i;->u(Lorg/opencv/core/Mat;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v4

    iput-object v4, v3, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-static {v3, v2, v0, p2}, Lj8/u0;->v(Lj8/m0;IILj8/n0$a;)V

    iget-object v4, v3, Lj8/m0;->g:Lorg/opencv/core/Mat;

    iget-object v3, v3, Lj8/m0;->f:Lj8/m0$a;

    iget-object v3, v3, Lj8/m0$a;->c:Ljava/util/List;

    invoke-static {v3}, Lk8/e;->t(Ljava/util/List;)Laa/h;

    move-result-object v3

    invoke-static {v4, v4, v3}, Lorg/opencv/imgproc/Imgproc;->h(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Laa/h;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->u()V

    return-void
.end method

.method private static m(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 10

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object v0

    sget-object v1, Lj8/u0;->a:Ljava/lang/String;

    const-string v2, "eraseText"

    invoke-virtual {v0, v2, v1}, Ll8/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->x()Laa/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->A(Laa/h;I)Lorg/opencv/core/Mat;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lj8/r0;

    invoke-direct {v3}, Lj8/r0;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v3, Laa/g;

    const-wide v4, 0x406fe00000000000L    # 255.0

    invoke-direct {v3, v4, v5}, Laa/g;-><init>(D)V

    invoke-static {v0, p1, v3}, Lorg/opencv/imgproc/Imgproc;->b(Lorg/opencv/core/Mat;Ljava/util/List;Laa/g;)V

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->x()Laa/h;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/opencv/core/Mat;->A(Laa/h;I)Lorg/opencv/core/Mat;

    move-result-object p1

    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->a()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const/16 v4, 0xa

    invoke-static {p0, v3, v4}, Lorg/opencv/imgproc/Imgproc;->a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    invoke-static {p0, v3, v4}, Lorg/opencv/imgproc/Imgproc;->a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    :goto_0
    sget-object v4, Lj8/u0;->b:Lorg/opencv/core/Mat;

    invoke-static {v3, p1, v5, v4}, Lorg/opencv/imgproc/Imgproc;->f(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)V

    const-wide v7, 0x406fe00000000000L    # 255.0

    const/4 v9, 0x0

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    move-object v3, p1

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lorg/opencv/imgproc/Imgproc;->i(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)D

    invoke-static {v0, p1, v0}, Lorg/opencv/core/Core;->a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V

    const-wide/16 v5, 0x0

    move-object v3, v0

    move-object v4, v0

    invoke-static/range {v3 .. v9}, Lorg/opencv/imgproc/Imgproc;->i(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)D

    invoke-virtual {v0, v0, v1}, Lorg/opencv/core/Mat;->e(Lorg/opencv/core/Mat;I)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object p1

    const-string v1, "prepare"

    invoke-virtual {p1, v1}, Ll8/d;->a(Ljava/lang/String;)V

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p0

    invoke-static/range {v3 .. v8}, Lorg/opencv/photo/Photo;->a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DI)V

    invoke-static {}, Ll8/d;->d()Ll8/d;

    move-result-object p0

    invoke-virtual {p0, v2}, Ll8/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static n(Lorg/opencv/core/Mat;I)[I
    .locals 8

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->d()I

    move-result v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->v()I

    move-result v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->a()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    if-le v0, v3, :cond_0

    new-instance v5, Laa/e;

    invoke-direct {v5, v4, v4, v0, p1}, Laa/e;-><init>(IIII)V

    new-instance v6, Laa/e;

    sub-int v7, v1, p1

    invoke-direct {v6, v4, v7, v0, p1}, Laa/e;-><init>(IIII)V

    new-instance v7, Laa/e;

    sub-int/2addr v1, v3

    invoke-direct {v7, v4, p1, p1, v1}, Laa/e;-><init>(IIII)V

    new-instance v3, Laa/e;

    sub-int/2addr v0, p1

    invoke-direct {v3, v0, p1, p1, v1}, Laa/e;-><init>(IIII)V

    filled-new-array {v5, v6, v7, v3}, [Laa/e;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Laa/e;

    invoke-direct {p1, v4, v4, v0, v1}, Laa/e;-><init>(IIII)V

    filled-new-array {p1}, [Laa/e;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v4, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj8/s0;

    invoke-direct {v1, p0, p1, v2}, Lj8/s0;-><init>(Lorg/opencv/core/Mat;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    const/high16 p1, 0x10000

    new-array p1, p1, [I

    array-length v0, p0

    move v1, v4

    move v2, v1

    :goto_1
    if-ge v4, v0, :cond_2

    aget v3, p0, v4

    aget v5, p1, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v3

    if-le v5, v2, :cond_1

    move v1, v3

    move v2, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lj8/u0;->o(I)[I

    move-result-object p0

    return-object p0
.end method

.method private static o(I)[I
    .locals 2

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p0, 0x7e0

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x3

    filled-new-array {v0, v1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static synthetic p(Lj8/m0;)Z
    .locals 0

    iget-object p0, p0, Lj8/m0;->i:[I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic q(Lorg/opencv/core/Mat;Ll8/f$a;Lj8/n0$a;Lj8/m0;)V
    .locals 1

    iget-object v0, p3, Lj8/m0;->f:Lj8/m0$a;

    iget-object v0, v0, Lj8/m0$a;->c:Ljava/util/List;

    invoke-static {v0, p1}, Lk8/e;->z(Ljava/util/List;Ll8/f;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lk8/i;->u(Lorg/opencv/core/Mat;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object p0

    iget-object p1, p2, Lj8/n0$a;->i:Lj8/c1;

    iget p1, p1, Lj8/c1;->b:I

    invoke-static {p0, p1}, Lj8/u0;->n(Lorg/opencv/core/Mat;I)[I

    move-result-object p1

    iput-object p1, p3, Lj8/m0;->i:[I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->u()V

    return-void
.end method

.method private static synthetic r(Ll8/f$a;Lj8/m0;)Ljava/util/List;
    .locals 0

    iget-object p1, p1, Lj8/m0;->f:Lj8/m0$a;

    iget-object p1, p1, Lj8/m0$a;->c:Ljava/util/List;

    invoke-static {p1, p0}, Lk8/e;->z(Ljava/util/List;Ll8/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic s(Ljava/util/List;)Laa/c;
    .locals 1

    new-instance v0, Laa/c;

    invoke-direct {v0}, Laa/c;-><init>()V

    invoke-virtual {v0, p0}, Laa/c;->D(Ljava/util/List;)V

    return-object v0
.end method

.method private static synthetic t(Lorg/opencv/core/Mat;Ljava/util/List;II)Ljava/util/stream/IntStream;
    .locals 1

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laa/e;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Laa/e;)V

    invoke-static {v0}, Lk8/i;->n(Lorg/opencv/core/Mat;)[B

    move-result-object p0

    array-length p1, p0

    div-int/2addr p1, p2

    const/4 p3, 0x0

    invoke-static {p3, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance p3, Lj8/t0;

    invoke-direct {p3, p2, p0}, Lj8/t0;-><init>(I[B)V

    invoke-interface {p1, p3}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic u(I[BI)I
    .locals 1

    mul-int/2addr p2, p0

    aget-byte p0, p1, p2

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    invoke-static {p0, v0, p1}, Lj8/u0;->k(BBB)I

    move-result p0

    return p0
.end method

.method private static v(Lj8/m0;IILj8/n0$a;)V
    .locals 8

    iget-boolean p3, p3, Lj8/n0$a;->g:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    invoke-static {p0, p2, p3}, Lj8/u0;->i(Lj8/m0;II)V

    sget-object p3, Lj8/u0;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backgroundMat_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-static {p3, p1, v0}, Lk8/i;->k(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Mat;)V

    :cond_0
    iget-object p1, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    int-to-double v2, p2

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->d()I

    move-result p3

    sub-int/2addr p3, p2

    int-to-double v4, p3

    iget-object p0, p0, Lj8/m0;->g:Lorg/opencv/core/Mat;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->v()I

    move-result p0

    sub-int/2addr p0, p2

    int-to-double v6, p0

    move-wide v0, v2

    invoke-static/range {v0 .. v7}, Lk8/e;->v(DDDD)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/util/List;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lj8/u0;->m(Lorg/opencv/core/Mat;Ljava/util/List;)V

    return-void
.end method
