.class public Ld7/c;
.super Ld7/g;
.source "SourceFile"


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private final w:F

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(IILandroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Ld7/g;-><init>(ILandroid/graphics/RectF;)V

    const/high16 p3, 0x41d80000    # 27.0f

    invoke-static {p3}, La7/a;->c(F)F

    move-result p3

    iput p3, p0, Ld7/c;->w:F

    const/4 p3, 0x5

    iput p3, p0, Ld7/c;->z:I

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    iput p3, p0, Ld7/c;->A:F

    iput p3, p0, Ld7/c;->B:F

    iput p3, p0, Ld7/c;->C:F

    iput p3, p0, Ld7/c;->D:F

    const/4 p3, 0x0

    iput p3, p0, Ld7/c;->E:F

    iput p3, p0, Ld7/c;->F:F

    iput p1, p0, Ld7/c;->y:I

    iput p2, p0, Ld7/c;->x:I

    return-void
.end method

.method private k0()V
    .locals 7

    iget v0, p0, Ld7/c;->x:I

    and-int/lit8 v1, v0, 0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_0

    iget v1, p0, Ld7/g;->s:F

    iget-object v3, p0, Ld7/d;->k:Lb7/a;

    iget-object v3, v3, Lb7/a;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Ld7/d;->k:Lb7/a;

    iget-object v3, v3, Lb7/a;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Ld7/g;->s:F

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    iget v4, p0, Ld7/g;->t:F

    iget-object v5, p0, Ld7/d;->k:Lb7/a;

    iget-object v5, v5, Lb7/a;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Ld7/g;->t:F

    sub-float/2addr v0, v5

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iget v5, p0, Ld7/c;->A:F

    cmpl-float v5, v1, v5

    const/4 v6, 0x1

    if-lez v5, :cond_4

    iget v5, p0, Ld7/c;->z:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    iget v5, p0, Ld7/c;->B:F

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    iget v5, p0, Ld7/c;->z:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    move v3, v2

    :cond_5
    iget v5, p0, Ld7/c;->C:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    iget v5, p0, Ld7/c;->z:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_6

    move v4, v2

    :cond_6
    iget v5, p0, Ld7/c;->D:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_7

    iget v5, p0, Ld7/c;->z:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    move v2, v0

    :goto_4
    iget v0, p0, Ld7/c;->y:I

    if-eqz v0, :cond_c

    if-eq v0, v6, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v1, v3}, La7/d;->c(FF)F

    move-result v0

    invoke-static {v4, v2}, La7/d;->c(FF)F

    move-result v5

    invoke-static {v0, v1}, La7/d;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Ld7/c;->q0()V

    goto :goto_5

    :cond_9
    invoke-static {v0, v3}, La7/d;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Ld7/c;->r0()V

    :cond_a
    :goto_5
    invoke-static {v5, v4}, La7/d;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Ld7/c;->s0()V

    goto :goto_6

    :cond_b
    invoke-static {v5, v2}, La7/d;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Ld7/c;->o0()V

    goto :goto_6

    :cond_c
    invoke-static {v4, v2}, La7/d;->c(FF)F

    move-result v0

    invoke-static {v1, v3}, La7/d;->c(FF)F

    move-result v5

    invoke-static {v0, v5}, La7/d;->c(FF)F

    move-result v0

    invoke-static {v0, v1}, La7/d;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Ld7/c;->q0()V

    goto :goto_6

    :cond_d
    invoke-static {v0, v3}, La7/d;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Ld7/c;->r0()V

    goto :goto_6

    :cond_e
    invoke-static {v0, v4}, La7/d;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0}, Ld7/c;->s0()V

    goto :goto_6

    :cond_f
    invoke-static {v0, v2}, La7/d;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Ld7/c;->o0()V

    :cond_10
    :goto_6
    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttachmentBehavior : attachCloseSideWithConstraint mPropertyBody.mActiveRect =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    iget-object v1, v1, Lb7/a;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mCurrentSide =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ld7/c;->z:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La7/b;->c(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private l0(FF)V
    .locals 8

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0}, Lb7/a;->f()La7/e;

    move-result-object v0

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    iget-object v1, v1, Lb7/a;->i:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x0

    cmpl-float v6, p1, v5

    if-nez v6, :cond_0

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    div-float v6, p2, p1

    :goto_0
    cmpg-float p1, p1, v5

    if-gtz p1, :cond_3

    iget p1, v0, La7/e;->b:F

    sub-float v3, p1, v4

    iget v0, v0, La7/e;->a:F

    sub-float v7, v0, v2

    div-float/2addr v3, v7

    cmpg-float v7, p2, v5

    if-gtz v7, :cond_1

    cmpl-float v3, v6, v3

    if-lez v3, :cond_1

    iput v4, p0, Ld7/g;->t:F

    sub-float/2addr v4, p1

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    invoke-virtual {p0, v4}, Ld7/g;->R(F)F

    move-result p1

    iput p1, p0, Ld7/g;->s:F

    invoke-direct {p0}, Ld7/c;->k0()V

    return-void

    :cond_1
    sub-float v3, p1, v1

    sub-float v4, v0, v2

    div-float/2addr v3, v4

    cmpl-float p2, p2, v5

    if-lez p2, :cond_2

    cmpg-float p2, v6, v3

    if-gtz p2, :cond_2

    iput v1, p0, Ld7/g;->t:F

    sub-float/2addr v1, p1

    div-float/2addr v1, v6

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Ld7/g;->R(F)F

    move-result p1

    iput p1, p0, Ld7/g;->s:F

    invoke-direct {p0}, Ld7/c;->k0()V

    return-void

    :cond_2
    iput v2, p0, Ld7/g;->s:F

    sub-float/2addr v2, v0

    mul-float/2addr v6, v2

    add-float/2addr v6, p1

    invoke-virtual {p0, v6}, Ld7/g;->S(F)F

    move-result p1

    iput p1, p0, Ld7/g;->t:F

    invoke-direct {p0}, Ld7/c;->k0()V

    return-void

    :cond_3
    iget p1, v0, La7/e;->b:F

    sub-float v2, p1, v4

    iget v0, v0, La7/e;->a:F

    sub-float v7, v0, v3

    div-float/2addr v2, v7

    cmpg-float v7, p2, v5

    if-gtz v7, :cond_4

    cmpg-float v2, v6, v2

    if-gtz v2, :cond_4

    iput v4, p0, Ld7/g;->t:F

    sub-float/2addr v4, p1

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    invoke-virtual {p0, v4}, Ld7/g;->R(F)F

    move-result p1

    iput p1, p0, Ld7/g;->s:F

    invoke-direct {p0}, Ld7/c;->k0()V

    return-void

    :cond_4
    sub-float v2, p1, v1

    sub-float v4, v0, v3

    div-float/2addr v2, v4

    cmpl-float p2, p2, v5

    if-lez p2, :cond_5

    cmpl-float p2, v6, v2

    if-lez p2, :cond_5

    iput v1, p0, Ld7/g;->t:F

    sub-float/2addr v1, p1

    div-float/2addr v1, v6

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Ld7/g;->R(F)F

    move-result p1

    iput p1, p0, Ld7/g;->s:F

    invoke-direct {p0}, Ld7/c;->k0()V

    return-void

    :cond_5
    iput v3, p0, Ld7/g;->s:F

    sub-float/2addr v3, v0

    mul-float/2addr v6, v3

    add-float/2addr v6, p1

    invoke-virtual {p0, v6}, Ld7/g;->S(F)F

    move-result p1

    iput p1, p0, Ld7/g;->t:F

    invoke-direct {p0}, Ld7/c;->k0()V

    return-void
.end method

.method private m0(FF)Z
    .locals 2

    iget v0, p0, Ld7/c;->y:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    invoke-static {p1}, La7/d;->d(F)F

    move-result p1

    iget p2, p0, Ld7/c;->w:F

    mul-float/2addr p2, p2

    invoke-static {p2}, La7/d;->d(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    invoke-direct {p0}, Ld7/c;->p0()V

    return v1

    :cond_1
    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    invoke-static {p1}, La7/d;->d(F)F

    move-result p1

    iget p2, p0, Ld7/c;->w:F

    mul-float/2addr p2, p2

    invoke-static {p2}, La7/d;->d(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Ld7/g;->a0()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    invoke-direct {p0}, Ld7/c;->p0()V

    return v1
.end method

.method private n0(FF)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    invoke-direct {p0}, Ld7/c;->q0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ld7/c;->r0()V

    :goto_0
    cmpg-float p1, p2, v0

    if-gtz p1, :cond_1

    invoke-direct {p0}, Ld7/c;->s0()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Ld7/c;->o0()V

    :goto_1
    return-void
.end method

.method private o0()V
    .locals 2

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Ld7/g;->t:F

    iget v0, p0, Ld7/c;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    iget v0, p0, Ld7/c;->z:I

    :goto_0
    iget v1, p0, Ld7/c;->z:I

    not-int v0, v0

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ld7/c;->z:I

    return-void
.end method

.method private p0()V
    .locals 2

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget v0, v0, La7/e;->a:F

    invoke-virtual {p0, v0}, Ld7/g;->R(F)F

    move-result v0

    iput v0, p0, Ld7/g;->s:F

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget v0, v0, La7/e;->b:F

    invoke-virtual {p0, v0}, Ld7/g;->S(F)F

    move-result v0

    iput v0, p0, Ld7/g;->t:F

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttachmentBehavior : convertToCloseSide mConstraintPointX =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld7/g;->s:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mConstraintPointY =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld7/g;->t:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mActiveUIItem.mMoveTarget =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/d;->j:Ld7/n;

    iget-object v1, v1, Ld7/n;->d:La7/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Ld7/c;->k0()V

    return-void
.end method

.method private q0()V
    .locals 3

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Ld7/g;->s:F

    iget v0, p0, Ld7/c;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget v0, p0, Ld7/c;->z:I

    :goto_0
    iget v2, p0, Ld7/c;->z:I

    not-int v0, v0

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Ld7/c;->z:I

    return-void
.end method

.method private r0()V
    .locals 2

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Ld7/g;->s:F

    iget v0, p0, Ld7/c;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget v0, p0, Ld7/c;->z:I

    :goto_0
    iget v1, p0, Ld7/c;->z:I

    not-int v0, v0

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ld7/c;->z:I

    return-void
.end method

.method private s0()V
    .locals 2

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Ld7/g;->t:F

    iget v0, p0, Ld7/c;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    iget v0, p0, Ld7/c;->z:I

    :goto_0
    iget v1, p0, Ld7/c;->z:I

    not-int v0, v0

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ld7/c;->z:I

    return-void
.end method


# virtual methods
.method protected C()V
    .locals 3

    invoke-super {p0}, Ld7/g;->C()V

    iget v0, p0, Ld7/c;->F:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    iget v2, v1, Lb7/a;->t:F

    iput v2, p0, Ld7/c;->E:F

    invoke-virtual {v1, v0}, Lb7/a;->n(F)V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    if-eqz v0, :cond_0

    iget p0, p0, Ld7/c;->F:F

    invoke-virtual {v0, p0}, Lb7/a;->n(F)V

    :cond_0
    return-void
.end method

.method protected D()Z
    .locals 2

    iget v0, p0, Ld7/c;->E:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v1, v0}, Lb7/a;->n(F)V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    if-eqz v0, :cond_0

    iget v1, p0, Ld7/c;->E:F

    invoke-virtual {v0, v1}, Lb7/a;->n(F)V

    :cond_0
    invoke-super {p0}, Ld7/g;->D()Z

    move-result p0

    return p0
.end method

.method protected N()V
    .locals 2

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->g:La7/e;

    iget v1, v0, La7/e;->a:F

    iget v0, v0, La7/e;->b:F

    invoke-direct {p0, v1, v0}, Ld7/c;->m0(FF)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Ld7/c;->y:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->g:La7/e;

    iget v1, v0, La7/e;->a:F

    iget v0, v0, La7/e;->b:F

    invoke-direct {p0, v1, v0}, Ld7/c;->n0(FF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->g:La7/e;

    iget v1, v0, La7/e;->a:F

    iget v0, v0, La7/e;->b:F

    invoke-direct {p0, v1, v0}, Ld7/c;->l0(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected T()V
    .locals 3

    iget v0, p0, Ld7/c;->y:I

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v2, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    invoke-virtual {v0, v2}, La7/e;->e(La7/e;)La7/e;

    iget v0, p0, Ld7/c;->z:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ld7/g;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v2, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    iget v2, v2, La7/e;->b:F

    iput v2, v0, La7/e;->b:F

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget v0, v0, La7/e;->b:F

    invoke-virtual {p0, v0}, Ld7/g;->S(F)F

    move-result v0

    iput v0, p0, Ld7/g;->t:F

    :cond_0
    invoke-virtual {p0}, Ld7/g;->f0()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ld7/g;->r:Z

    :cond_1
    iget v0, p0, Ld7/c;->z:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ld7/g;->q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v2, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    iget v2, v2, La7/e;->a:F

    iput v2, v0, La7/e;->a:F

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget v0, v0, La7/e;->a:F

    invoke-virtual {p0, v0}, Ld7/g;->R(F)F

    move-result v0

    iput v0, p0, Ld7/g;->s:F

    :cond_2
    invoke-virtual {p0}, Ld7/g;->e0()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Ld7/g;->q:Z

    :cond_3
    iget-boolean v0, p0, Ld7/g;->q:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ld7/g;->r:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v1, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    invoke-virtual {v0, v1}, La7/e;->e(La7/e;)La7/e;

    :cond_4
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    invoke-virtual {p0, v0}, Ld7/g;->j0(La7/e;)V

    goto :goto_0

    :cond_5
    if-ne v0, v1, :cond_6

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v1, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    invoke-virtual {v0, v1}, La7/e;->e(La7/e;)La7/e;

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    invoke-virtual {p0, v0}, Ld7/g;->j0(La7/e;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public t0(I)V
    .locals 0

    iput p1, p0, Ld7/c;->x:I

    return-void
.end method

.method public u0()V
    .locals 0

    invoke-virtual {p0}, Ld7/c;->C()V

    return-void
.end method

.method public v0()V
    .locals 0

    invoke-virtual {p0}, Ld7/c;->D()Z

    return-void
.end method
