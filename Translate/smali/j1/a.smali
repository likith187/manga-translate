.class public abstract Lj1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj1/a$d;,
        Lj1/a$b;,
        Lj1/a$c;,
        Lj1/a$f;,
        Lj1/a$e;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;

.field private b:Z

.field private final c:Lj1/a$d;

.field protected d:F

.field protected e:Ls1/c;

.field private f:Ljava/lang/Object;

.field private g:F

.field private h:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lj1/a;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj1/a;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lj1/a;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Lj1/a;->f:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lj1/a;->g:F

    iput v0, p0, Lj1/a;->h:F

    invoke-static {p1}, Lj1/a;->p(Ljava/util/List;)Lj1/a$d;

    move-result-object p1

    iput-object p1, p0, Lj1/a;->c:Lj1/a$d;

    return-void
.end method

.method private g()F
    .locals 2

    iget v0, p0, Lj1/a;->g:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lj1/a;->c:Lj1/a$d;

    invoke-interface {v0}, Lj1/a$d;->c()F

    move-result v0

    iput v0, p0, Lj1/a;->g:F

    :cond_0
    iget p0, p0, Lj1/a;->g:F

    return p0
.end method

.method private static p(Ljava/util/List;)Lj1/a$d;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lj1/a$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj1/a$c;-><init>(Lj1/a$a;)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lj1/a$f;

    invoke-direct {v0, p0}, Lj1/a$f;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    new-instance v0, Lj1/a$e;

    invoke-direct {v0, p0}, Lj1/a$e;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(Lj1/a$b;)V
    .locals 0

    iget-object p0, p0, Lj1/a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()Ls1/a;
    .locals 1

    const-string v0, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lj1/a;->c:Lj1/a$d;

    invoke-interface {p0}, Lj1/a$d;->d()Ls1/a;

    move-result-object p0

    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    return-object p0
.end method

.method c()F
    .locals 2

    iget v0, p0, Lj1/a;->h:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lj1/a;->c:Lj1/a$d;

    invoke-interface {v0}, Lj1/a$d;->a()F

    move-result v0

    iput v0, p0, Lj1/a;->h:F

    :cond_0
    iget p0, p0, Lj1/a;->h:F

    return p0
.end method

.method protected d()F
    .locals 2

    invoke-virtual {p0}, Lj1/a;->b()Ls1/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ls1/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ls1/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lj1/a;->e()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method e()F
    .locals 3

    iget-boolean v0, p0, Lj1/a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lj1/a;->b()Ls1/a;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget p0, p0, Lj1/a;->d:F

    invoke-virtual {v0}, Ls1/a;->f()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-virtual {v0}, Ls1/a;->c()F

    move-result v1

    invoke-virtual {v0}, Ls1/a;->f()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    return p0
.end method

.method public f()F
    .locals 0

    iget p0, p0, Lj1/a;->d:F

    return p0
.end method

.method public h()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lj1/a;->e()F

    move-result v0

    iget-object v1, p0, Lj1/a;->e:Ls1/c;

    if-nez v1, :cond_0

    iget-object v1, p0, Lj1/a;->c:Lj1/a$d;

    invoke-interface {v1, v0}, Lj1/a$d;->b(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lj1/a;->f:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj1/a;->b()Ls1/a;

    move-result-object v1

    iget-object v2, v1, Ls1/a;->e:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    iget-object v3, v1, Ls1/a;->f:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, v1, Ls1/a;->f:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lj1/a;->j(Ls1/a;FFF)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lj1/a;->d()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lj1/a;->i(Ls1/a;F)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lj1/a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method abstract i(Ls1/a;F)Ljava/lang/Object;
.end method

.method protected j(Ls1/a;FFF)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This animation does not support split dimensions!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Lj1/a;->e:Ls1/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l()V
    .locals 3

    const-string v0, "BaseKeyframeAnimation#notifyListeners"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lj1/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lj1/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj1/a$b;

    invoke-interface {v2}, Lj1/a$b;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj1/a;->b:Z

    return-void
.end method

.method public n(F)V
    .locals 2

    const-string v0, "BaseKeyframeAnimation#setProgress"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lj1/a;->c:Lj1/a$d;

    invoke-interface {v1}, Lj1/a$d;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    return-void

    :cond_0
    invoke-direct {p0}, Lj1/a;->g()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    invoke-direct {p0}, Lj1/a;->g()F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lj1/a;->c()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lj1/a;->c()F

    move-result p1

    :cond_2
    :goto_0
    iget v1, p0, Lj1/a;->d:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    return-void

    :cond_3
    iput p1, p0, Lj1/a;->d:F

    iget-object v1, p0, Lj1/a;->c:Lj1/a$d;

    invoke-interface {v1, p1}, Lj1/a$d;->e(F)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lj1/a;->l()V

    :cond_4
    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    return-void
.end method

.method public o(Ls1/c;)V
    .locals 2

    iget-object v0, p0, Lj1/a;->e:Ls1/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls1/c;->c(Lj1/a;)V

    :cond_0
    iput-object p1, p0, Lj1/a;->e:Ls1/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ls1/c;->c(Lj1/a;)V

    :cond_1
    return-void
.end method
