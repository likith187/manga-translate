.class public Li1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/e;
.implements Lj1/a$b;
.implements Li1/k;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lo1/b;

.field private final d:Landroidx/collection/f;

.field private final e:Landroidx/collection/f;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Ljava/util/List;

.field private final j:Ln1/g;

.field private final k:Lj1/a;

.field private final l:Lj1/a;

.field private final m:Lj1/a;

.field private final n:Lj1/a;

.field private o:Lj1/a;

.field private p:Lj1/q;

.field private final q:Lcom/airbnb/lottie/i0;

.field private final r:I

.field private s:Lj1/a;

.field t:F

.field private u:Lj1/c;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;Ln1/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Li1/h;->d:Landroidx/collection/f;

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Li1/h;->e:Landroidx/collection/f;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Li1/h;->f:Landroid/graphics/Path;

    new-instance v1, Lh1/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lh1/a;-><init>(I)V

    iput-object v1, p0, Li1/h;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Li1/h;->h:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Li1/h;->i:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Li1/h;->t:F

    iput-object p3, p0, Li1/h;->c:Lo1/b;

    invoke-virtual {p4}, Ln1/e;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Li1/h;->a:Ljava/lang/String;

    invoke-virtual {p4}, Ln1/e;->i()Z

    move-result v1

    iput-boolean v1, p0, Li1/h;->b:Z

    iput-object p1, p0, Li1/h;->q:Lcom/airbnb/lottie/i0;

    invoke-virtual {p4}, Ln1/e;->e()Ln1/g;

    move-result-object p1

    iput-object p1, p0, Li1/h;->j:Ln1/g;

    invoke-virtual {p4}, Ln1/e;->c()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2}, Lcom/airbnb/lottie/j;->d()F

    move-result p1

    const/high16 p2, 0x42000000    # 32.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Li1/h;->r:I

    invoke-virtual {p4}, Ln1/e;->d()Lm1/c;

    move-result-object p1

    invoke-virtual {p1}, Lm1/c;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/h;->k:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p3, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p4}, Ln1/e;->g()Lm1/d;

    move-result-object p1

    invoke-virtual {p1}, Lm1/d;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/h;->l:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p3, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p4}, Ln1/e;->h()Lm1/f;

    move-result-object p1

    invoke-virtual {p1}, Lm1/f;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/h;->m:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p3, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p4}, Ln1/e;->b()Lm1/f;

    move-result-object p1

    invoke-virtual {p1}, Lm1/f;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/h;->n:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p3, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p3}, Lo1/b;->x()Ln1/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lo1/b;->x()Ln1/a;

    move-result-object p1

    invoke-virtual {p1}, Ln1/a;->a()Lm1/b;

    move-result-object p1

    invoke-virtual {p1}, Lm1/b;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/h;->s:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Li1/h;->s:Lj1/a;

    invoke-virtual {p3, p1}, Lo1/b;->j(Lj1/a;)V

    :cond_0
    invoke-virtual {p3}, Lo1/b;->z()Lq1/j;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lj1/c;

    invoke-virtual {p3}, Lo1/b;->z()Lq1/j;

    move-result-object p2

    invoke-direct {p1, p0, p3, p2}, Lj1/c;-><init>(Lj1/a$b;Lo1/b;Lq1/j;)V

    iput-object p1, p0, Li1/h;->u:Lj1/c;

    :cond_1
    return-void
.end method

.method private e([I)[I
    .locals 3

    iget-object p0, p0, Li1/h;->p:Lj1/q;

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

.method private j()I
    .locals 3

    iget-object v0, p0, Li1/h;->m:Lj1/a;

    invoke-virtual {v0}, Lj1/a;->f()F

    move-result v0

    iget v1, p0, Li1/h;->r:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Li1/h;->n:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->f()F

    move-result v1

    iget v2, p0, Li1/h;->r:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Li1/h;->k:Lj1/a;

    invoke-virtual {v2}, Lj1/a;->f()F

    move-result v2

    iget p0, p0, Li1/h;->r:I

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

.method private k()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Li1/h;->j()I

    move-result v0

    iget-object v1, p0, Li1/h;->d:Landroidx/collection/f;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Li1/h;->m:Lj1/a;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Li1/h;->n:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Li1/h;->k:Lj1/a;

    invoke-virtual {v4}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln1/d;

    invoke-virtual {v4}, Ln1/d;->d()[I

    move-result-object v5

    invoke-direct {p0, v5}, Li1/h;->e([I)[I

    move-result-object v11

    invoke-virtual {v4}, Ln1/d;->e()[F

    move-result-object v12

    new-instance v4, Landroid/graphics/LinearGradient;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Li1/h;->d:Landroidx/collection/f;

    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/f;->i(JLjava/lang/Object;)V

    return-object v4
.end method

.method private l()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Li1/h;->j()I

    move-result v0

    iget-object v1, p0, Li1/h;->e:Landroidx/collection/f;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Li1/h;->m:Lj1/a;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Li1/h;->n:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Li1/h;->k:Lj1/a;

    invoke-virtual {v4}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln1/d;

    invoke-virtual {v4}, Ln1/d;->d()[I

    move-result-object v5

    invoke-direct {p0, v5}, Li1/h;->e([I)[I

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

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v0, 0x3a83126f    # 0.001f

    :cond_1
    move v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Li1/h;->e:Landroidx/collection/f;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/f;->i(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Li1/h;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Li1/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Li1/h;->f:Landroid/graphics/Path;

    iget-object v2, p0, Li1/h;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/m;

    invoke-interface {v2}, Li1/m;->a()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Li1/h;->f:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Li1/h;->q:Lcom/airbnb/lottie/i0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/c;

    instance-of v1, v0, Li1/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Li1/h;->i:Ljava/util/List;

    check-cast v0, Li1/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    iget-boolean v0, p0, Li1/h;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)V

    iget-object v1, p0, Li1/h;->f:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Li1/h;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Li1/h;->f:Landroid/graphics/Path;

    iget-object v4, p0, Li1/h;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li1/m;

    invoke-interface {v4}, Li1/m;->a()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Li1/h;->f:Landroid/graphics/Path;

    iget-object v3, p0, Li1/h;->h:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v2, p0, Li1/h;->j:Ln1/g;

    sget-object v3, Ln1/g;->LINEAR:Ln1/g;

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Li1/h;->k()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Li1/h;->l()Landroid/graphics/RadialGradient;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Li1/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, Li1/h;->o:Lj1/a;

    if-eqz p2, :cond_3

    iget-object v2, p0, Li1/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3
    iget-object p2, p0, Li1/h;->s:Lj1/a;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_4

    iget-object v2, p0, Li1/h;->g:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    :cond_4
    iget v2, p0, Li1/h;->t:F

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_5

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, p2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iget-object v3, p0, Li1/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_5
    :goto_2
    iput p2, p0, Li1/h;->t:F

    :cond_6
    iget-object p2, p0, Li1/h;->u:Lj1/c;

    if-eqz p2, :cond_7

    iget-object v2, p0, Li1/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Lj1/c;->a(Landroid/graphics/Paint;)V

    :cond_7
    int-to-float p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    iget-object v2, p0, Li1/h;->l:Lj1/a;

    invoke-virtual {v2}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p2, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p2, v2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p3, p0, Li1/h;->g:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Lr1/i;->c(III)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Li1/h;->f:Landroid/graphics/Path;

    iget-object p0, p0, Li1/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    return-void
.end method

.method public g(Ll1/e;ILjava/util/List;Ll1/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lr1/i;->k(Ll1/e;ILjava/util/List;Ll1/e;Li1/k;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li1/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Ls1/c;)V
    .locals 2

    sget-object v0, Lcom/airbnb/lottie/m0;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Li1/h;->l:Lj1/a;

    invoke-virtual {p0, p2}, Lj1/a;->o(Ls1/c;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/m0;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Li1/h;->o:Lj1/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Li1/h;->c:Lo1/b;

    invoke-virtual {v0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_1
    if-nez p2, :cond_2

    iput-object v1, p0, Li1/h;->o:Lj1/a;

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Li1/h;->o:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Li1/h;->c:Lo1/b;

    iget-object p0, p0, Li1/h;->o:Lj1/a;

    invoke-virtual {p1, p0}, Lo1/b;->j(Lj1/a;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/airbnb/lottie/m0;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Li1/h;->p:Lj1/q;

    if-eqz p1, :cond_4

    iget-object v0, p0, Li1/h;->c:Lo1/b;

    invoke-virtual {v0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_4
    if-nez p2, :cond_5

    iput-object v1, p0, Li1/h;->p:Lj1/q;

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Li1/h;->d:Landroidx/collection/f;

    invoke-virtual {p1}, Landroidx/collection/f;->a()V

    iget-object p1, p0, Li1/h;->e:Landroidx/collection/f;

    invoke-virtual {p1}, Landroidx/collection/f;->a()V

    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Li1/h;->p:Lj1/q;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Li1/h;->c:Lo1/b;

    iget-object p0, p0, Li1/h;->p:Lj1/q;

    invoke-virtual {p1, p0}, Lo1/b;->j(Lj1/a;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/airbnb/lottie/m0;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Li1/h;->s:Lj1/a;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Lj1/a;->o(Ls1/c;)V

    goto :goto_0

    :cond_7
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Li1/h;->s:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Li1/h;->c:Lo1/b;

    iget-object p0, p0, Li1/h;->s:Lj1/a;

    invoke-virtual {p1, p0}, Lo1/b;->j(Lj1/a;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/airbnb/lottie/m0;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Li1/h;->u:Lj1/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Lj1/c;->b(Ls1/c;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/airbnb/lottie/m0;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Li1/h;->u:Lj1/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Lj1/c;->f(Ls1/c;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/airbnb/lottie/m0;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Li1/h;->u:Lj1/c;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Lj1/c;->d(Ls1/c;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/m0;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Li1/h;->u:Lj1/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Lj1/c;->e(Ls1/c;)V

    goto :goto_0

    :cond_c
    sget-object v0, Lcom/airbnb/lottie/m0;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object p0, p0, Li1/h;->u:Lj1/c;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p2}, Lj1/c;->g(Ls1/c;)V

    :cond_d
    :goto_0
    return-void
.end method
