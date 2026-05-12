.class public Lm/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/m;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:F

.field private n:F

.field private o:F

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/n;->l:Z

    iput-boolean v0, p0, Lm/n;->p:Z

    return-void
.end method

.method private c(F)F
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/n;->p:Z

    iget v0, p0, Lm/n;->d:F

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_0

    iget v1, p0, Lm/n;->a:F

    mul-float v3, v1, p1

    iget p0, p0, Lm/n;->b:F

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr v0, v2

    div-float/2addr p0, v0

    add-float/2addr v3, p0

    return v3

    :cond_0
    iget v1, p0, Lm/n;->j:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget p0, p0, Lm/n;->g:F

    return p0

    :cond_1
    sub-float/2addr p1, v0

    iget v0, p0, Lm/n;->e:F

    cmpg-float v4, p1, v0

    if-gez v4, :cond_2

    iget v1, p0, Lm/n;->g:F

    iget v3, p0, Lm/n;->b:F

    mul-float v4, v3, p1

    add-float/2addr v1, v4

    iget p0, p0, Lm/n;->c:F

    sub-float/2addr p0, v3

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr v0, v2

    div-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget p0, p0, Lm/n;->h:F

    return p0

    :cond_3
    sub-float/2addr p1, v0

    iget v0, p0, Lm/n;->f:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_4

    iget v1, p0, Lm/n;->h:F

    iget p0, p0, Lm/n;->c:F

    mul-float v3, p0, p1

    add-float/2addr v1, v3

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr v0, v2

    div-float/2addr p0, v0

    sub-float/2addr v1, p0

    return v1

    :cond_4
    iput-boolean v3, p0, Lm/n;->p:Z

    iget p0, p0, Lm/n;->i:F

    return p0
.end method

.method private f(FFFFF)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/n;->p:Z

    iput p2, p0, Lm/n;->i:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    const p1, 0x38d1b717    # 1.0E-4f

    :cond_0
    div-float v1, p1, p3

    mul-float v2, v1, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v4, p1, v0

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-gez v4, :cond_2

    neg-float p5, p1

    div-float/2addr p5, p3

    mul-float/2addr p5, p1

    div-float/2addr p5, v3

    sub-float p5, p2, p5

    mul-float/2addr p5, p3

    float-to-double v1, p5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p5, v1

    cmpg-float v1, p5, p4

    if-gez v1, :cond_1

    const-string p4, "backward accelerate, decelerate"

    iput-object p4, p0, Lm/n;->k:Ljava/lang/String;

    iput v6, p0, Lm/n;->j:I

    iput p1, p0, Lm/n;->a:F

    iput p5, p0, Lm/n;->b:F

    iput v0, p0, Lm/n;->c:F

    sub-float p4, p5, p1

    div-float/2addr p4, p3

    iput p4, p0, Lm/n;->d:F

    div-float p3, p5, p3

    iput p3, p0, Lm/n;->e:F

    add-float/2addr p1, p5

    mul-float/2addr p1, p4

    div-float/2addr p1, v3

    iput p1, p0, Lm/n;->g:F

    iput p2, p0, Lm/n;->h:F

    iput p2, p0, Lm/n;->i:F

    return-void

    :cond_1
    const-string p5, "backward accelerate cruse decelerate"

    iput-object p5, p0, Lm/n;->k:Ljava/lang/String;

    iput v5, p0, Lm/n;->j:I

    iput p1, p0, Lm/n;->a:F

    iput p4, p0, Lm/n;->b:F

    iput p4, p0, Lm/n;->c:F

    sub-float p5, p4, p1

    div-float/2addr p5, p3

    iput p5, p0, Lm/n;->d:F

    div-float p3, p4, p3

    iput p3, p0, Lm/n;->f:F

    add-float/2addr p1, p4

    mul-float/2addr p1, p5

    div-float/2addr p1, v3

    mul-float/2addr p3, p4

    div-float/2addr p3, v3

    sub-float p5, p2, p1

    sub-float/2addr p5, p3

    div-float/2addr p5, p4

    iput p5, p0, Lm/n;->e:F

    iput p1, p0, Lm/n;->g:F

    sub-float p1, p2, p3

    iput p1, p0, Lm/n;->h:F

    iput p2, p0, Lm/n;->i:F

    return-void

    :cond_2
    cmpl-float v4, v2, p2

    if-ltz v4, :cond_3

    const-string p3, "hard stop"

    iput-object p3, p0, Lm/n;->k:Ljava/lang/String;

    mul-float/2addr v3, p2

    div-float/2addr v3, p1

    const/4 p3, 0x1

    iput p3, p0, Lm/n;->j:I

    iput p1, p0, Lm/n;->a:F

    iput v0, p0, Lm/n;->b:F

    iput p2, p0, Lm/n;->g:F

    iput v3, p0, Lm/n;->d:F

    return-void

    :cond_3
    sub-float v2, p2, v2

    div-float v4, v2, p1

    add-float v7, v4, v1

    cmpg-float p5, v7, p5

    if-gez p5, :cond_4

    const-string p3, "cruse decelerate"

    iput-object p3, p0, Lm/n;->k:Ljava/lang/String;

    iput v6, p0, Lm/n;->j:I

    iput p1, p0, Lm/n;->a:F

    iput p1, p0, Lm/n;->b:F

    iput v0, p0, Lm/n;->c:F

    iput v2, p0, Lm/n;->g:F

    iput p2, p0, Lm/n;->h:F

    iput v4, p0, Lm/n;->d:F

    iput v1, p0, Lm/n;->e:F

    return-void

    :cond_4
    mul-float p5, p3, p2

    mul-float v1, p1, p1

    div-float/2addr v1, v3

    add-float/2addr p5, v1

    float-to-double v1, p5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p5, v1

    sub-float v1, p5, p1

    div-float/2addr v1, p3

    iput v1, p0, Lm/n;->d:F

    div-float v2, p5, p3

    iput v2, p0, Lm/n;->e:F

    cmpg-float v4, p5, p4

    if-gez v4, :cond_5

    const-string p3, "accelerate decelerate"

    iput-object p3, p0, Lm/n;->k:Ljava/lang/String;

    iput v6, p0, Lm/n;->j:I

    iput p1, p0, Lm/n;->a:F

    iput p5, p0, Lm/n;->b:F

    iput v0, p0, Lm/n;->c:F

    iput v1, p0, Lm/n;->d:F

    iput v2, p0, Lm/n;->e:F

    add-float/2addr p1, p5

    mul-float/2addr p1, v1

    div-float/2addr p1, v3

    iput p1, p0, Lm/n;->g:F

    iput p2, p0, Lm/n;->h:F

    return-void

    :cond_5
    const-string p5, "accelerate cruse decelerate"

    iput-object p5, p0, Lm/n;->k:Ljava/lang/String;

    iput v5, p0, Lm/n;->j:I

    iput p1, p0, Lm/n;->a:F

    iput p4, p0, Lm/n;->b:F

    iput p4, p0, Lm/n;->c:F

    sub-float p5, p4, p1

    div-float/2addr p5, p3

    iput p5, p0, Lm/n;->d:F

    div-float p3, p4, p3

    iput p3, p0, Lm/n;->f:F

    add-float/2addr p1, p4

    mul-float/2addr p1, p5

    div-float/2addr p1, v3

    mul-float/2addr p3, p4

    div-float/2addr p3, v3

    sub-float p5, p2, p1

    sub-float/2addr p5, p3

    div-float/2addr p5, p4

    iput p5, p0, Lm/n;->e:F

    iput p1, p0, Lm/n;->g:F

    sub-float p1, p2, p3

    iput p1, p0, Lm/n;->h:F

    iput p2, p0, Lm/n;->i:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lm/n;->b()F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lm/n;->i:F

    iget p0, p0, Lm/n;->n:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()F
    .locals 1

    iget-boolean v0, p0, Lm/n;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lm/n;->o:F

    invoke-virtual {p0, v0}, Lm/n;->e(F)F

    move-result p0

    neg-float p0, p0

    goto :goto_0

    :cond_0
    iget v0, p0, Lm/n;->o:F

    invoke-virtual {p0, v0}, Lm/n;->e(F)F

    move-result p0

    :goto_0
    return p0
.end method

.method public d(FFFFFF)V
    .locals 6

    const/4 v2, 0x0

    iput-boolean v2, p0, Lm/n;->p:Z

    iput p1, p0, Lm/n;->m:F

    cmpl-float v3, p1, p2

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lm/n;->l:Z

    if-eqz v2, :cond_1

    neg-float v2, p3

    sub-float v3, p1, p2

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lm/n;->f(FFFFF)V

    goto :goto_0

    :cond_1
    sub-float v3, p2, p1

    move-object v0, p0

    move v1, p3

    move v2, v3

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lm/n;->f(FFFFF)V

    :goto_0
    return-void
.end method

.method public e(F)F
    .locals 4

    iget v0, p0, Lm/n;->d:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    iget v1, p0, Lm/n;->a:F

    iget p0, p0, Lm/n;->b:F

    :goto_0
    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    div-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1

    :cond_0
    iget v1, p0, Lm/n;->j:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    return v3

    :cond_1
    sub-float/2addr p1, v0

    iget v0, p0, Lm/n;->e:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    iget v1, p0, Lm/n;->b:F

    iget p0, p0, Lm/n;->c:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    return v3

    :cond_3
    sub-float/2addr p1, v0

    iget v0, p0, Lm/n;->f:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    iget p0, p0, Lm/n;->c:F

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    sub-float/2addr p0, p1

    return p0

    :cond_4
    return v3
.end method

.method public getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Lm/n;->c(F)F

    move-result v0

    iput v0, p0, Lm/n;->n:F

    iput p1, p0, Lm/n;->o:F

    iget-boolean p1, p0, Lm/n;->l:Z

    iget p0, p0, Lm/n;->m:F

    if-eqz p1, :cond_0

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    add-float/2addr p0, v0

    :goto_0
    return p0
.end method
