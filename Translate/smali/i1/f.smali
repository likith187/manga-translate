.class public Li1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/m;
.implements Lj1/a$b;
.implements Li1/k;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/airbnb/lottie/i0;

.field private final d:Lj1/a;

.field private final e:Lj1/a;

.field private final f:Ln1/b;

.field private final g:Li1/b;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Li1/f;->a:Landroid/graphics/Path;

    new-instance v0, Li1/b;

    invoke-direct {v0}, Li1/b;-><init>()V

    iput-object v0, p0, Li1/f;->g:Li1/b;

    invoke-virtual {p3}, Ln1/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li1/f;->b:Ljava/lang/String;

    iput-object p1, p0, Li1/f;->c:Lcom/airbnb/lottie/i0;

    invoke-virtual {p3}, Ln1/b;->d()Lm1/f;

    move-result-object p1

    invoke-virtual {p1}, Lm1/f;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/f;->d:Lj1/a;

    invoke-virtual {p3}, Ln1/b;->c()Lm1/m;

    move-result-object v0

    invoke-interface {v0}, Lm1/m;->a()Lj1/a;

    move-result-object v0

    iput-object v0, p0, Li1/f;->e:Lj1/a;

    iput-object p3, p0, Li1/f;->f:Ln1/b;

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p2, v0}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {v0, p0}, Lj1/a;->a(Lj1/a$b;)V

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li1/f;->h:Z

    iget-object p0, p0, Li1/f;->c:Lcom/airbnb/lottie/i0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Li1/f;->h:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Li1/f;->a:Landroid/graphics/Path;

    return-object v0

    :cond_0
    iget-object v1, v0, Li1/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Li1/f;->f:Ln1/b;

    invoke-virtual {v1}, Ln1/b;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Li1/f;->h:Z

    iget-object v0, v0, Li1/f;->a:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v1, v0, Li1/f;->d:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    const v4, 0x3f0d6239    # 0.55228f

    mul-float v12, v3, v4

    mul-float/2addr v4, v1

    iget-object v5, v0, Li1/f;->a:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, v0, Li1/f;->f:Ln1/b;

    invoke-virtual {v5}, Ln1/b;->f()Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v0, Li1/f;->a:Landroid/graphics/Path;

    neg-float v11, v1

    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v14, v0, Li1/f;->a:Landroid/graphics/Path;

    sub-float v8, v13, v12

    neg-float v6, v3

    sub-float v21, v13, v4

    const/16 v20, 0x0

    move v15, v8

    move/from16 v16, v11

    move/from16 v17, v6

    move/from16 v18, v21

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Li1/f;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v7, v4

    move v9, v1

    move v14, v11

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Li1/f;->a:Landroid/graphics/Path;

    add-float/2addr v12, v13

    const/4 v11, 0x0

    move v6, v12

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Li1/f;->a:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v21

    move v8, v12

    move v9, v14

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :cond_2
    iget-object v5, v0, Li1/f;->a:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Li1/f;->a:Landroid/graphics/Path;

    add-float v14, v12, v13

    sub-float v16, v13, v4

    const/4 v11, 0x0

    move v6, v14

    move v7, v15

    move v8, v3

    move/from16 v9, v16

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Li1/f;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v6, v3

    move v7, v4

    move v8, v14

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Li1/f;->a:Landroid/graphics/Path;

    sub-float v17, v13, v12

    neg-float v3, v3

    const/4 v11, 0x0

    move/from16 v6, v17

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v14, v0, Li1/f;->a:Landroid/graphics/Path;

    const/16 v19, 0x0

    move v1, v15

    move v15, v3

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_0
    iget-object v1, v0, Li1/f;->e:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v3, v0, Li1/f;->a:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Li1/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Li1/f;->g:Li1/b;

    iget-object v3, v0, Li1/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Li1/b;->b(Landroid/graphics/Path;)V

    iput-boolean v2, v0, Li1/f;->h:Z

    iget-object v0, v0, Li1/f;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Li1/f;->e()V

    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/c;

    instance-of v1, v0, Li1/u;

    if-eqz v1, :cond_0

    check-cast v0, Li1/u;

    invoke-virtual {v0}, Li1/u;->k()Ln1/t$a;

    move-result-object v1

    sget-object v2, Ln1/t$a;->SIMULTANEOUSLY:Ln1/t$a;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Li1/f;->g:Li1/b;

    invoke-virtual {v1, v0}, Li1/b;->a(Li1/u;)V

    invoke-virtual {v0, p0}, Li1/u;->e(Lj1/a$b;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Ll1/e;ILjava/util/List;Ll1/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lr1/i;->k(Ll1/e;ILjava/util/List;Ll1/e;Li1/k;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li1/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Ls1/c;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/m0;->k:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Li1/f;->d:Lj1/a;

    invoke-virtual {p0, p2}, Lj1/a;->o(Ls1/c;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/m0;->n:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Li1/f;->e:Lj1/a;

    invoke-virtual {p0, p2}, Lj1/a;->o(Ls1/c;)V

    :cond_1
    :goto_0
    return-void
.end method
