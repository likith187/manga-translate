.class public Ld7/h;
.super Ld7/d;
.source "SourceFile"


# instance fields
.field private o:Lb7/a;

.field private p:Lc7/c;

.field private q:Lc7/b;

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld7/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/h;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld7/h;->s:Z

    invoke-virtual {p0}, Ld7/d;->h()V

    new-instance v0, Lc7/c;

    invoke-direct {v0}, Lc7/c;-><init>()V

    iput-object v0, p0, Ld7/h;->p:Lc7/c;

    const p0, 0x49f42400    # 2000000.0f

    iput p0, v0, Lc7/c;->e:F

    const/high16 p0, 0x42c80000    # 100.0f

    iput p0, v0, Lc7/c;->f:F

    return-void
.end method

.method private P()V
    .locals 2

    iget-object v0, p0, Ld7/d;->l:Lc7/c;

    invoke-virtual {p0, v0}, Ld7/d;->f(Lc7/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/d;->m:Lc7/b;

    iget-object v1, p0, Ld7/d;->j:Ld7/n;

    iget-object v1, v1, Ld7/n;->d:La7/e;

    invoke-virtual {v0, v1}, Lc7/b;->i(La7/e;)V

    iget-object v0, p0, Ld7/h;->p:Lc7/c;

    iget-object v1, p0, Ld7/h;->o:Lb7/a;

    invoke-virtual {p0, v0, v1}, Ld7/d;->g(Lc7/c;Lb7/a;)Lc7/b;

    move-result-object v0

    iput-object v0, p0, Ld7/h;->q:Lc7/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld7/d;->j:Ld7/n;

    iget-object v1, v1, Ld7/n;->d:La7/e;

    invoke-virtual {v0, v1}, Lc7/b;->i(La7/e;)V

    iget-object p0, p0, Ld7/h;->o:Lb7/a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb7/a;->l(Z)V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 1

    invoke-virtual {p0}, Ld7/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/h;->q:Lc7/b;

    invoke-virtual {p0, v0}, Ld7/d;->m(Lc7/b;)V

    iget-object p0, p0, Ld7/h;->o:Lb7/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb7/a;->l(Z)V

    :cond_0
    return-void
.end method

.method private R(FF)V
    .locals 2

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragBehavior : dragTo : x =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",y =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ld7/d;->m:Lc7/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->d:La7/e;

    invoke-static {p1}, La7/a;->d(F)F

    move-result p1

    invoke-virtual {p0, p1}, Ld7/h;->U(F)F

    move-result p1

    invoke-static {p2}, La7/a;->d(F)F

    move-result p2

    invoke-virtual {p0, p2}, Ld7/h;->V(F)F

    move-result p2

    invoke-virtual {v0, p1, p2}, La7/e;->d(FF)La7/e;

    iget-object p1, p0, Ld7/d;->m:Lc7/b;

    iget-object p2, p0, Ld7/d;->j:Ld7/n;

    iget-object p2, p2, Ld7/n;->d:La7/e;

    invoke-virtual {p1, p2}, Lc7/b;->i(La7/e;)V

    iget-object p1, p0, Ld7/h;->q:Lc7/b;

    if-eqz p1, :cond_1

    iget-object p0, p0, Ld7/d;->j:Ld7/n;

    iget-object p0, p0, Ld7/n;->d:La7/e;

    invoke-virtual {p1, p0}, Lc7/b;->i(La7/e;)V

    :cond_1
    return-void
.end method

.method private Z(La7/e;)V
    .locals 1

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p0, v0, p1}, Ld7/d;->E(Lb7/a;La7/e;)V

    iget-object v0, p0, Ld7/h;->o:Lb7/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Ld7/d;->E(Lb7/a;La7/e;)V

    :cond_0
    return-void
.end method


# virtual methods
.method A()V
    .locals 1

    invoke-super {p0}, Ld7/d;->A()V

    iget-object v0, p0, Ld7/h;->o:Lb7/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ld7/d;->k(Lb7/a;)Z

    :cond_0
    return-void
.end method

.method public B(FF)Ld7/d;
    .locals 1

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb7/a;->k(F)V

    :cond_0
    invoke-super {p0, p1, p2}, Ld7/d;->B(FF)Ld7/d;

    move-result-object p0

    return-object p0
.end method

.method protected C()V
    .locals 0

    invoke-super {p0}, Ld7/d;->C()V

    invoke-direct {p0}, Ld7/h;->P()V

    return-void
.end method

.method protected D()Z
    .locals 0

    invoke-direct {p0}, Ld7/h;->Q()V

    invoke-super {p0}, Ld7/d;->D()Z

    move-result p0

    return p0
.end method

.method public N(FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Ld7/h;->O(FFFF)V

    return-void
.end method

.method public O(FFFF)V
    .locals 2

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragBehavior : beginDrag : x =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",y =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",currentX =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",currentY =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    sub-float p3, p1, p3

    sub-float p4, p2, p4

    invoke-virtual {v0, p3, p4}, Lb7/a;->m(FF)V

    iget-object p3, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p3, p0}, Lb7/a;->y(Ld7/d;)Z

    iget-object p3, p0, Ld7/d;->k:Lb7/a;

    iget-object p3, p3, Lb7/a;->e:La7/e;

    invoke-virtual {p3}, La7/e;->f()V

    iget-object p3, p0, Ld7/h;->o:Lb7/a;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lb7/a;->e:La7/e;

    invoke-virtual {p3}, La7/e;->f()V

    :cond_1
    iget-object p3, p0, Ld7/d;->j:Ld7/n;

    iget-object p3, p3, Ld7/n;->d:La7/e;

    invoke-static {p1}, La7/a;->d(F)F

    move-result p1

    invoke-virtual {p0, p1}, Ld7/h;->U(F)F

    move-result p1

    invoke-static {p2}, La7/a;->d(F)F

    move-result p2

    invoke-virtual {p0, p2}, Ld7/h;->V(F)F

    move-result p2

    invoke-virtual {p3, p1, p2}, La7/e;->d(FF)La7/e;

    iget-object p1, p0, Ld7/d;->j:Ld7/n;

    iget-object p1, p1, Ld7/n;->d:La7/e;

    invoke-direct {p0, p1}, Ld7/h;->Z(La7/e;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld7/h;->r:Z

    invoke-virtual {p0}, Ld7/h;->C()V

    return-void
.end method

.method public S(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ld7/h;->T(FF)V

    return-void
.end method

.method public T(FF)V
    .locals 4

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragBehavior : endDrag : xVel =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",yVel =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Ld7/h;->Q()V

    iget-object v0, p0, Ld7/h;->o:Lb7/a;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lb7/a;->e:La7/e;

    iget v1, v0, La7/e;->a:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    invoke-static {v1}, La7/d;->a(F)F

    move-result v3

    div-float/2addr v1, v3

    invoke-static {p1}, La7/d;->a(F)F

    move-result p1

    mul-float/2addr v1, p1

    move p1, v1

    :goto_0
    iget v0, v0, La7/e;->b:F

    cmpl-float v1, v0, v2

    if-nez v1, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    invoke-static {v0}, La7/d;->a(F)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p2}, La7/d;->a(F)F

    move-result p2

    mul-float/2addr p2, v0

    :cond_3
    :goto_1
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    invoke-virtual {v0, p1, p2}, Ld7/n;->e(FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld7/h;->r:Z

    iget-object p1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p1, p0}, Lb7/a;->b(Ld7/d;)V

    return-void
.end method

.method protected U(F)F
    .locals 2

    iget-boolean v0, p0, Ld7/h;->s:Z

    if-nez v0, :cond_2

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

.method protected V(F)F
    .locals 2

    iget-boolean v0, p0, Ld7/h;->s:Z

    if-nez v0, :cond_2

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

.method public W()Z
    .locals 0

    iget-boolean p0, p0, Ld7/h;->r:Z

    return p0
.end method

.method public X(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld7/h;->R(FF)V

    return-void
.end method

.method public Y(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld7/h;->R(FF)V

    return-void
.end method

.method public b(FF)Ld7/d;
    .locals 1

    invoke-super {p0, p1, p2}, Ld7/d;->b(FF)Ld7/d;

    iget-object p1, p0, Ld7/h;->o:Lb7/a;

    if-eqz p1, :cond_0

    iget-object p2, p0, Ld7/d;->k:Lb7/a;

    iget v0, p2, Lb7/a;->o:F

    iget p2, p2, Lb7/a;->p:F

    invoke-virtual {p1, v0, p2}, Lb7/a;->t(FF)V

    :cond_0
    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public u()Z
    .locals 0

    iget-boolean p0, p0, Ld7/h;->r:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected w(Lb7/a;)V
    .locals 0

    invoke-super {p0, p1}, Ld7/d;->w(Lb7/a;)V

    iget-object p0, p0, Ld7/h;->p:Lc7/c;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lc7/c;->a:Lb7/a;

    :cond_0
    return-void
.end method

.method protected x()V
    .locals 0

    return-void
.end method

.method protected z()V
    .locals 2

    invoke-super {p0}, Ld7/d;->z()V

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v1, p0, Ld7/d;->l:Lc7/c;

    iget v1, v1, Lc7/c;->e:F

    invoke-virtual {v0, v1}, Lb7/a;->k(F)V

    iget-object v0, p0, Ld7/h;->p:Lc7/c;

    if-eqz v0, :cond_0

    const-string v0, "SimulateTouch"

    iget-object v1, p0, Ld7/h;->o:Lb7/a;

    invoke-virtual {p0, v0, v1}, Ld7/d;->e(Ljava/lang/String;Lb7/a;)Lb7/a;

    move-result-object v0

    iput-object v0, p0, Ld7/h;->o:Lb7/a;

    iget-object p0, p0, Ld7/h;->p:Lc7/c;

    iput-object v0, p0, Lc7/c;->b:Lb7/a;

    :cond_0
    return-void
.end method
