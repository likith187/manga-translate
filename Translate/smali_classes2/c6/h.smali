.class public Lc6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Ld6/a$b;
.implements Lc6/k;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Li6/b;

.field private final d:Landroidx/collection/f;

.field private final e:Landroidx/collection/f;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Ljava/util/List;

.field private final j:Lh6/g;

.field private final k:Ld6/a;

.field private final l:Ld6/a;

.field private final m:Ld6/a;

.field private final n:Ld6/a;

.field private o:Ld6/a;

.field private p:Ld6/q;

.field private final q:Lcom/oplus/anim/o;

.field private final r:I

.field private s:Ld6/a;

.field t:F

.field private u:Ld6/c;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;Lh6/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Lc6/h;->d:Landroidx/collection/f;

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Lc6/h;->e:Landroidx/collection/f;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc6/h;->f:Landroid/graphics/Path;

    new-instance v1, Lb6/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lb6/a;-><init>(I)V

    iput-object v1, p0, Lc6/h;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lc6/h;->h:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc6/h;->i:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lc6/h;->t:F

    iput-object p3, p0, Lc6/h;->c:Li6/b;

    invoke-virtual {p4}, Lh6/e;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc6/h;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lh6/e;->i()Z

    move-result v1

    iput-boolean v1, p0, Lc6/h;->b:Z

    iput-object p1, p0, Lc6/h;->q:Lcom/oplus/anim/o;

    invoke-virtual {p4}, Lh6/e;->e()Lh6/g;

    move-result-object p1

    iput-object p1, p0, Lc6/h;->j:Lh6/g;

    invoke-virtual {p4}, Lh6/e;->c()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2}, Lcom/oplus/anim/a;->d()F

    move-result p1

    const/high16 p2, 0x42000000    # 32.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lc6/h;->r:I

    invoke-virtual {p4}, Lh6/e;->d()Lg6/c;

    move-result-object p1

    invoke-virtual {p1}, Lg6/c;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/h;->k:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p3, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p4}, Lh6/e;->g()Lg6/d;

    move-result-object p1

    invoke-virtual {p1}, Lg6/d;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/h;->l:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p3, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p4}, Lh6/e;->h()Lg6/f;

    move-result-object p1

    invoke-virtual {p1}, Lg6/f;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/h;->m:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p3, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p4}, Lh6/e;->b()Lg6/f;

    move-result-object p1

    invoke-virtual {p1}, Lg6/f;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/h;->n:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p3, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p3}, Li6/b;->w()Lh6/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Li6/b;->w()Lh6/a;

    move-result-object p1

    invoke-virtual {p1}, Lh6/a;->a()Lg6/b;

    move-result-object p1

    invoke-virtual {p1}, Lg6/b;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/h;->s:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    iget-object p1, p0, Lc6/h;->s:Ld6/a;

    invoke-virtual {p3, p1}, Li6/b;->j(Ld6/a;)V

    :cond_0
    invoke-virtual {p3}, Li6/b;->y()Lk6/j;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ld6/c;

    invoke-virtual {p3}, Li6/b;->y()Lk6/j;

    move-result-object p2

    invoke-direct {p1, p0, p3, p2}, Ld6/c;-><init>(Ld6/a$b;Li6/b;Lk6/j;)V

    iput-object p1, p0, Lc6/h;->u:Ld6/c;

    :cond_1
    return-void
.end method

.method private e([I)[I
    .locals 3

    iget-object p0, p0, Lc6/h;->p:Ld6/q;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ld6/q;->h()Ljava/lang/Object;

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

    iget-object v0, p0, Lc6/h;->m:Ld6/a;

    invoke-virtual {v0}, Ld6/a;->f()F

    move-result v0

    iget v1, p0, Lc6/h;->r:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lc6/h;->n:Ld6/a;

    invoke-virtual {v1}, Ld6/a;->f()F

    move-result v1

    iget v2, p0, Lc6/h;->r:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lc6/h;->k:Ld6/a;

    invoke-virtual {v2}, Ld6/a;->f()F

    move-result v2

    iget p0, p0, Lc6/h;->r:I

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

    invoke-direct {p0}, Lc6/h;->j()I

    move-result v0

    iget-object v1, p0, Lc6/h;->d:Landroidx/collection/f;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc6/h;->m:Ld6/a;

    invoke-virtual {v0}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lc6/h;->n:Ld6/a;

    invoke-virtual {v1}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lc6/h;->k:Ld6/a;

    invoke-virtual {v4}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh6/d;

    invoke-virtual {v4}, Lh6/d;->c()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lc6/h;->e([I)[I

    move-result-object v11

    invoke-virtual {v4}, Lh6/d;->d()[F

    move-result-object v12

    new-instance v4, Landroid/graphics/LinearGradient;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lc6/h;->d:Landroidx/collection/f;

    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/f;->i(JLjava/lang/Object;)V

    return-object v4
.end method

.method private l()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Lc6/h;->j()I

    move-result v0

    iget-object v1, p0, Lc6/h;->e:Landroidx/collection/f;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc6/h;->m:Ld6/a;

    invoke-virtual {v0}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lc6/h;->n:Ld6/a;

    invoke-virtual {v1}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lc6/h;->k:Ld6/a;

    invoke-virtual {v4}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh6/d;

    invoke-virtual {v4}, Lh6/d;->c()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lc6/h;->e([I)[I

    move-result-object v10

    invoke-virtual {v4}, Lh6/d;->d()[F

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

    iget-object p0, p0, Lc6/h;->e:Landroidx/collection/f;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/f;->i(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lc6/h;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lc6/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lc6/h;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lc6/h;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/m;

    invoke-interface {v2}, Lc6/m;->a()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc6/h;->f:Landroid/graphics/Path;

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

    iget-object p0, p0, Lc6/h;->q:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

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

    check-cast v0, Lc6/c;

    instance-of v1, v0, Lc6/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc6/h;->i:Ljava/util/List;

    check-cast v0, Lc6/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    iget-boolean v0, p0, Lc6/h;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lc6/h;->f:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lc6/h;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lc6/h;->f:Landroid/graphics/Path;

    iget-object v4, p0, Lc6/h;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc6/m;

    invoke-interface {v4}, Lc6/m;->a()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lc6/h;->f:Landroid/graphics/Path;

    iget-object v3, p0, Lc6/h;->h:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v2, p0, Lc6/h;->j:Lh6/g;

    sget-object v3, Lh6/g;->LINEAR:Lh6/g;

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lc6/h;->k()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lc6/h;->l()Landroid/graphics/RadialGradient;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lc6/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, Lc6/h;->o:Ld6/a;

    if-eqz p2, :cond_3

    iget-object v2, p0, Lc6/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3
    iget-object p2, p0, Lc6/h;->s:Ld6/a;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lc6/h;->g:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    :cond_4
    iget v2, p0, Lc6/h;->t:F

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_5

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, p2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iget-object v3, p0, Lc6/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_5
    :goto_2
    iput p2, p0, Lc6/h;->t:F

    :cond_6
    iget-object p2, p0, Lc6/h;->u:Ld6/c;

    if-eqz p2, :cond_7

    iget-object v2, p0, Lc6/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Ld6/c;->a(Landroid/graphics/Paint;)V

    :cond_7
    int-to-float p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    iget-object v2, p0, Lc6/h;->l:Ld6/a;

    invoke-virtual {v2}, Ld6/a;->h()Ljava/lang/Object;

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

    iget-object p3, p0, Lc6/h;->g:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Ll6/g;->c(III)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lc6/h;->f:Landroid/graphics/Path;

    iget-object p0, p0, Lc6/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc6/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Lm6/b;)V
    .locals 2

    sget-object v0, Lcom/oplus/anim/q;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lc6/h;->l:Ld6/a;

    invoke-virtual {p0, p2}, Ld6/a;->n(Lm6/b;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/oplus/anim/q;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lc6/h;->o:Ld6/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lc6/h;->c:Li6/b;

    invoke-virtual {v0, p1}, Li6/b;->H(Ld6/a;)V

    :cond_1
    if-nez p2, :cond_2

    iput-object v1, p0, Lc6/h;->o:Ld6/a;

    goto/16 :goto_0

    :cond_2
    new-instance p1, Ld6/q;

    invoke-direct {p1, p2}, Ld6/q;-><init>(Lm6/b;)V

    iput-object p1, p0, Lc6/h;->o:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    iget-object p1, p0, Lc6/h;->c:Li6/b;

    iget-object p0, p0, Lc6/h;->o:Ld6/a;

    invoke-virtual {p1, p0}, Li6/b;->j(Ld6/a;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/oplus/anim/q;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lc6/h;->p:Ld6/q;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lc6/h;->c:Li6/b;

    invoke-virtual {v0, p1}, Li6/b;->H(Ld6/a;)V

    :cond_4
    if-nez p2, :cond_5

    iput-object v1, p0, Lc6/h;->p:Ld6/q;

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lc6/h;->d:Landroidx/collection/f;

    invoke-virtual {p1}, Landroidx/collection/f;->a()V

    iget-object p1, p0, Lc6/h;->e:Landroidx/collection/f;

    invoke-virtual {p1}, Landroidx/collection/f;->a()V

    new-instance p1, Ld6/q;

    invoke-direct {p1, p2}, Ld6/q;-><init>(Lm6/b;)V

    iput-object p1, p0, Lc6/h;->p:Ld6/q;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    iget-object p1, p0, Lc6/h;->c:Li6/b;

    iget-object p0, p0, Lc6/h;->p:Ld6/q;

    invoke-virtual {p1, p0}, Li6/b;->j(Ld6/a;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/oplus/anim/q;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lc6/h;->s:Ld6/a;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ld6/a;->n(Lm6/b;)V

    goto :goto_0

    :cond_7
    new-instance p1, Ld6/q;

    invoke-direct {p1, p2}, Ld6/q;-><init>(Lm6/b;)V

    iput-object p1, p0, Lc6/h;->s:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    iget-object p1, p0, Lc6/h;->c:Li6/b;

    iget-object p0, p0, Lc6/h;->s:Ld6/a;

    invoke-virtual {p1, p0}, Li6/b;->j(Ld6/a;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/oplus/anim/q;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lc6/h;->u:Ld6/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Ld6/c;->b(Lm6/b;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/oplus/anim/q;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lc6/h;->u:Ld6/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Ld6/c;->f(Lm6/b;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/oplus/anim/q;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lc6/h;->u:Ld6/c;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Ld6/c;->d(Lm6/b;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/oplus/anim/q;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lc6/h;->u:Ld6/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Ld6/c;->e(Lm6/b;)V

    goto :goto_0

    :cond_c
    sget-object v0, Lcom/oplus/anim/q;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object p0, p0, Lc6/h;->u:Ld6/c;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p2}, Ld6/c;->g(Lm6/b;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public i(Lf6/f;ILjava/util/List;Lf6/f;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Ll6/g;->k(Lf6/f;ILjava/util/List;Lf6/f;Lc6/k;)V

    return-void
.end method
