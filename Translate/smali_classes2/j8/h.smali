.class public abstract Lj8/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "j8.h"

.field private static b:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lj8/a;

    invoke-direct {v1}, Lj8/a;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lj8/h;->b:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic a(Lj8/h$a;Lj8/h$a;)I
    .locals 0

    invoke-static {p0, p1}, Lj8/h;->x(Lj8/h$a;Lj8/h$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic b([D[D)[D
    .locals 0

    invoke-static {p0, p1}, Lj8/h;->v([D[D)[D

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(D)I
    .locals 0

    invoke-static {p0, p1}, Lj8/h;->s(D)I

    move-result p0

    return p0
.end method

.method public static synthetic d(ID)D
    .locals 0

    invoke-static {p0, p1, p2}, Lj8/h;->t(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic e(ID)D
    .locals 0

    invoke-static {p0, p1, p2}, Lj8/h;->u(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic f(Ljava/util/List;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Lj8/h;->w(Ljava/util/List;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic g(D)I
    .locals 0

    invoke-static {p0, p1}, Lj8/h;->r(D)I

    move-result p0

    return p0
.end method

.method private static h(DDD)[D
    .locals 8

    const-wide v0, 0x3fd072b020c49ba6L    # 0.257

    mul-double/2addr v0, p4

    const-wide v2, 0x3fe020c49ba5e354L    # 0.504

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb916872b020c4aL    # 0.098

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide v2, -0x403d0e5604189375L    # -0.148

    mul-double/2addr v2, p4

    const-wide v4, 0x3fd29fbe76c8b439L    # 0.291

    mul-double/2addr v4, p2

    sub-double/2addr v2, v4

    const-wide v4, 0x3fdc189374bc6a7fL    # 0.439

    mul-double v6, p0, v4

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    add-double/2addr v2, v6

    mul-double/2addr p4, v4

    const-wide v4, 0x3fd78d4fdf3b645aL    # 0.368

    mul-double/2addr p2, v4

    sub-double/2addr p4, p2

    const-wide p2, 0x3fb22d0e56041893L    # 0.071

    mul-double/2addr p0, p2

    sub-double/2addr p4, p0

    add-double/2addr p4, v6

    const/4 p0, 0x3

    new-array p0, p0, [D

    const/4 p1, 0x0

    aput-wide v0, p0, p1

    const/4 p1, 0x1

    aput-wide v2, p0, p1

    const/4 p1, 0x2

    aput-wide p4, p0, p1

    return-object p0
.end method

.method private static i(DDD)[D
    .locals 8

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    sub-double/2addr p0, v0

    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    sub-double/2addr p2, v0

    sub-double/2addr p4, v0

    const-wide v0, 0x3ff29fbe76c8b439L    # 1.164

    mul-double/2addr p0, v0

    const-wide v0, 0x400022d0e5604189L    # 2.017

    mul-double/2addr v0, p2

    add-double/2addr v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide v6, 0x3fd916872b020c4aL    # 0.392

    mul-double/2addr p2, v6

    sub-double p2, p0, p2

    const-wide v6, 0x3fea04189374bc6aL    # 0.813

    mul-double/2addr v6, p4

    sub-double/2addr p2, v6

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    const-wide v6, 0x3ff989374bc6a7f0L    # 1.596

    mul-double/2addr p4, v6

    add-double/2addr p0, p4

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const/4 p4, 0x3

    new-array p4, p4, [D

    const/4 p5, 0x0

    aput-wide v0, p4, p5

    const/4 p5, 0x1

    aput-wide p2, p4, p5

    const/4 p2, 0x2

    aput-wide p0, p4, p2

    return-object p4
.end method

.method private static j([D[D)[D
    .locals 7

    array-length v0, p0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static k([I[ILorg/opencv/core/Mat;)[I
    .locals 16

    if-eqz p2, :cond_0

    invoke-static/range {p2 .. p2}, Lj8/h;->p(Lorg/opencv/core/Mat;)[D

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->asDoubleStream()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v8, 0x1

    aget-wide v4, v0, v8

    const/4 v9, 0x2

    aget-wide v6, v0, v9

    invoke-static/range {v2 .. v7}, Lj8/h;->h(DDD)[D

    move-result-object v0

    aget v2, p0, v1

    int-to-double v10, v2

    aget v2, p0, v8

    int-to-double v12, v2

    aget v2, p0, v9

    int-to-double v14, v2

    invoke-static/range {v10 .. v15}, Lj8/h;->h(DDD)[D

    move-result-object v2

    sget-object v3, Lj8/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustForegroundColor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v1

    aget-wide v10, v2, v1

    sub-double/2addr v5, v10

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v0, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v2, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-wide v3, v0, v1

    aget-wide v0, v2, v1

    sub-double/2addr v3, v0

    const-wide/16 v0, 0x0

    cmpl-double v5, v3, v0

    if-ltz v5, :cond_1

    :goto_1
    move-wide v10, v0

    goto :goto_2

    :cond_1
    const-wide v0, 0x406fe00000000000L    # 255.0

    goto :goto_1

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    cmpg-double v0, v0, v3

    if-gez v0, :cond_2

    aget-wide v12, v2, v8

    aget-wide v14, v2, v9

    invoke-static/range {v10 .. v15}, Lj8/h;->i(DDD)[D

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    move-result-object v0

    new-instance v1, Lj8/c;

    invoke-direct {v1}, Lj8/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/DoubleStream;->mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    :goto_3
    return-object v0
.end method

.method private static l([DDD)[D
    .locals 6

    array-length v0, p0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p0, v2

    cmpg-double v5, v3, p1

    if-gez v5, :cond_0

    aput-wide p1, v1, v2

    goto :goto_1

    :cond_0
    cmpl-double v5, v3, p3

    if-lez v5, :cond_1

    aput-wide p3, v1, v2

    goto :goto_1

    :cond_1
    aput-wide v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static m([DD)[D
    .locals 5

    array-length v0, p0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    div-double/2addr v3, p1

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static n(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;[IDDDI)[D
    .locals 29

    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lorg/opencv/core/Mat;->v()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/opencv/core/Mat;->d()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/opencv/core/Mat;->a()I

    move-result v6

    new-array v7, v6, [D

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/stream/IntStream;->asDoubleStream()Ljava/util/stream/DoubleStream;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object v9, v8

    :goto_0
    if-eqz p1, :cond_1

    new-array v10, v6, [D

    goto :goto_1

    :cond_1
    move-object v10, v8

    :goto_1
    invoke-static/range {p0 .. p0}, Lk8/i;->m(Lorg/opencv/core/Mat;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    if-eqz p1, :cond_2

    invoke-static/range {p1 .. p1}, Lk8/i;->m(Lorg/opencv/core/Mat;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    :cond_2
    int-to-double v12, v5

    mul-double v12, v12, p5

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    double-to-int v12, v12

    int-to-double v0, v4

    mul-double v0, v0, p5

    sub-double/2addr v0, v14

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, v4, v1

    mul-int/lit8 v16, v12, 0x2

    sub-int v16, v5, v16

    mul-int v1, v1, v16

    mul-int v16, p9, p9

    div-int v1, v1, v16

    int-to-double v13, v1

    mul-double v13, v13, p3

    double-to-int v13, v13

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v14, v0

    :goto_2
    sub-int v13, v4, v0

    if-ge v14, v13, :cond_8

    move v13, v12

    :goto_3
    sub-int v2, v5, v12

    if-ge v13, v2, :cond_7

    mul-int v2, v14, v5

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    mul-int/lit8 v18, v13, 0x3

    add-int v2, v2, v18

    aget-byte v3, v11, v2

    and-int/lit16 v3, v3, 0xff

    move/from16 v18, v4

    int-to-double v3, v3

    const/16 v17, 0x1

    add-int/lit8 v19, v2, 0x1

    move/from16 p5, v0

    aget-byte v0, v11, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v12

    move/from16 p6, v13

    int-to-double v12, v0

    const/4 v0, 0x2

    add-int/lit8 v21, v2, 0x2

    aget-byte v0, v11, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v1

    int-to-double v0, v0

    move/from16 v23, v5

    move-object/from16 v24, v9

    const/4 v5, 0x3

    new-array v9, v5, [D

    const/16 v25, 0x0

    aput-wide v3, v9, v25

    aput-wide v12, v9, v17

    const/4 v3, 0x2

    aput-wide v0, v9, v3

    if-eqz v8, :cond_3

    new-array v0, v5, [D

    aget-byte v1, v8, v2

    and-int/lit16 v1, v1, 0xff

    int-to-double v1, v1

    aput-wide v1, v0, v25

    move/from16 v12, p6

    aget-byte v1, v8, v19

    and-int/lit16 v1, v1, 0xff

    int-to-double v1, v1

    aput-wide v1, v0, v17

    aget-byte v1, v8, v21

    and-int/lit16 v1, v1, 0xff

    int-to-double v1, v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    goto :goto_4

    :cond_3
    move/from16 v12, p6

    move-object/from16 v0, v24

    :goto_4
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_5
    if-ge v1, v6, :cond_5

    aget-wide v4, v9, v1

    aget-wide v25, v0, v1

    sub-double v4, v4, v25

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    if-eqz v10, :cond_4

    aget-wide v4, v10, v1

    aget-wide v25, v0, v1

    add-double v4, v4, v25

    aput-wide v4, v10, v1

    :cond_4
    const/4 v4, 0x1

    add-int/2addr v1, v4

    goto :goto_5

    :cond_5
    sget-object v0, Lj8/h;->b:Ljava/util/Queue;

    new-instance v1, Lj8/h$a;

    invoke-direct {v1, v2, v3, v9}, Lj8/h$a;-><init>(D[D)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_6
    sget-object v0, Lj8/h;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v15, :cond_6

    sget-object v0, Lj8/h;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_6

    :cond_6
    add-int v0, v12, p9

    move v13, v0

    move/from16 v4, v18

    move/from16 v12, v20

    move/from16 v1, v22

    move/from16 v5, v23

    move-object/from16 v9, v24

    move/from16 v0, p5

    goto/16 :goto_3

    :cond_7
    move/from16 p5, v0

    move/from16 v22, v1

    move/from16 v18, v4

    move/from16 v23, v5

    move-object/from16 v24, v9

    move/from16 v20, v12

    add-int v14, v14, p9

    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_8
    move/from16 v22, v1

    move-object/from16 v24, v9

    sget-object v0, Lj8/h;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj8/h$a;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v6, :cond_9

    aget-wide v3, v7, v2

    iget-object v5, v1, Lj8/h$a;->b:[D

    aget-wide v8, v5, v2

    add-double/2addr v3, v8

    aput-wide v3, v7, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_7

    :cond_a
    sget-object v0, Lj8/h;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    invoke-static {v7}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    move-result-object v0

    new-instance v1, Lj8/d;

    invoke-direct {v1, v15}, Lj8/d;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/DoubleStream;->map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    if-eqz v10, :cond_b

    invoke-static {v10}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    move-result-object v1

    new-instance v2, Lj8/e;

    move/from16 v3, v22

    invoke-direct {v2, v3}, Lj8/e;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/DoubleStream;->map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v9

    goto :goto_8

    :cond_b
    move-object/from16 v9, v24

    :goto_8
    invoke-static {v0, v9}, Lj8/h;->q([D[D)D

    move-result-wide v1

    move-wide v2, v1

    move-object v4, v9

    move-object v1, v0

    const/4 v0, 0x0

    :goto_9
    const/16 v5, 0x64

    if-ge v0, v5, :cond_f

    cmpl-double v2, v2, p7

    if-ltz v2, :cond_c

    goto :goto_b

    :cond_c
    invoke-static {v1, v4}, Lj8/h;->z([D[D)[D

    move-result-object v2

    invoke-static {v1, v4}, Lj8/h;->q([D[D)D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lj8/h;->m([DD)[D

    move-result-object v2

    invoke-static {v1, v9}, Lj8/h;->q([D[D)D

    move-result-wide v3

    sub-double v3, p7, v3

    invoke-static {v2, v3, v4}, Lj8/h;->y([DD)[D

    move-result-object v2

    invoke-static {v1, v2}, Lj8/h;->j([D[D)[D

    move-result-object v2

    const-wide v3, 0x406fe00000000000L    # 255.0

    const-wide/16 v5, 0x0

    invoke-static {v2, v5, v6, v3, v4}, Lj8/h;->l([DDD)[D

    move-result-object v2

    invoke-static {v2, v9}, Lj8/h;->q([D[D)D

    move-result-wide v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v7

    if-eqz v7, :cond_e

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v10, p7, v7

    cmpl-double v1, v3, v10

    if-ltz v1, :cond_d

    move-object v1, v2

    goto :goto_b

    :cond_d
    const/4 v10, 0x3

    new-array v1, v10, [D

    const-wide v11, 0x405fc00000000000L    # 127.0

    const/4 v13, 0x0

    aput-wide v11, v1, v13

    const/4 v14, 0x1

    aput-wide v11, v1, v14

    const/4 v15, 0x2

    aput-wide v11, v1, v15

    move-object v2, v9

    goto :goto_a

    :cond_e
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x2

    move-object/from16 v27, v2

    move-object v2, v1

    move-object/from16 v1, v27

    :goto_a
    add-int/2addr v0, v14

    move-wide/from16 v27, v3

    move-object v4, v2

    move-wide/from16 v2, v27

    goto :goto_9

    :cond_f
    :goto_b
    return-object v1
.end method

.method public static o(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;[I)[I
    .locals 10

    const-wide v7, 0x405f400000000000L    # 125.0

    const/4 v9, 0x3

    const-wide v3, 0x3fb999999999999aL    # 0.1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lj8/h;->n(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;[IDDDI)[D

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    move-result-object p0

    new-instance p1, Lj8/b;

    invoke-direct {p1}, Lj8/b;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/DoubleStream;->mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method private static p(Lorg/opencv/core/Mat;)[D
    .locals 8

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->d()I

    move-result v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->v()I

    move-result v1

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xc

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v1, :cond_0

    const/16 v2, 0xa

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v6, v1

    mul-double/2addr v6, v4

    double-to-int v3, v6

    :cond_0
    new-instance v4, Laa/e;

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v4, v0, v1, v2, v3}, Laa/e;-><init>(IIII)V

    filled-new-array {v4}, [Laa/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lk8/i;->f(Lorg/opencv/core/Mat;Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj8/f;

    invoke-direct {v1}, Lj8/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    move-result-object v0

    new-instance v1, Lj8/g;

    invoke-direct {v1, p0}, Lj8/g;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/DoubleStream;->map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object p0

    return-object p0

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static q([D[D)D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double v7, v3, v5

    sub-double/2addr v3, v5

    mul-double/2addr v7, v3

    add-double/2addr v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic r(D)I
    .locals 0

    double-to-int p0, p0

    return p0
.end method

.method private static synthetic s(D)I
    .locals 0

    double-to-int p0, p0

    return p0
.end method

.method private static synthetic t(ID)D
    .locals 2

    int-to-double v0, p0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private static synthetic u(ID)D
    .locals 2

    int-to-double v0, p0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private static synthetic v([D[D)[D
    .locals 0

    invoke-static {p0, p1}, Lj8/h;->j([D[D)[D

    move-result-object p0

    return-object p0
.end method

.method private static synthetic w(Ljava/util/List;D)D
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-double v0, p0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private static synthetic x(Lj8/h$a;Lj8/h$a;)I
    .locals 2

    iget-wide v0, p0, Lj8/h$a;->a:D

    iget-wide p0, p1, Lj8/h$a;->a:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private static y([DD)[D
    .locals 5

    array-length v0, p0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    mul-double/2addr v3, p1

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static z([D[D)[D
    .locals 7

    array-length v0, p0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
