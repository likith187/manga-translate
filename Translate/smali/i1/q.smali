.class public Li1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/s;
.implements Lj1/a$b;


# instance fields
.field private final a:Lcom/airbnb/lottie/i0;

.field private final b:Ljava/lang/String;

.field private final c:Lj1/a;

.field private d:Ln1/o;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/q;->a:Lcom/airbnb/lottie/i0;

    invoke-virtual {p3}, Ln1/n;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li1/q;->b:Ljava/lang/String;

    invoke-virtual {p3}, Ln1/n;->b()Lm1/m;

    move-result-object p1

    invoke-interface {p1}, Lm1/m;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/q;->c:Lj1/a;

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    return-void
.end method

.method private static e(II)I
    .locals 2

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int/2addr p1, v0

    if-eq p1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private static g(II)I
    .locals 1

    invoke-static {p0, p1}, Li1/q;->e(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method private j(Ln1/o;)Ln1/o;
    .locals 10

    invoke-virtual {p1}, Ln1/o;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ln1/o;->d()Z

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ltz v2, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll1/a;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Li1/q;->g(II)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll1/a;

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ln1/o;->b()Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ll1/a;->c()Landroid/graphics/PointF;

    move-result-object v8

    :goto_1
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    move-object v7, v8

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Ll1/a;->b()Landroid/graphics/PointF;

    move-result-object v7

    :goto_2
    invoke-virtual {v6}, Ll1/a;->a()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {p1}, Ln1/o;->d()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    if-ne v2, v9, :cond_3

    :cond_2
    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v4

    :goto_3
    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v9, :cond_4

    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Li1/q;->d:Ln1/o;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ln1/o;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v5, :cond_8

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v4

    :goto_5
    if-ge v0, v5, :cond_7

    new-instance v2, Ll1/a;

    invoke-direct {v2}, Ll1/a;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    new-instance v0, Ln1/o;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v2, v4, p1}, Ln1/o;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    iput-object v0, p0, Li1/q;->d:Ln1/o;

    :cond_8
    iget-object p1, p0, Li1/q;->d:Ln1/o;

    invoke-virtual {p1, v1}, Ln1/o;->e(Z)V

    iget-object p0, p0, Li1/q;->d:Ln1/o;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 0

    iget-object p0, p0, Li1/q;->a:Lcom/airbnb/lottie/i0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public h()Lj1/a;
    .locals 0

    iget-object p0, p0, Li1/q;->c:Lj1/a;

    return-object p0
.end method

.method public i(Ln1/o;)Ln1/o;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ln1/o;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    return-object p1

    :cond_0
    move-object/from16 v1, p0

    iget-object v2, v1, Li1/q;->c:Lj1/a;

    invoke-virtual {v2}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    return-object p1

    :cond_1
    invoke-direct/range {p0 .. p1}, Li1/q;->j(Ln1/o;)Ln1/o;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ln1/o;->b()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p1 .. p1}, Ln1/o;->b()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Ln1/o;->f(FF)V

    invoke-virtual {v1}, Ln1/o;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ln1/o;->d()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ll1/a;

    add-int/lit8 v9, v6, -0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Li1/q;->g(II)I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ll1/a;

    add-int/lit8 v10, v6, -0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Li1/q;->g(II)I

    move-result v10

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ll1/a;

    if-nez v6, :cond_2

    if-nez v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Ln1/o;->b()Landroid/graphics/PointF;

    move-result-object v11

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ll1/a;->c()Landroid/graphics/PointF;

    move-result-object v11

    :goto_1
    if-nez v6, :cond_3

    if-nez v4, :cond_3

    move-object v12, v11

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Ll1/a;->b()Landroid/graphics/PointF;

    move-result-object v12

    :goto_2
    invoke-virtual {v8}, Ll1/a;->a()Landroid/graphics/PointF;

    move-result-object v13

    invoke-virtual {v10}, Ll1/a;->c()Landroid/graphics/PointF;

    move-result-object v10

    invoke-virtual {v8}, Ll1/a;->c()Landroid/graphics/PointF;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ln1/o;->d()Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    if-ne v6, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :cond_5
    :goto_3
    invoke-virtual {v12, v11}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v13, v11}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v15, :cond_7

    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v8, v10, Landroid/graphics/PointF;->x:F

    sub-float v8, v5, v8

    iget v9, v11, Landroid/graphics/PointF;->y:F

    iget v12, v10, Landroid/graphics/PointF;->y:F

    sub-float v12, v9, v12

    iget v13, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v5

    iget v5, v14, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v9

    float-to-double v8, v8

    move-object v15, v0

    move-object/from16 v16, v1

    float-to-double v0, v12

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v8, v13

    float-to-double v12, v5

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v1, v8

    div-float v0, v2, v0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v1, v2, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v8, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v5

    mul-float/2addr v8, v0

    add-float/2addr v8, v5

    iget v9, v11, Landroid/graphics/PointF;->y:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v9

    mul-float/2addr v10, v0

    add-float/2addr v10, v9

    iget v0, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v5

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    iget v11, v14, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v9

    mul-float/2addr v11, v1

    add-float/2addr v11, v9

    sub-float v1, v8, v5

    const v12, 0x3f0d4952    # 0.5519f

    mul-float/2addr v1, v12

    sub-float v1, v8, v1

    sub-float v13, v10, v9

    mul-float/2addr v13, v12

    sub-float v13, v10, v13

    sub-float v5, v0, v5

    mul-float/2addr v5, v12

    sub-float v5, v0, v5

    sub-float v9, v11, v9

    mul-float/2addr v9, v12

    sub-float v9, v11, v9

    add-int/lit8 v12, v7, -0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v12, v14}, Li1/q;->g(II)I

    move-result v12

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ll1/a;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ll1/a;

    invoke-virtual {v12, v8, v10}, Ll1/a;->e(FF)V

    invoke-virtual {v12, v8, v10}, Ll1/a;->f(FF)V

    move-object/from16 v12, v16

    if-nez v6, :cond_6

    invoke-virtual {v12, v8, v10}, Ln1/o;->f(FF)V

    :cond_6
    invoke-virtual {v14, v1, v13}, Ll1/a;->d(FF)V

    add-int/lit8 v1, v7, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/a;

    invoke-virtual {v14, v5, v9}, Ll1/a;->e(FF)V

    invoke-virtual {v14, v0, v11}, Ll1/a;->f(FF)V

    invoke-virtual {v1, v0, v11}, Ll1/a;->d(FF)V

    add-int/lit8 v7, v7, 0x2

    goto :goto_4

    :cond_7
    move-object v15, v0

    move-object v12, v1

    add-int/lit8 v0, v7, -0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Li1/q;->g(II)I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/a;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/a;

    invoke-virtual {v9}, Ll1/a;->b()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Ll1/a;->b()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v10}, Ll1/a;->e(FF)V

    invoke-virtual {v9}, Ll1/a;->c()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Ll1/a;->c()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v9}, Ll1/a;->f(FF)V

    invoke-virtual {v8}, Ll1/a;->a()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v8}, Ll1/a;->a()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v5}, Ll1/a;->d(FF)V

    add-int/lit8 v7, v7, 0x1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object v1, v12

    move-object v0, v15

    goto/16 :goto_0

    :cond_8
    move-object v12, v1

    return-object v12
.end method
