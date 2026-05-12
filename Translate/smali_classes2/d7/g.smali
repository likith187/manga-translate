.class public abstract Ld7/g;
.super Ld7/d;
.source "SourceFile"


# instance fields
.field protected final o:Landroid/graphics/RectF;

.field protected p:Lb7/a;

.field protected q:Z

.field protected r:Z

.field protected s:F

.field protected t:F

.field protected u:I

.field protected v:I


# direct methods
.method public constructor <init>(ILandroid/graphics/RectF;)V
    .locals 2

    invoke-direct {p0}, Ld7/d;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ld7/g;->o:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/g;->q:Z

    iput-boolean v0, p0, Ld7/g;->r:Z

    const/4 v1, 0x0

    iput v1, p0, Ld7/g;->s:F

    iput v1, p0, Ld7/g;->t:F

    iput v0, p0, Ld7/g;->u:I

    iput p1, p0, Ld7/g;->v:I

    invoke-virtual {p0, p2}, Ld7/g;->i0(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Ld7/g;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lc7/c;

    invoke-direct {p1}, Lc7/c;-><init>()V

    iput-object p1, p0, Ld7/d;->l:Lc7/c;

    const/high16 p0, 0x3f800000    # 1.0f

    iput p0, p1, Lc7/c;->e:F

    const p0, 0x3ecccccd    # 0.4f

    iput p0, p1, Lc7/c;->f:F

    :cond_0
    return-void
.end method

.method private P()V
    .locals 2

    iget-object v0, p0, Ld7/d;->l:Lc7/c;

    invoke-virtual {p0, v0}, Ld7/d;->f(Lc7/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/d;->m:Lc7/b;

    iget v1, p0, Ld7/g;->s:F

    iget p0, p0, Ld7/g;->t:F

    invoke-virtual {v0, v1, p0}, Lc7/b;->h(FF)V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 0

    invoke-virtual {p0}, Ld7/d;->l()Z

    invoke-direct {p0}, Ld7/g;->h0()V

    return-void
.end method

.method private U()Z
    .locals 1

    iget p0, p0, Ld7/g;->v:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private V()Z
    .locals 1

    iget p0, p0, Ld7/g;->v:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private W()Z
    .locals 1

    invoke-direct {p0}, Ld7/g;->U()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ld7/g;->V()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ld7/g;->X()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ld7/g;->Y()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private X()Z
    .locals 1

    iget p0, p0, Ld7/g;->v:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Y()Z
    .locals 1

    iget p0, p0, Ld7/g;->v:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private h0()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld7/g;->u:I

    iput-boolean v0, p0, Ld7/g;->q:Z

    iput-boolean v0, p0, Ld7/g;->r:Z

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    invoke-super {p0}, Ld7/d;->A()V

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0, p0}, Lb7/a;->a(Ld7/d;)V

    invoke-direct {p0}, Ld7/g;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ld7/g;->Q()V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {p0, v0}, Ld7/d;->k(Lb7/a;)Z

    :cond_0
    return-void
.end method

.method public B(FF)Ld7/d;
    .locals 3

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ld7/g;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget v1, v0, Lb7/a;->n:F

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lb7/a;->k(F)V

    :cond_0
    invoke-super {p0, p1, p2}, Ld7/d;->B(FF)Ld7/d;

    move-result-object p0

    return-object p0
.end method

.method protected C()V
    .locals 0

    invoke-super {p0}, Ld7/d;->C()V

    invoke-virtual {p0}, Ld7/g;->g0()V

    return-void
.end method

.method protected D()Z
    .locals 2

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0, p0}, Lb7/a;->b(Ld7/d;)V

    invoke-direct {p0}, Ld7/g;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ld7/g;->Q()V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb7/a;->l(Z)V

    :cond_0
    invoke-super {p0}, Ld7/d;->D()Z

    move-result p0

    return p0
.end method

.method protected N()V
    .locals 1

    invoke-virtual {p0}, Ld7/g;->e0()Z

    move-result v0

    iput-boolean v0, p0, Ld7/g;->q:Z

    invoke-virtual {p0}, Ld7/g;->f0()Z

    move-result v0

    iput-boolean v0, p0, Ld7/g;->r:Z

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0}, Lb7/a;->f()La7/e;

    move-result-object v0

    iget v0, v0, La7/e;->a:F

    invoke-virtual {p0, v0}, Ld7/g;->R(F)F

    move-result v0

    iput v0, p0, Ld7/g;->s:F

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0}, Lb7/a;->f()La7/e;

    move-result-object v0

    iget v0, v0, La7/e;->b:F

    invoke-virtual {p0, v0}, Ld7/g;->S(F)F

    move-result v0

    iput v0, p0, Ld7/g;->t:F

    return-void
.end method

.method protected O(FF)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ld7/g;->u:I

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->i:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Ld7/d;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->i:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    iget p1, p0, Ld7/g;->u:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld7/g;->u:I

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    iget p1, p0, Ld7/g;->u:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Ld7/g;->u:I

    :cond_2
    :goto_0
    iget p1, v0, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    iget p1, p0, Ld7/g;->u:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Ld7/g;->u:I

    goto :goto_1

    :cond_3
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_4

    iget p1, p0, Ld7/g;->u:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Ld7/g;->u:I

    :cond_4
    :goto_1
    return-void
.end method

.method protected R(F)F
    .locals 2

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->i:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Ld7/d;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ld7/d;->k:Lb7/a;

    iget-object p0, p0, Lb7/a;->i:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    return v0

    :cond_1
    iget p0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, p0

    if-lez v0, :cond_2

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method protected S(F)F
    .locals 2

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->i:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Ld7/d;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ld7/d;->k:Lb7/a;

    iget-object p0, p0, Lb7/a;->i:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    return v0

    :cond_1
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p1, p0

    if-lez v0, :cond_2

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method protected T()V
    .locals 4

    iget v0, p0, Ld7/g;->v:I

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v2, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    invoke-virtual {v0, v2}, La7/e;->e(La7/e;)La7/e;

    iget-boolean v0, p0, Ld7/g;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget v0, v0, La7/e;->a:F

    invoke-virtual {p0, v0}, Ld7/g;->R(F)F

    move-result v0

    iput v0, p0, Ld7/g;->s:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v2, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    iget v2, v2, La7/e;->a:F

    iput v2, v0, La7/e;->a:F

    :goto_0
    invoke-virtual {p0}, Ld7/g;->e0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Ld7/g;->q:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Ld7/g;->q:Z

    :goto_1
    iget-boolean v0, p0, Ld7/g;->r:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget v0, v0, La7/e;->b:F

    invoke-virtual {p0, v0}, Ld7/g;->S(F)F

    move-result v0

    iput v0, p0, Ld7/g;->t:F

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v3, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {v3}, Lb7/a;->f()La7/e;

    move-result-object v3

    iget v3, v3, La7/e;->b:F

    iput v3, v0, La7/e;->b:F

    :goto_2
    invoke-virtual {p0}, Ld7/g;->f0()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Ld7/g;->r:Z

    goto :goto_3

    :cond_4
    iput-boolean v2, p0, Ld7/g;->r:Z

    :goto_3
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    invoke-virtual {p0, v0}, Ld7/g;->j0(La7/e;)V

    goto/16 :goto_a

    :cond_5
    iget-boolean v0, p0, Ld7/g;->q:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Ld7/g;->r:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ld7/g;->a0()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0}, Lb7/a;->d()La7/e;

    move-result-object v0

    invoke-virtual {v0}, La7/e;->f()V

    :cond_7
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    iget v1, v1, La7/e;->a:F

    invoke-virtual {p0, v1}, Ld7/g;->R(F)F

    move-result v1

    iget-object v2, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    iget v2, v2, La7/e;->b:F

    invoke-virtual {p0, v2}, Ld7/g;->S(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, La7/e;->d(FF)La7/e;

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

    goto :goto_5

    :cond_8
    :goto_4
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v1, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    invoke-virtual {v0, v1}, La7/e;->e(La7/e;)La7/e;

    :goto_5
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    invoke-virtual {p0, v0}, Ld7/g;->j0(La7/e;)V

    goto/16 :goto_a

    :cond_9
    iget-boolean v0, p0, Ld7/g;->q:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Ld7/g;->r:Z

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Ld7/g;->a0()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0}, Lb7/a;->d()La7/e;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, La7/e;->b(F)La7/e;

    move-result-object v1

    invoke-virtual {v1}, La7/e;->c()La7/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a;->o(La7/e;)V

    :cond_b
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    iget v1, v1, La7/e;->a:F

    invoke-virtual {p0, v1}, Ld7/g;->R(F)F

    move-result v1

    iget-object v2, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    iget v2, v2, La7/e;->b:F

    invoke-virtual {p0, v2}, Ld7/g;->S(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, La7/e;->d(FF)La7/e;

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

    goto :goto_7

    :cond_c
    :goto_6
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v1, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    invoke-virtual {v0, v1}, La7/e;->e(La7/e;)La7/e;

    :goto_7
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    invoke-virtual {p0, v0}, Ld7/g;->j0(La7/e;)V

    goto/16 :goto_a

    :cond_d
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v2, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    invoke-virtual {v0, v2}, La7/e;->e(La7/e;)La7/e;

    iget-boolean v0, p0, Ld7/g;->q:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget v0, v0, La7/e;->a:F

    invoke-virtual {p0, v0}, Ld7/g;->R(F)F

    move-result v0

    iput v0, p0, Ld7/g;->s:F

    goto :goto_8

    :cond_e
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v2, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    iget v2, v2, La7/e;->a:F

    iput v2, v0, La7/e;->a:F

    :goto_8
    invoke-virtual {p0}, Ld7/g;->e0()Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v1, p0, Ld7/g;->q:Z

    :cond_f
    iget-boolean v0, p0, Ld7/g;->r:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget v0, v0, La7/e;->b:F

    invoke-virtual {p0, v0}, Ld7/g;->S(F)F

    move-result v0

    iput v0, p0, Ld7/g;->t:F

    goto :goto_9

    :cond_10
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v2, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    iget v2, v2, La7/e;->b:F

    iput v2, v0, La7/e;->b:F

    :goto_9
    invoke-virtual {p0}, Ld7/g;->f0()Z

    move-result v0

    if-eqz v0, :cond_11

    iput-boolean v1, p0, Ld7/g;->r:Z

    :cond_11
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    invoke-virtual {p0, v0}, Ld7/g;->j0(La7/e;)V

    goto :goto_a

    :cond_12
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    invoke-virtual {v0, v1}, La7/e;->e(La7/e;)La7/e;

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v1, p0, Ld7/d;->j:Ld7/n;

    iget-object v1, v1, Ld7/n;->d:La7/e;

    invoke-virtual {p0, v0, v1}, Ld7/d;->E(Lb7/a;La7/e;)V

    :goto_a
    return-void
.end method

.method protected Z()Z
    .locals 0

    iget p0, p0, Ld7/g;->u:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected a0()Z
    .locals 0

    iget p0, p0, Ld7/g;->u:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(FF)Ld7/d;
    .locals 1

    invoke-super {p0, p1, p2}, Ld7/d;->b(FF)Ld7/d;

    iget-object p1, p0, Ld7/g;->p:Lb7/a;

    if-eqz p1, :cond_0

    iget-object p2, p0, Ld7/d;->k:Lb7/a;

    iget v0, p2, Lb7/a;->o:F

    iget p2, p2, Lb7/a;->p:F

    invoke-virtual {p1, v0, p2}, Lb7/a;->t(FF)V

    :cond_0
    return-object p0
.end method

.method protected b0()Z
    .locals 1

    iget p0, p0, Ld7/g;->u:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected c0()Z
    .locals 0

    iget p0, p0, Ld7/g;->u:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected d0()Z
    .locals 0

    iget p0, p0, Ld7/g;->u:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected e0()Z
    .locals 1

    invoke-virtual {p0}, Ld7/g;->b0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld7/g;->c0()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected f0()Z
    .locals 1

    invoke-virtual {p0}, Ld7/g;->d0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld7/g;->Z()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected g0()V
    .locals 2

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0, p0}, Lb7/a;->y(Ld7/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Ld7/g;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0}, Lb7/a;->f()La7/e;

    move-result-object v0

    iget v0, v0, La7/e;->a:F

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    iget v1, v1, La7/e;->b:F

    invoke-virtual {p0, v0, v1}, Ld7/g;->O(FF)V

    invoke-virtual {p0}, Ld7/g;->N()V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb7/a;->l(Z)V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->d()La7/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a;->o(La7/e;)V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ld7/d;->E(Lb7/a;La7/e;)V

    invoke-direct {p0}, Ld7/g;->P()V

    :cond_1
    return-void
.end method

.method public i0(Landroid/graphics/RectF;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld7/g;->o:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Ld7/d;->k:Lb7/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Ld7/g;->o:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lb7/a;->q(Landroid/graphics/RectF;)V

    iget-object p1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p1, p0}, Lb7/a;->y(Ld7/d;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected j0(La7/e;)V
    .locals 3

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p0, v0, p1}, Ld7/d;->E(Lb7/a;La7/e;)V

    iget-object v0, p0, Ld7/d;->m:Lc7/b;

    if-eqz v0, :cond_0

    iget v1, p0, Ld7/g;->s:F

    iget v2, p0, Ld7/g;->t:F

    invoke-virtual {v0, v1, v2}, Lc7/b;->h(FF)V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {p0, v0, p1}, Ld7/d;->E(Lb7/a;La7/e;)V

    :cond_0
    return-void
.end method

.method protected n()V
    .locals 2

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v1, v0, Lb7/a;->i:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lb7/a;->f()La7/e;

    move-result-object v0

    iget v0, v0, La7/e;->a:F

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    iget v1, v1, La7/e;->b:F

    invoke-virtual {p0, v0, v1}, Ld7/g;->O(FF)V

    :cond_0
    invoke-virtual {p0}, Ld7/g;->T()V

    invoke-super {p0}, Ld7/d;->n()V

    return-void
.end method

.method public u()Z
    .locals 1

    invoke-direct {p0}, Ld7/g;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ld7/d;->u()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->e:La7/e;

    invoke-virtual {p0, v0}, Ld7/d;->v(La7/e;)Z

    move-result p0

    return p0
.end method

.method protected w(Lb7/a;)V
    .locals 1

    invoke-direct {p0}, Ld7/g;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ld7/d;->w(Lb7/a;)V

    :cond_0
    return-void
.end method

.method protected x()V
    .locals 2

    invoke-super {p0}, Ld7/d;->x()V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld7/d;->j:Ld7/n;

    iget-object v1, v1, Ld7/n;->d:La7/e;

    invoke-virtual {p0, v0, v1}, Ld7/d;->E(Lb7/a;La7/e;)V

    :cond_0
    return-void
.end method

.method protected z()V
    .locals 3

    iget-object v0, p0, Ld7/g;->o:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v1, p0, Ld7/g;->o:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lb7/a;->q(Landroid/graphics/RectF;)V

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0, p0}, Lb7/a;->y(Ld7/d;)Z

    invoke-direct {p0}, Ld7/g;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget v1, v0, Lb7/a;->n:F

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Ld7/d;->l:Lc7/c;

    iget v1, v1, Lc7/c;->e:F

    invoke-virtual {v0, v1}, Lb7/a;->k(F)V

    :cond_0
    iget-object v0, p0, Ld7/d;->l:Lc7/c;

    if-eqz v0, :cond_1

    const-string v0, "Assist"

    iget-object v1, p0, Ld7/g;->p:Lb7/a;

    invoke-virtual {p0, v0, v1}, Ld7/d;->e(Ljava/lang/String;Lb7/a;)Lb7/a;

    move-result-object v0

    iput-object v0, p0, Ld7/g;->p:Lb7/a;

    iget-object p0, p0, Ld7/d;->l:Lc7/c;

    iput-object v0, p0, Lc7/c;->b:Lb7/a;

    :cond_1
    return-void
.end method
