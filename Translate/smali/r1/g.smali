.class public Lr1/g;
.super Lr1/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private f:F

.field private h:Z

.field private i:J

.field private j:F

.field private k:F

.field private l:I

.field private m:F

.field private n:F

.field private o:Lcom/airbnb/lottie/j;

.field protected p:Z

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lr1/a;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lr1/g;->f:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr1/g;->h:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lr1/g;->i:J

    const/4 v1, 0x0

    iput v1, p0, Lr1/g;->j:F

    iput v1, p0, Lr1/g;->k:F

    iput v0, p0, Lr1/g;->l:I

    const/high16 v1, -0x31000000

    iput v1, p0, Lr1/g;->m:F

    const/high16 v1, 0x4f000000

    iput v1, p0, Lr1/g;->n:F

    iput-boolean v0, p0, Lr1/g;->p:Z

    iput-boolean v0, p0, Lr1/g;->q:Z

    return-void
.end method

.method private F()V
    .locals 3

    iget-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lr1/g;->k:F

    iget v1, p0, Lr1/g;->m:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lr1/g;->n:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lr1/g;->m:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lr1/g;->n:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p0, p0, Lr1/g;->k:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Frame must be [%f,%f]. It is %f"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m()F
    .locals 2

    iget-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->i()F

    move-result v0

    div-float/2addr v1, v0

    iget p0, p0, Lr1/g;->f:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method

.method private q()Z
    .locals 1

    invoke-virtual {p0}, Lr1/g;->p()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A(F)V
    .locals 1

    iget v0, p0, Lr1/g;->m:F

    invoke-virtual {p0, v0, p1}, Lr1/g;->B(FF)V

    return-void
.end method

.method public B(FF)V
    .locals 2

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->p()F

    move-result v0

    :goto_0
    iget-object v1, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/j;->f()F

    move-result v1

    :goto_1
    invoke-static {p1, v0, v1}, Lr1/i;->b(FFF)F

    move-result p1

    invoke-static {p2, v0, v1}, Lr1/i;->b(FFF)F

    move-result p2

    iget v0, p0, Lr1/g;->m:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget v0, p0, Lr1/g;->n:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    :cond_2
    iput p1, p0, Lr1/g;->m:F

    iput p2, p0, Lr1/g;->n:F

    iget v0, p0, Lr1/g;->k:F

    invoke-static {v0, p1, p2}, Lr1/i;->b(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lr1/g;->z(F)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public C(I)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lr1/g;->n:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lr1/g;->B(FF)V

    return-void
.end method

.method public D(F)V
    .locals 0

    iput p1, p0, Lr1/g;->f:F

    return-void
.end method

.method public E(Z)V
    .locals 0

    iput-boolean p1, p0, Lr1/g;->q:Z

    return-void
.end method

.method a()V
    .locals 1

    invoke-super {p0}, Lr1/a;->a()V

    invoke-direct {p0}, Lr1/g;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Lr1/a;->b(Z)V

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Lr1/g;->a()V

    invoke-virtual {p0}, Lr1/g;->u()V

    return-void
.end method

.method public doFrame(J)V
    .locals 6

    invoke-virtual {p0}, Lr1/g;->t()V

    iget-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lr1/g;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "LottieValueAnimator#doFrame"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)V

    iget-wide v1, p0, Lr1/g;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    sub-long v3, p1, v1

    :goto_0
    invoke-direct {p0}, Lr1/g;->m()F

    move-result v1

    long-to-float v2, v3

    div-float/2addr v2, v1

    iget v1, p0, Lr1/g;->j:F

    invoke-direct {p0}, Lr1/g;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    neg-float v2, v2

    :cond_2
    add-float/2addr v1, v2

    invoke-virtual {p0}, Lr1/g;->o()F

    move-result v2

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result v3

    invoke-static {v1, v2, v3}, Lr1/i;->d(FFF)Z

    move-result v2

    iget v3, p0, Lr1/g;->j:F

    invoke-virtual {p0}, Lr1/g;->o()F

    move-result v4

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result v5

    invoke-static {v1, v4, v5}, Lr1/i;->b(FFF)F

    move-result v1

    iput v1, p0, Lr1/g;->j:F

    iget-boolean v4, p0, Lr1/g;->q:Z

    if-eqz v4, :cond_3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v1, v4

    :cond_3
    iput v1, p0, Lr1/g;->k:F

    iput-wide p1, p0, Lr1/g;->i:J

    iget-boolean v1, p0, Lr1/g;->q:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lr1/g;->j:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lr1/a;->h()V

    :cond_5
    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget v1, p0, Lr1/g;->l:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v1, v2, :cond_7

    iget p1, p0, Lr1/g;->f:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    invoke-virtual {p0}, Lr1/g;->o()F

    move-result p1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lr1/g;->n()F

    move-result p1

    :goto_1
    iput p1, p0, Lr1/g;->j:F

    iput p1, p0, Lr1/g;->k:F

    invoke-virtual {p0}, Lr1/g;->u()V

    invoke-direct {p0}, Lr1/g;->q()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr1/a;->b(Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lr1/a;->e()V

    iget v1, p0, Lr1/g;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lr1/g;->l:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    iget-boolean v1, p0, Lr1/g;->h:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lr1/g;->h:Z

    invoke-virtual {p0}, Lr1/g;->x()V

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lr1/g;->q()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result v1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lr1/g;->o()F

    move-result v1

    :goto_2
    iput v1, p0, Lr1/g;->j:F

    iput v1, p0, Lr1/g;->k:F

    :goto_3
    iput-wide p1, p0, Lr1/g;->i:J

    :cond_a
    :goto_4
    invoke-direct {p0}, Lr1/g;->F()V

    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    :cond_b
    :goto_5
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 2

    iget-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lr1/g;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result v0

    iget v1, p0, Lr1/g;->k:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result v1

    invoke-virtual {p0}, Lr1/g;->o()F

    move-result p0

    :goto_0
    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lr1/g;->k:F

    invoke-virtual {p0}, Lr1/g;->o()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result v1

    invoke-virtual {p0}, Lr1/g;->o()F

    move-result p0

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lr1/g;->k()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->d()F

    move-result p0

    float-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    const/high16 v0, -0x31000000

    iput v0, p0, Lr1/g;->m:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Lr1/g;->n:F

    return-void
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lr1/g;->p:Z

    return p0
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lr1/g;->u()V

    invoke-direct {p0}, Lr1/g;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Lr1/a;->b(Z)V

    return-void
.end method

.method public k()F
    .locals 2

    iget-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v1, p0, Lr1/g;->k:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->p()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->f()F

    move-result v0

    iget-object p0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->p()F

    move-result p0

    sub-float/2addr v0, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public l()F
    .locals 0

    iget p0, p0, Lr1/g;->k:F

    return p0
.end method

.method public n()F
    .locals 2

    iget-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lr1/g;->n:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->f()F

    move-result p0

    :cond_1
    return p0
.end method

.method public o()F
    .locals 2

    iget-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lr1/g;->m:F

    const/high16 v1, -0x31000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->p()F

    move-result p0

    :cond_1
    return p0
.end method

.method public p()F
    .locals 0

    iget p0, p0, Lr1/g;->f:F

    return p0
.end method

.method public r()V
    .locals 0

    invoke-virtual {p0}, Lr1/g;->u()V

    invoke-virtual {p0}, Lr1/a;->d()V

    return-void
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr1/g;->p:Z

    invoke-direct {p0}, Lr1/g;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Lr1/a;->g(Z)V

    invoke-direct {p0}, Lr1/g;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr1/g;->o()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lr1/g;->z(F)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr1/g;->i:J

    const/4 v0, 0x0

    iput v0, p0, Lr1/g;->l:I

    invoke-virtual {p0}, Lr1/g;->t()V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lr1/g;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/g;->h:Z

    invoke-virtual {p0}, Lr1/g;->x()V

    :cond_0
    return-void
.end method

.method protected t()V
    .locals 1

    invoke-virtual {p0}, Lr1/g;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr1/g;->v(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method protected u()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr1/g;->v(Z)V

    return-void
.end method

.method protected v(Z)V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/g;->p:Z

    :cond_0
    return-void
.end method

.method public w()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr1/g;->p:Z

    invoke-virtual {p0}, Lr1/g;->t()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr1/g;->i:J

    invoke-direct {p0}, Lr1/g;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr1/g;->l()F

    move-result v0

    invoke-virtual {p0}, Lr1/g;->o()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result v0

    invoke-virtual {p0, v0}, Lr1/g;->z(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lr1/g;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr1/g;->l()F

    move-result v0

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr1/g;->o()F

    move-result v0

    invoke-virtual {p0, v0}, Lr1/g;->z(F)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lr1/a;->f()V

    return-void
.end method

.method public x()V
    .locals 1

    invoke-virtual {p0}, Lr1/g;->p()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lr1/g;->D(F)V

    return-void
.end method

.method public y(Lcom/airbnb/lottie/j;)V
    .locals 2

    iget-object v0, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lr1/g;->o:Lcom/airbnb/lottie/j;

    if-eqz v0, :cond_1

    iget v0, p0, Lr1/g;->m:F

    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->p()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lr1/g;->n:F

    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->f()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lr1/g;->B(FF)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->p()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->f()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lr1/g;->B(FF)V

    :goto_1
    iget p1, p0, Lr1/g;->k:F

    const/4 v0, 0x0

    iput v0, p0, Lr1/g;->k:F

    iput v0, p0, Lr1/g;->j:F

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lr1/g;->z(F)V

    invoke-virtual {p0}, Lr1/a;->h()V

    return-void
.end method

.method public z(F)V
    .locals 2

    iget v0, p0, Lr1/g;->j:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lr1/g;->o()F

    move-result v0

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result v1

    invoke-static {p1, v0, v1}, Lr1/i;->b(FFF)F

    move-result p1

    iput p1, p0, Lr1/g;->j:F

    iget-boolean v0, p0, Lr1/g;->q:Z

    if-eqz v0, :cond_1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    :cond_1
    iput p1, p0, Lr1/g;->k:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr1/g;->i:J

    invoke-virtual {p0}, Lr1/a;->h()V

    return-void
.end method
