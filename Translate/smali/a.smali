.class public final La;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private a:Lb;

.field private b:F

.field private c:Z

.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(Ljava/lang/Float;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lb;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, p1}, Lb;-><init>(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, La;->a:Lb;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput p1, p0, La;->b:F

    const v0, -0x800001

    .line 4
    iput v0, p0, La;->g:F

    .line 5
    iput p1, p0, La;->h:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, La;-><init>(Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, La;->e:F

    return p0
.end method

.method public final b(FF)Z
    .locals 0

    iget-object p0, p0, La;->a:Lb;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lb;->d(FF)Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La;->e(F)La;

    iget v0, p0, La;->j:F

    invoke-virtual {p0, v0}, La;->f(F)La;

    invoke-virtual {p0}, La;->g()V

    return-void
.end method

.method public final d(Lb;)La;
    .locals 1

    const-string v0, "force"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, La;->a:Lb;

    return-object p0
.end method

.method public final e(F)La;
    .locals 0

    iput p1, p0, La;->e:F

    return-object p0
.end method

.method public final f(F)La;
    .locals 0

    iput p1, p0, La;->f:F

    iput p1, p0, La;->j:F

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, La;->a:Lb;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lb;->b()F

    move-result v0

    iget v1, p0, La;->h:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    iget v1, p0, La;->g:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, La;->a:Lb;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lb;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La;->d:Z

    iput v1, p0, La;->i:F

    invoke-virtual {p0, v1}, La;->e(F)La;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Damping ratio must be non-negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInterpolation(F)F
    .locals 1

    iget v0, p0, La;->i:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, La;->h(F)Z

    iput p1, p0, La;->i:F

    iget p0, p0, La;->e:F

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public final h(F)Z
    .locals 8

    iget-boolean v0, p0, La;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_1

    iget p1, p0, La;->b:F

    cmpg-float p1, p1, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, La;->a:Lb;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v0, p0, La;->b:F

    invoke-virtual {p1, v0}, Lb;->f(F)Lb;

    iput v4, p0, La;->b:F

    :goto_0
    iget-object p1, p0, La;->a:Lb;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lb;->b()F

    move-result p1

    iput p1, p0, La;->e:F

    iput v3, p0, La;->f:F

    iput-boolean v2, p0, La;->c:Z

    return v1

    :cond_1
    iget v0, p0, La;->b:F

    cmpg-float v0, v0, v4

    if-nez v0, :cond_2

    iget-object v0, p0, La;->a:Lb;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v4, p0, La;->e:F

    iget v5, p0, La;->f:F

    invoke-virtual {v0, v4, v5, p1}, Lb;->h(FFF)Lc;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, La;->a:Lb;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v5, p0, La;->e:F

    iget v6, p0, La;->f:F

    const/4 v7, 0x2

    int-to-float v7, v7

    div-float/2addr p1, v7

    invoke-virtual {v0, v5, v6, p1}, Lb;->h(FFF)Lc;

    move-result-object v0

    iget-object v5, p0, La;->a:Lb;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v6, p0, La;->b:F

    invoke-virtual {v5, v6}, Lb;->f(F)Lb;

    iput v4, p0, La;->b:F

    iget-object v4, p0, La;->a:Lb;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lc;->b()F

    move-result v5

    invoke-virtual {v0}, Lc;->c()F

    move-result v0

    invoke-virtual {v4, v5, v0, p1}, Lb;->h(FFF)Lc;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lc;->b()F

    move-result v0

    iget v4, p0, La;->g:F

    iget v5, p0, La;->h:F

    invoke-static {v0, v4, v5}, Lb9/d;->g(FFF)F

    move-result v0

    iput v0, p0, La;->e:F

    invoke-virtual {p1}, Lc;->c()F

    move-result p1

    iput p1, p0, La;->f:F

    iget v0, p0, La;->e:F

    invoke-virtual {p0, v0, p1}, La;->b(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, La;->a:Lb;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lb;->b()F

    move-result p1

    iput p1, p0, La;->e:F

    iput v3, p0, La;->f:F

    return v1

    :cond_3
    return v2
.end method
