.class public Ll6/b;
.super Ll6/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private f:Ljava/lang/String;

.field private h:F

.field private i:Z

.field private j:J

.field private k:F

.field private l:F

.field private m:I

.field private n:F

.field private o:F

.field private p:Lcom/oplus/anim/a;

.field protected q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ll6/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ll6/b;->f:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ll6/b;->h:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll6/b;->i:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ll6/b;->j:J

    const/4 v1, 0x0

    iput v1, p0, Ll6/b;->k:F

    iput v1, p0, Ll6/b;->l:F

    iput v0, p0, Ll6/b;->m:I

    const/high16 v1, -0x31000000

    iput v1, p0, Ll6/b;->n:F

    const/high16 v1, 0x4f000000

    iput v1, p0, Ll6/b;->o:F

    iput-boolean v0, p0, Ll6/b;->q:Z

    iput-boolean v0, p0, Ll6/b;->r:Z

    const/16 v0, 0x14

    :try_start_0
    invoke-static {v0}, Lcom/oplus/wrapper/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll6/b;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private H()V
    .locals 3

    iget-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ll6/b;->l:F

    iget v1, p0, Ll6/b;->n:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Ll6/b;->o:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Ll6/b;->n:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Ll6/b;->o:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p0, p0, Ll6/b;->l:F

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

    iget-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    invoke-virtual {v0}, Lcom/oplus/anim/a;->i()F

    move-result v0

    div-float/2addr v1, v0

    iget p0, p0, Ll6/b;->h:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method

.method private q()Z
    .locals 1

    invoke-virtual {p0}, Ll6/b;->p()F

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

.method private r()V
    .locals 3

    :try_start_0
    sget-wide v0, Lcom/oplus/wrapper/os/Trace;->TRACE_TAG_VIEW:J

    const-string v2, "lottie_animator"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/wrapper/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private s()V
    .locals 4

    :try_start_0
    sget-wide v0, Lcom/oplus/wrapper/os/Trace;->TRACE_TAG_VIEW:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnimatorStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ll6/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oplus/wrapper/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/oplus/wrapper/os/Trace;->traceEnd(J)V

    const-string v2, "lottie_animator"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/wrapper/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public A(Lcom/oplus/anim/a;)V
    .locals 2

    iget-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-eqz v0, :cond_1

    iget v0, p0, Ll6/b;->n:F

    invoke-virtual {p1}, Lcom/oplus/anim/a;->p()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Ll6/b;->o:F

    invoke-virtual {p1}, Lcom/oplus/anim/a;->f()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Ll6/b;->D(FF)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/anim/a;->p()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/oplus/anim/a;->f()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Ll6/b;->D(FF)V

    :goto_1
    iget p1, p0, Ll6/b;->l:F

    const/4 v0, 0x0

    iput v0, p0, Ll6/b;->l:F

    iput v0, p0, Ll6/b;->k:F

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Ll6/b;->B(F)V

    invoke-virtual {p0}, Ll6/a;->h()V

    return-void
.end method

.method public B(F)V
    .locals 2

    iget v0, p0, Ll6/b;->k:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ll6/b;->o()F

    move-result v0

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result v1

    invoke-static {p1, v0, v1}, Ll6/g;->b(FFF)F

    move-result p1

    iput p1, p0, Ll6/b;->k:F

    iget-boolean v0, p0, Ll6/b;->r:Z

    if-eqz v0, :cond_1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    :cond_1
    iput p1, p0, Ll6/b;->l:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll6/b;->j:J

    invoke-virtual {p0}, Ll6/a;->h()V

    return-void
.end method

.method public C(F)V
    .locals 1

    iget v0, p0, Ll6/b;->n:F

    invoke-virtual {p0, v0, p1}, Ll6/b;->D(FF)V

    return-void
.end method

.method public D(FF)V
    .locals 2

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_4

    iget-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oplus/anim/a;->p()F

    move-result v0

    :goto_0
    iget-object v1, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/oplus/anim/a;->f()F

    move-result v1

    :goto_1
    invoke-static {p1, v0, v1}, Ll6/g;->b(FFF)F

    move-result p1

    invoke-static {p2, v0, v1}, Ll6/g;->b(FFF)F

    move-result p2

    iget v0, p0, Ll6/b;->n:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget v0, p0, Ll6/b;->o:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    :cond_2
    iput p1, p0, Ll6/b;->n:F

    iput p2, p0, Ll6/b;->o:F

    iget v0, p0, Ll6/b;->l:F

    invoke-static {v0, p1, p2}, Ll6/g;->b(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Ll6/b;->B(F)V

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

.method public E(I)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Ll6/b;->o:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Ll6/b;->D(FF)V

    return-void
.end method

.method public F(F)V
    .locals 0

    iput p1, p0, Ll6/b;->h:F

    return-void
.end method

.method public G(Z)V
    .locals 0

    iput-boolean p1, p0, Ll6/b;->r:Z

    return-void
.end method

.method a()V
    .locals 1

    invoke-super {p0}, Ll6/a;->a()V

    invoke-direct {p0}, Ll6/b;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Ll6/a;->b(Z)V

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-direct {p0}, Ll6/b;->r()V

    invoke-virtual {p0}, Ll6/b;->a()V

    invoke-virtual {p0}, Ll6/b;->w()V

    return-void
.end method

.method public doFrame(J)V
    .locals 6

    invoke-virtual {p0}, Ll6/b;->v()V

    iget-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ll6/b;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "LottieValueAnimator#doFrame"

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-wide v1, p0, Ll6/b;->j:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    sub-long v3, p1, v1

    :goto_0
    invoke-direct {p0}, Ll6/b;->m()F

    move-result v1

    long-to-float v2, v3

    div-float/2addr v2, v1

    iget v1, p0, Ll6/b;->k:F

    invoke-direct {p0}, Ll6/b;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    neg-float v2, v2

    :cond_2
    add-float/2addr v1, v2

    invoke-virtual {p0}, Ll6/b;->o()F

    move-result v2

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result v3

    invoke-static {v1, v2, v3}, Ll6/g;->d(FFF)Z

    move-result v2

    iget v3, p0, Ll6/b;->k:F

    invoke-virtual {p0}, Ll6/b;->o()F

    move-result v4

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result v5

    invoke-static {v1, v4, v5}, Ll6/g;->b(FFF)F

    move-result v1

    iput v1, p0, Ll6/b;->k:F

    iget-boolean v4, p0, Ll6/b;->r:Z

    if-eqz v4, :cond_3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v1, v4

    :cond_3
    iput v1, p0, Ll6/b;->l:F

    iput-wide p1, p0, Ll6/b;->j:J

    iget-boolean v1, p0, Ll6/b;->r:Z

    if-eqz v1, :cond_4

    iget v1, p0, Ll6/b;->k:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Ll6/a;->h()V

    :cond_5
    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget v1, p0, Ll6/b;->m:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v1, v2, :cond_7

    iget p1, p0, Ll6/b;->h:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    invoke-virtual {p0}, Ll6/b;->o()F

    move-result p1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Ll6/b;->n()F

    move-result p1

    :goto_1
    iput p1, p0, Ll6/b;->k:F

    iput p1, p0, Ll6/b;->l:F

    invoke-virtual {p0}, Ll6/b;->w()V

    invoke-direct {p0}, Ll6/b;->r()V

    invoke-direct {p0}, Ll6/b;->q()Z

    move-result p1

    invoke-virtual {p0, p1}, Ll6/a;->b(Z)V

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Ll6/b;->s()V

    invoke-virtual {p0}, Ll6/a;->e()V

    iget v1, p0, Ll6/b;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ll6/b;->m:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    iget-boolean v1, p0, Ll6/b;->i:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Ll6/b;->i:Z

    invoke-virtual {p0}, Ll6/b;->z()V

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Ll6/b;->q()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result v1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Ll6/b;->o()F

    move-result v1

    :goto_2
    iput v1, p0, Ll6/b;->k:F

    iput v1, p0, Ll6/b;->l:F

    :goto_3
    iput-wide p1, p0, Ll6/b;->j:J

    :cond_a
    :goto_4
    invoke-direct {p0}, Ll6/b;->H()V

    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    :cond_b
    :goto_5
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 2

    iget-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Ll6/b;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result v0

    iget v1, p0, Ll6/b;->l:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result v1

    invoke-virtual {p0}, Ll6/b;->o()F

    move-result p0

    :goto_0
    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Ll6/b;->l:F

    invoke-virtual {p0}, Ll6/b;->o()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result v1

    invoke-virtual {p0}, Ll6/b;->o()F

    move-result p0

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ll6/b;->k()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/a;->d()F

    move-result p0

    float-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    const/high16 v0, -0x31000000

    iput v0, p0, Ll6/b;->n:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Ll6/b;->o:F

    return-void
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Ll6/b;->q:Z

    return p0
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Ll6/b;->w()V

    invoke-direct {p0}, Ll6/b;->r()V

    invoke-direct {p0}, Ll6/b;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Ll6/a;->b(Z)V

    return-void
.end method

.method public k()F
    .locals 2

    iget-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v1, p0, Ll6/b;->l:F

    invoke-virtual {v0}, Lcom/oplus/anim/a;->p()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    invoke-virtual {v0}, Lcom/oplus/anim/a;->f()F

    move-result v0

    iget-object p0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    invoke-virtual {p0}, Lcom/oplus/anim/a;->p()F

    move-result p0

    sub-float/2addr v0, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public l()F
    .locals 0

    iget p0, p0, Ll6/b;->l:F

    return p0
.end method

.method public n()F
    .locals 2

    iget-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ll6/b;->o:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/oplus/anim/a;->f()F

    move-result p0

    :cond_1
    return p0
.end method

.method public o()F
    .locals 2

    iget-object v0, p0, Ll6/b;->p:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ll6/b;->n:F

    const/high16 v1, -0x31000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/oplus/anim/a;->p()F

    move-result p0

    :cond_1
    return p0
.end method

.method public p()F
    .locals 0

    iget p0, p0, Ll6/b;->h:F

    return p0
.end method

.method public setRepeatMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Ll6/b;->i:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll6/b;->i:Z

    invoke-virtual {p0}, Ll6/b;->z()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 0

    invoke-virtual {p0}, Ll6/b;->w()V

    invoke-direct {p0}, Ll6/b;->r()V

    invoke-virtual {p0}, Ll6/a;->d()V

    return-void
.end method

.method public u()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll6/b;->q:Z

    invoke-direct {p0}, Ll6/b;->s()V

    invoke-direct {p0}, Ll6/b;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Ll6/a;->g(Z)V

    invoke-direct {p0}, Ll6/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ll6/b;->o()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Ll6/b;->B(F)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll6/b;->j:J

    const/4 v0, 0x0

    iput v0, p0, Ll6/b;->m:I

    invoke-virtual {p0}, Ll6/b;->v()V

    return-void
.end method

.method protected v()V
    .locals 1

    invoke-virtual {p0}, Ll6/b;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ll6/b;->x(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method protected w()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ll6/b;->x(Z)V

    return-void
.end method

.method protected x(Z)V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll6/b;->q:Z

    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll6/b;->q:Z

    invoke-virtual {p0}, Ll6/b;->v()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll6/b;->j:J

    invoke-direct {p0}, Ll6/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll6/b;->l()F

    move-result v0

    invoke-virtual {p0}, Ll6/b;->o()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result v0

    invoke-virtual {p0, v0}, Ll6/b;->B(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ll6/b;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ll6/b;->l()F

    move-result v0

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ll6/b;->o()F

    move-result v0

    invoke-virtual {p0, v0}, Ll6/b;->B(F)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Ll6/b;->s()V

    invoke-virtual {p0}, Ll6/a;->f()V

    return-void
.end method

.method public z()V
    .locals 1

    invoke-virtual {p0}, Ll6/b;->p()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Ll6/b;->F(F)V

    return-void
.end method
