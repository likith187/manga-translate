.class public Li1/i;
.super Li1/a;
.source "SourceFile"


# instance fields
.field private final A:Lj1/a;

.field private B:Lj1/q;

.field private final r:Ljava/lang/String;

.field private final s:Z

.field private final t:Landroidx/collection/f;

.field private final u:Landroidx/collection/f;

.field private final v:Landroid/graphics/RectF;

.field private final w:Ln1/g;

.field private final x:I

.field private final y:Lj1/a;

.field private final z:Lj1/a;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/f;)V
    .locals 11

    invoke-virtual {p3}, Ln1/f;->b()Ln1/s$b;

    move-result-object v0

    invoke-virtual {v0}, Ln1/s$b;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Ln1/f;->g()Ln1/s$c;

    move-result-object v0

    invoke-virtual {v0}, Ln1/s$c;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Ln1/f;->i()F

    move-result v6

    invoke-virtual {p3}, Ln1/f;->k()Lm1/d;

    move-result-object v7

    invoke-virtual {p3}, Ln1/f;->m()Lm1/b;

    move-result-object v8

    invoke-virtual {p3}, Ln1/f;->h()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Ln1/f;->c()Lm1/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Li1/a;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLm1/d;Lm1/b;Ljava/util/List;Lm1/b;)V

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Li1/i;->t:Landroidx/collection/f;

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Li1/i;->u:Landroidx/collection/f;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Li1/i;->v:Landroid/graphics/RectF;

    invoke-virtual {p3}, Ln1/f;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li1/i;->r:Ljava/lang/String;

    invoke-virtual {p3}, Ln1/f;->f()Ln1/g;

    move-result-object v0

    iput-object v0, p0, Li1/i;->w:Ln1/g;

    invoke-virtual {p3}, Ln1/f;->n()Z

    move-result v0

    iput-boolean v0, p0, Li1/i;->s:Z

    invoke-virtual {p1}, Lcom/airbnb/lottie/i0;->L()Lcom/airbnb/lottie/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->d()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Li1/i;->x:I

    invoke-virtual {p3}, Ln1/f;->e()Lm1/c;

    move-result-object p1

    invoke-virtual {p1}, Lm1/c;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/i;->y:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p3}, Ln1/f;->l()Lm1/f;

    move-result-object p1

    invoke-virtual {p1}, Lm1/f;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/i;->z:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p3}, Ln1/f;->d()Lm1/f;

    move-result-object p1

    invoke-virtual {p1}, Lm1/f;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/i;->A:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    return-void
.end method

.method private k([I)[I
    .locals 3

    iget-object p0, p0, Li1/i;->B:Lj1/q;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj1/q;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p0

    new-array p1, p1, [I

    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private l()I
    .locals 3

    iget-object v0, p0, Li1/i;->z:Lj1/a;

    invoke-virtual {v0}, Lj1/a;->f()F

    move-result v0

    iget v1, p0, Li1/i;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Li1/i;->A:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->f()F

    move-result v1

    iget v2, p0, Li1/i;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Li1/i;->y:Lj1/a;

    invoke-virtual {v2}, Lj1/a;->f()F

    move-result v2

    iget p0, p0, Li1/i;->x:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_0

    const/16 v2, 0x20f

    mul-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, v1

    :cond_1
    if-eqz p0, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, p0

    :cond_2
    return v2
.end method

.method private m()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Li1/i;->l()I

    move-result v0

    iget-object v1, p0, Li1/i;->t:Landroidx/collection/f;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Li1/i;->z:Lj1/a;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Li1/i;->A:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Li1/i;->y:Lj1/a;

    invoke-virtual {v4}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln1/d;

    invoke-virtual {v4}, Ln1/d;->d()[I

    move-result-object v5

    invoke-direct {p0, v5}, Li1/i;->k([I)[I

    move-result-object v11

    invoke-virtual {v4}, Ln1/d;->e()[F

    move-result-object v12

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Li1/i;->t:Landroidx/collection/f;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/f;->i(JLjava/lang/Object;)V

    return-object v0
.end method

.method private n()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Li1/i;->l()I

    move-result v0

    iget-object v1, p0, Li1/i;->u:Landroidx/collection/f;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Li1/i;->z:Lj1/a;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Li1/i;->A:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Li1/i;->y:Lj1/a;

    invoke-virtual {v4}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln1/d;

    invoke-virtual {v4}, Ln1/d;->d()[I

    move-result-object v5

    invoke-direct {p0, v5}, Li1/i;->k([I)[I

    move-result-object v10

    invoke-virtual {v4}, Ln1/d;->e()[F

    move-result-object v11

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Li1/i;->u:Landroidx/collection/f;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/f;->i(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Li1/i;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li1/i;->v:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Li1/a;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Li1/i;->w:Ln1/g;

    sget-object v1, Ln1/g;->LINEAR:Ln1/g;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Li1/i;->m()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Li1/i;->n()Landroid/graphics/RadialGradient;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Li1/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super {p0, p1, p2, p3}, Li1/a;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li1/i;->r:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Ls1/c;)V
    .locals 1

    invoke-super {p0, p1, p2}, Li1/a;->h(Ljava/lang/Object;Ls1/c;)V

    sget-object v0, Lcom/airbnb/lottie/m0;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Li1/i;->B:Lj1/q;

    if-eqz p1, :cond_0

    iget-object v0, p0, Li1/a;->f:Lo1/b;

    invoke-virtual {v0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Li1/i;->B:Lj1/q;

    goto :goto_0

    :cond_1
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Li1/i;->B:Lj1/q;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Li1/a;->f:Lo1/b;

    iget-object p0, p0, Li1/i;->B:Lj1/q;

    invoke-virtual {p1, p0}, Lo1/b;->j(Lj1/a;)V

    :cond_2
    :goto_0
    return-void
.end method
