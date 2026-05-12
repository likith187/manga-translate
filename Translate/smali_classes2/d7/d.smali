.class public abstract Ld7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:F

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Ld7/j;

.field protected f:Ljava/util/HashMap;

.field protected g:Ld7/l;

.field protected h:Ljava/lang/Runnable;

.field protected i:Ljava/lang/Runnable;

.field protected j:Ld7/n;

.field protected k:Lb7/a;

.field protected l:Lc7/c;

.field protected m:Lc7/b;

.field protected n:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ld7/d;->a:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/d;->b:Z

    iput-boolean v0, p0, Ld7/d;->c:Z

    iput-boolean v0, p0, Ld7/d;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ld7/d;->e:Ld7/j;

    iput-object v0, p0, Ld7/d;->g:Ld7/l;

    iput-object v0, p0, Ld7/d;->m:Lc7/b;

    invoke-virtual {p0}, Ld7/d;->y()V

    return-void
.end method

.method private G(Ld7/n;Ld7/j;)V
    .locals 0

    invoke-virtual {p2, p1}, Ld7/j;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private J()V
    .locals 3

    iget-object v0, p0, Ld7/d;->g:Ld7/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Ld7/d;->n:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ld7/l;->s(Ljava/lang/Object;)Ld7/n;

    move-result-object v0

    iput-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v1, p0, Ld7/d;->g:Ld7/l;

    iget-object v2, p0, Ld7/d;->e:Ld7/j;

    if-eqz v2, :cond_2

    iget v2, v2, Ld7/j;->a:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v0, v2}, Ld7/l;->r(Ld7/n;I)Lb7/a;

    move-result-object v0

    iput-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p0}, Ld7/d;->z()V

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyBodyProperty : mActiveUIItem =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/d;->j:Ld7/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mPropertyBody =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",this =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La7/b;->c(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Ld7/j;)V
    .locals 2

    iget-object v0, p0, Ld7/d;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ld7/d;->f:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Ld7/d;->e:Ld7/j;

    if-nez v0, :cond_1

    iput-object p1, p0, Ld7/d;->e:Ld7/j;

    invoke-direct {p0}, Ld7/d;->J()V

    :cond_1
    iget-object v0, p0, Ld7/d;->f:Ljava/util/HashMap;

    iget-object v1, p1, Ld7/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ld7/d;->a:F

    iget p1, p1, Ld7/j;->c:F

    invoke-static {v0, p1}, La7/d;->c(FF)F

    move-result p1

    iput p1, p0, Ld7/d;->a:F

    return-void
.end method

.method private j(La7/e;IIFFLjava/lang/String;)Lb7/a;
    .locals 7

    iget-object v0, p0, Ld7/d;->g:Ld7/l;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ld7/l;->k(La7/e;IIFFLjava/lang/String;)Lb7/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method A()V
    .locals 2

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemove mIsStarted =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ld7/d;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",this =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld7/d;->i:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ld7/d;->D()Z

    return-void
.end method

.method public B(FF)Ld7/d;
    .locals 1

    iget-object v0, p0, Ld7/d;->l:Lc7/c;

    if-eqz v0, :cond_0

    iput p1, v0, Lc7/c;->e:F

    iput p2, v0, Lc7/c;->f:F

    iget-object v0, p0, Ld7/d;->m:Lc7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc7/b;->g(F)V

    iget-object p1, p0, Ld7/d;->m:Lc7/b;

    invoke-virtual {p1, p2}, Lc7/b;->f(F)V

    :cond_0
    return-object p0
.end method

.method protected C()V
    .locals 1

    iget-boolean v0, p0, Ld7/d;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld7/d;->I()V

    invoke-virtual {p0}, Ld7/d;->H()V

    invoke-virtual {p0}, Ld7/d;->x()V

    invoke-virtual {p0}, Ld7/d;->n()V

    iget-object v0, p0, Ld7/d;->g:Ld7/l;

    invoke-virtual {v0, p0}, Ld7/l;->J(Ld7/d;)V

    iget-object v0, p0, Ld7/d;->g:Ld7/l;

    invoke-virtual {v0, p0}, Ld7/l;->F(Ld7/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld7/d;->c:Z

    iget-object p0, p0, Ld7/d;->h:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected D()Z
    .locals 2

    iget-boolean v0, p0, Ld7/d;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ld7/d;->s()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v0, v0, Ld7/n;->g:La7/e;

    invoke-virtual {v0}, La7/e;->f()V

    :cond_0
    iget-object v0, p0, Ld7/d;->g:Ld7/l;

    invoke-virtual {v0, p0}, Ld7/l;->H(Ld7/d;)V

    iput-boolean v1, p0, Ld7/d;->c:Z

    iget-object p0, p0, Ld7/d;->i:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method protected E(Lb7/a;La7/e;)V
    .locals 0

    invoke-virtual {p1, p2}, Lb7/a;->r(La7/e;)V

    return-void
.end method

.method F()V
    .locals 3

    iget-object v0, p0, Ld7/d;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld7/j;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ld7/d;->j:Ld7/n;

    invoke-direct {p0, v2, v1}, Ld7/d;->G(Ld7/n;Ld7/j;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected H()V
    .locals 3

    iget-object v0, p0, Ld7/d;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    invoke-virtual {v0}, Ld7/n;->a()Ld7/m;

    move-result-object v1

    iget v1, v1, Ld7/m;->a:F

    iget-object p0, p0, Ld7/d;->j:Ld7/n;

    invoke-virtual {p0}, Ld7/n;->a()Ld7/m;

    move-result-object p0

    iget p0, p0, Ld7/m;->b:F

    invoke-virtual {v0, v1, p0}, Ld7/n;->c(FF)Ld7/n;

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld7/j;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ld7/d;->j:Ld7/n;

    invoke-virtual {v1, v2}, Ld7/j;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected I()V
    .locals 2

    iget-boolean v0, p0, Ld7/d;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/d;->d:Z

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0}, Lb7/a;->d()La7/e;

    move-result-object v0

    iget-object v1, p0, Ld7/d;->j:Ld7/n;

    iget-object v1, v1, Ld7/n;->g:La7/e;

    iget v1, v1, La7/e;->a:F

    invoke-static {v1}, La7/a;->d(F)F

    move-result v1

    iget-object p0, p0, Ld7/d;->j:Ld7/n;

    iget-object p0, p0, Ld7/n;->g:La7/e;

    iget p0, p0, La7/e;->b:F

    invoke-static {p0}, La7/a;->d(F)F

    move-result p0

    invoke-virtual {v0, v1, p0}, La7/e;->d(FF)La7/e;

    :cond_0
    return-void
.end method

.method public varargs K([Ld7/j;)Ld7/d;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Ld7/d;->a(Ld7/j;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public L(Ljava/lang/Runnable;)Ld7/d;
    .locals 0

    iput-object p1, p0, Ld7/d;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public M(Ljava/lang/Runnable;)Ld7/d;
    .locals 0

    iput-object p1, p0, Ld7/d;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public b(FF)Ld7/d;
    .locals 2

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applySizeChanged : width =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",height =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Ld7/n;->b(FF)Ld7/n;

    :cond_1
    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    if-eqz v0, :cond_2

    invoke-static {p1}, La7/a;->d(F)F

    move-result p1

    invoke-static {p2}, La7/a;->d(F)F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lb7/a;->t(FF)V

    iget-object p1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p1, p0}, Lb7/a;->y(Ld7/d;)Z

    :cond_2
    return-object p0
.end method

.method public c(Ljava/lang/Object;)Ld7/d;
    .locals 0

    iput-object p1, p0, Ld7/d;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ld7/d;->J()V

    return-object p0
.end method

.method d(Ld7/l;)Ld7/d;
    .locals 0

    iput-object p1, p0, Ld7/d;->g:Ld7/l;

    invoke-direct {p0}, Ld7/d;->J()V

    iget-object p1, p0, Ld7/d;->g:Ld7/l;

    invoke-virtual {p1}, Ld7/l;->q()Lb7/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld7/d;->w(Lb7/a;)V

    return-object p0
.end method

.method protected e(Ljava/lang/String;Lb7/a;)Lb7/a;
    .locals 7

    if-nez p2, :cond_0

    iget-object p2, p0, Ld7/d;->k:Lb7/a;

    iget-object v1, p2, Lb7/a;->a:La7/e;

    invoke-virtual {p2}, Lb7/a;->h()I

    move-result v2

    iget-object p2, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p2}, Lb7/a;->g()I

    move-result v3

    iget-object p2, p0, Ld7/d;->k:Lb7/a;

    iget v4, p2, Lb7/a;->o:F

    iget v5, p2, Lb7/a;->p:F

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ld7/d;->j(La7/e;IIFFLjava/lang/String;)Lb7/a;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld7/d;->k:Lb7/a;

    iget v0, p1, Lb7/a;->o:F

    iget p1, p1, Lb7/a;->p:F

    invoke-virtual {p2, v0, p1}, Lb7/a;->t(FF)V

    :goto_0
    iget-object p0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p0}, Lb7/a;->d()La7/e;

    move-result-object p0

    invoke-virtual {p2, p0}, Lb7/a;->o(La7/e;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lb7/a;->l(Z)V

    return-object p2
.end method

.method protected f(Lc7/c;)Z
    .locals 1

    iget-boolean v0, p0, Ld7/d;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p0, p1, v0}, Ld7/d;->g(Lc7/c;Lb7/a;)Lc7/b;

    move-result-object p1

    iput-object p1, p0, Ld7/d;->m:Lc7/b;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld7/d;->b:Z

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected g(Lc7/c;Lb7/a;)Lc7/b;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lc7/c;->c:La7/e;

    invoke-virtual {p2}, Lb7/a;->i()La7/e;

    move-result-object p2

    invoke-virtual {v0, p2}, La7/e;->e(La7/e;)La7/e;

    iget-object p0, p0, Ld7/d;->g:Ld7/l;

    invoke-virtual {p0, p1}, Ld7/l;->l(Lc7/c;)Lc7/b;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected h()V
    .locals 2

    const/high16 v0, 0x40800000    # 4.0f

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0, v1}, Ld7/d;->i(FF)V

    return-void
.end method

.method protected i(FF)V
    .locals 0

    new-instance p1, Lc7/c;

    invoke-direct {p1}, Lc7/c;-><init>()V

    iput-object p1, p0, Ld7/d;->l:Lc7/c;

    const/high16 p0, 0x40800000    # 4.0f

    iput p0, p1, Lc7/c;->e:F

    const p0, 0x3e4ccccd    # 0.2f

    iput p0, p1, Lc7/c;->f:F

    return-void
.end method

.method protected k(Lb7/a;)Z
    .locals 0

    iget-object p0, p0, Ld7/d;->g:Ld7/l;

    invoke-virtual {p0, p1}, Ld7/l;->o(Lb7/a;)Z

    move-result p0

    return p0
.end method

.method protected l()Z
    .locals 2

    iget-boolean v0, p0, Ld7/d;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/d;->m:Lc7/b;

    invoke-virtual {p0, v0}, Ld7/d;->m(Lc7/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld7/d;->m:Lc7/b;

    iput-boolean v1, p0, Ld7/d;->b:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method protected m(Lc7/b;)V
    .locals 0

    iget-object p0, p0, Ld7/d;->g:Ld7/l;

    invoke-virtual {p0, p1}, Ld7/l;->p(Lc7/b;)Z

    return-void
.end method

.method n()V
    .locals 3

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v1}, Lb7/a;->f()La7/e;

    move-result-object v1

    iget v1, v1, La7/e;->a:F

    iget-object v2, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->c()La7/e;

    move-result-object v2

    iget v2, v2, La7/e;->a:F

    sub-float/2addr v1, v2

    invoke-static {v1}, La7/a;->c(F)F

    move-result v1

    iget-object v2, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->f()La7/e;

    move-result-object v2

    iget v2, v2, La7/e;->b:F

    iget-object p0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {p0}, Lb7/a;->c()La7/e;

    move-result-object p0

    iget p0, p0, La7/e;->b:F

    sub-float/2addr v2, p0

    invoke-static {v2}, La7/a;->c(F)F

    move-result p0

    invoke-virtual {v0, v1, p0}, Ld7/n;->f(FF)V

    return-void
.end method

.method public o()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ld7/d;->e:Ld7/j;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld7/d;->r()Ld7/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld7/d;->r()Ld7/m;

    move-result-object p0

    iget p0, p0, Ld7/m;->a:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Ld7/d;->j:Ld7/n;

    invoke-virtual {p0, v1, v0}, Ld7/d;->q(Ljava/lang/Object;Ld7/j;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public p()La7/e;
    .locals 0

    iget-object p0, p0, Ld7/d;->k:Lb7/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lb7/a;->d()La7/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, La7/e;

    invoke-direct {p0}, La7/e;-><init>()V

    return-object p0
.end method

.method protected q(Ljava/lang/Object;Ld7/j;)F
    .locals 0

    invoke-virtual {p2, p1}, Ld7/j;->a(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public r()Ld7/m;
    .locals 0

    iget-object p0, p0, Ld7/d;->j:Ld7/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld7/n;->a()Ld7/m;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract s()I
.end method

.method protected t(La7/e;)Z
    .locals 2

    iget-object v0, p0, Ld7/d;->m:Lc7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc7/b;->d()La7/e;

    move-result-object v0

    iget v0, v0, La7/e;->a:F

    iget v1, p1, La7/e;->a:F

    sub-float/2addr v0, v1

    invoke-static {v0}, La7/d;->a(F)F

    move-result v0

    iget-object p0, p0, Ld7/d;->m:Lc7/b;

    invoke-virtual {p0}, Lc7/b;->d()La7/e;

    move-result-object p0

    iget p0, p0, La7/e;->b:F

    iget p1, p1, La7/e;->b:F

    sub-float/2addr p0, p1

    invoke-static {p0}, La7/d;->a(F)F

    move-result p0

    add-float/2addr v0, p0

    invoke-static {v0}, La7/a;->b(F)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Behavior{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld7/d;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mValueThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld7/d;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/d;->n:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPropertyBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v0, v0, Lb7/a;->e:La7/e;

    invoke-virtual {p0, v0}, Ld7/d;->v(La7/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0}, Lb7/a;->f()La7/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld7/d;->t(La7/e;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected v(La7/e;)Z
    .locals 0

    iget p0, p1, La7/e;->a:F

    invoke-static {p0}, La7/d;->a(F)F

    move-result p0

    invoke-static {p0}, La7/a;->b(F)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, La7/e;->b:F

    invoke-static {p0}, La7/d;->a(F)F

    move-result p0

    invoke-static {p0}, La7/a;->b(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected w(Lb7/a;)V
    .locals 0

    iget-object p0, p0, Ld7/d;->l:Lc7/c;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lc7/c;->a:Lb7/a;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lb7/a;->l(Z)V

    :cond_0
    return-void
.end method

.method protected x()V
    .locals 4

    iget-object v0, p0, Ld7/d;->j:Ld7/n;

    iget-object v1, v0, Ld7/n;->d:La7/e;

    iget-object v0, v0, Ld7/n;->e:La7/e;

    iget v0, v0, La7/e;->a:F

    invoke-static {v0}, La7/a;->d(F)F

    move-result v0

    iget-object v2, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v2}, Lb7/a;->c()La7/e;

    move-result-object v2

    iget v2, v2, La7/e;->a:F

    add-float/2addr v0, v2

    iget v2, p0, Ld7/d;->a:F

    div-float/2addr v0, v2

    iget-object v2, p0, Ld7/d;->j:Ld7/n;

    iget-object v2, v2, Ld7/n;->e:La7/e;

    iget v2, v2, La7/e;->b:F

    invoke-static {v2}, La7/a;->d(F)F

    move-result v2

    iget-object v3, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v3}, Lb7/a;->c()La7/e;

    move-result-object v3

    iget v3, v3, La7/e;->b:F

    add-float/2addr v2, v3

    iget v3, p0, Ld7/d;->a:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, La7/e;->d(FF)La7/e;

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    iget-object v1, p0, Ld7/d;->j:Ld7/n;

    iget-object v1, v1, Ld7/n;->d:La7/e;

    invoke-virtual {p0, v0, v1}, Ld7/d;->E(Lb7/a;La7/e;)V

    return-void
.end method

.method protected y()V
    .locals 0

    return-void
.end method

.method protected z()V
    .locals 1

    iget-object v0, p0, Ld7/d;->l:Lc7/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ld7/d;->k:Lb7/a;

    iput-object p0, v0, Lc7/c;->b:Lb7/a;

    :cond_0
    return-void
.end method
