.class public abstract Lk8/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "k8.i"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static A(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Laa/h;)V
    .locals 10

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->v()I

    move-result v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->d()I

    move-result v1

    new-instance v2, Laa/d;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Laa/d;-><init>(DD)V

    new-instance v5, Laa/d;

    int-to-double v6, v1

    invoke-direct {v5, v6, v7, v3, v4}, Laa/d;-><init>(DD)V

    new-instance v1, Laa/d;

    int-to-double v8, v0

    invoke-direct {v1, v6, v7, v8, v9}, Laa/d;-><init>(DD)V

    new-instance v0, Laa/d;

    invoke-direct {v0, v3, v4, v8, v9}, Laa/d;-><init>(DD)V

    filled-new-array {v2, v5, v1, v0}, [Laa/d;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lk8/i;->y(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Laa/h;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Laa/c;
    .locals 0

    invoke-static {p0}, Lk8/i;->h(Ljava/util/List;)Laa/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b([BI)D
    .locals 0

    invoke-static {p0, p1}, Lk8/i;->j([BI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic c([BIIILaa/e;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lk8/i;->i([BIIILaa/e;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/nio/ByteBuffer;Lorg/opencv/core/Mat;)Ljava/nio/ByteBuffer;
    .locals 5

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    invoke-static {v0}, Laa/a;->j(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lk8/i;->m(Lorg/opencv/core/Mat;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-static {p0, v0}, Ll8/b;->b(Ljava/nio/ByteBuffer;[F)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Mat data type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->z()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {p1}, Lk8/i;->r(Lorg/opencv/core/Mat;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-static {p1}, Lk8/i;->t(Lorg/opencv/core/Mat;)[S

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lk8/i;->m(Lorg/opencv/core/Mat;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {p0, v0}, Ll8/b;->a(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    invoke-static {v0}, Laa/a;->j(I)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->y()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->j()J

    move-result-wide v3

    mul-long/2addr v1, v3

    long-to-int p1, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_4
    return-object p0
.end method

.method public static e(Lorg/opencv/core/Mat;Ljava/util/List;Laa/g;I)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lk8/f;

    invoke-direct {v0}, Lk8/f;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Lorg/opencv/imgproc/Imgproc;->g(Lorg/opencv/core/Mat;Ljava/util/List;ZLaa/g;I)V

    return-void
.end method

.method public static f(Lorg/opencv/core/Mat;Ljava/util/List;I)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->d()I

    move-result v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->a()I

    move-result v1

    invoke-static {p0}, Lk8/i;->m(Lorg/opencv/core/Mat;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lk8/g;

    invoke-direct {v2, p0, v0, v1, p2}, Lk8/g;-><init>([BIII)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static g([BIILaa/e;I)[[D
    .locals 7

    iget v0, p3, Laa/e;->c:I

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x1

    iget v1, p3, Laa/e;->f:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    new-array v0, v0, [[D

    iget v1, p3, Laa/e;->b:I

    const/4 v2, 0x0

    :goto_0
    iget v3, p3, Laa/e;->b:I

    iget v4, p3, Laa/e;->f:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_1

    iget v3, p3, Laa/e;->a:I

    :goto_1
    iget v4, p3, Laa/e;->a:I

    iget v5, p3, Laa/e;->c:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    mul-int v4, v1, p1

    mul-int/2addr v4, p2

    mul-int v5, v3, p2

    add-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v4, 0x3

    invoke-static {v4, v6}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v6, Lk8/h;

    invoke-direct {v6, p0}, Lk8/h;-><init>([B)V

    invoke-interface {v4, v6}, Ljava/util/stream/IntStream;->mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v4

    aput-object v4, v0, v2

    add-int/2addr v3, p4

    move v2, v5

    goto :goto_1

    :cond_0
    add-int/2addr v1, p4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static synthetic h(Ljava/util/List;)Laa/c;
    .locals 0

    invoke-static {p0}, Lk8/i;->s(Ljava/util/List;)Laa/c;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic i([BIIILaa/e;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1, p2, p4, p3}, Lk8/i;->g([BIILaa/e;I)[[D

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic j([BI)D
    .locals 0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-double p0, p0

    return-wide p0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Mat;)V
    .locals 3

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->y()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s: %s %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ll8/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ll8/c;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ll8/c;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->z()I

    move-result v2

    invoke-static {v2}, Laa/a;->l(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s/%s_%d_%d_%s.raw"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lk8/i;->l(Lorg/opencv/core/Mat;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static l(Lorg/opencv/core/Mat;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lk8/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRaw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ll8/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {p0}, [Lorg/opencv/core/Mat;

    move-result-object p0

    invoke-static {p0}, Lk8/i;->o([Lorg/opencv/core/Mat;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0, p1}, Ll8/b;->c(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Lorg/opencv/core/Mat;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    invoke-static {v0}, Laa/a;->j(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lk8/i;->p(Lorg/opencv/core/Mat;)[D

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Mat data type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lk8/i;->q(Lorg/opencv/core/Mat;)[F

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lk8/i;->r(Lorg/opencv/core/Mat;)[I

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lk8/i;->t(Lorg/opencv/core/Mat;)[S

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lk8/i;->n(Lorg/opencv/core/Mat;)[B

    move-result-object p0

    return-object p0
.end method

.method public static n(Lorg/opencv/core/Mat;)[B
    .locals 4

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->y()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->a()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lorg/opencv/core/Mat;->k(II[B)I

    return-object v0
.end method

.method public static varargs o([Lorg/opencv/core/Mat;)Ljava/nio/ByteBuffer;
    .locals 5

    array-length v0, p0

    int-to-long v0, v0

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->y()J

    move-result-wide v3

    mul-long/2addr v0, v3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->j()J

    move-result-wide v3

    mul-long/2addr v0, v3

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v0, v3}, Lk8/i;->d(Ljava/nio/ByteBuffer;Lorg/opencv/core/Mat;)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static p(Lorg/opencv/core/Mat;)[D
    .locals 4

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->y()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->a()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lorg/opencv/core/Mat;->l(II[D)I

    return-object v0
.end method

.method public static q(Lorg/opencv/core/Mat;)[F
    .locals 4

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->y()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->a()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lorg/opencv/core/Mat;->m(II[F)I

    return-object v0
.end method

.method public static r(Lorg/opencv/core/Mat;)[I
    .locals 4

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->y()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->a()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lorg/opencv/core/Mat;->n(II[I)I

    return-object v0
.end method

.method public static s(Ljava/util/List;)Laa/c;
    .locals 1

    new-instance v0, Laa/c;

    invoke-direct {v0}, Laa/c;-><init>()V

    invoke-virtual {v0, p0}, Laa/c;->D(Ljava/util/List;)V

    return-object v0
.end method

.method public static t(Lorg/opencv/core/Mat;)[S
    .locals 4

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->y()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->a()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [S

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lorg/opencv/core/Mat;->o(II[S)I

    return-object v0
.end method

.method public static u(Lorg/opencv/core/Mat;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    invoke-static {p0, v0, p1}, Lk8/i;->v(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;)V

    return-object v0
.end method

.method public static v(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lk8/i;->w(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;I)V

    return-void
.end method

.method public static w(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lk8/i;->x(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Laa/h;I)V

    return-void
.end method

.method public static x(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Laa/h;I)V
    .locals 10

    if-nez p3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Laa/d;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Laa/d;

    invoke-static {p3}, Lk8/e;->u([Laa/d;)Laa/h;

    move-result-object p3

    :cond_0
    const/16 v0, 0x10e

    const/16 v1, -0x5a

    if-ne p4, v0, :cond_1

    move p4, v1

    :cond_1
    const/16 v0, 0x5a

    if-eq p4, v0, :cond_2

    if-ne p4, v1, :cond_3

    :cond_2
    new-instance v0, Laa/h;

    iget-wide v1, p3, Laa/h;->b:D

    iget-wide v3, p3, Laa/h;->a:D

    invoke-direct {v0, v1, v2, v3, v4}, Laa/h;-><init>(DD)V

    move-object p3, v0

    :cond_3
    iget-wide v0, p3, Laa/h;->b:D

    double-to-int v0, v0

    iget-wide v1, p3, Laa/h;->a:D

    double-to-int v1, v1

    new-instance v2, Laa/d;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Laa/d;-><init>(DD)V

    new-instance v5, Laa/d;

    int-to-double v6, v1

    invoke-direct {v5, v6, v7, v3, v4}, Laa/d;-><init>(DD)V

    new-instance v1, Laa/d;

    int-to-double v8, v0

    invoke-direct {v1, v6, v7, v8, v9}, Laa/d;-><init>(DD)V

    new-instance v0, Laa/d;

    invoke-direct {v0, v3, v4, v8, v9}, Laa/d;-><init>(DD)V

    filled-new-array {v2, v5, v1, v0}, [Laa/d;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p4}, Lk8/e;->w(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p3}, Lk8/i;->y(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Laa/h;)V

    return-void
.end method

.method public static y(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Laa/h;)V
    .locals 1

    new-instance v0, Laa/b;

    invoke-direct {v0}, Laa/b;-><init>()V

    invoke-virtual {v0, p2}, Laa/b;->D(Ljava/util/List;)V

    new-instance p2, Laa/b;

    invoke-direct {p2}, Laa/b;-><init>()V

    invoke-virtual {p2, p3}, Laa/b;->D(Ljava/util/List;)V

    invoke-static {v0, p2}, Lorg/opencv/imgproc/Imgproc;->c(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;

    move-result-object p2

    invoke-static {p0, p1, p2, p4}, Lorg/opencv/imgproc/Imgproc;->j(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Laa/h;)V

    return-void
.end method

.method public static z(Lorg/opencv/core/Mat;Ljava/util/List;Laa/h;)Lorg/opencv/core/Mat;
    .locals 1

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lk8/i;->A(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Laa/h;)V

    return-object v0
.end method
