.class public Lc6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lc6/m;
.implements Lc6/j;
.implements Ld6/a$b;
.implements Lc6/k;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Path;

.field private final c:Lcom/oplus/anim/o;

.field private final d:Li6/b;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ld6/a;

.field private final h:Ld6/a;

.field private final i:Ld6/p;

.field private j:Lc6/d;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/o;Li6/b;Lh6/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc6/p;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc6/p;->b:Landroid/graphics/Path;

    iput-object p1, p0, Lc6/p;->c:Lcom/oplus/anim/o;

    iput-object p2, p0, Lc6/p;->d:Li6/b;

    invoke-virtual {p3}, Lh6/l;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc6/p;->e:Ljava/lang/String;

    invoke-virtual {p3}, Lh6/l;->f()Z

    move-result p1

    iput-boolean p1, p0, Lc6/p;->f:Z

    invoke-virtual {p3}, Lh6/l;->b()Lg6/b;

    move-result-object p1

    invoke-virtual {p1}, Lg6/b;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/p;->g:Ld6/a;

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p3}, Lh6/l;->d()Lg6/b;

    move-result-object p1

    invoke-virtual {p1}, Lg6/b;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/p;->h:Ld6/a;

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p3}, Lh6/l;->e()Lg6/l;

    move-result-object p1

    invoke-virtual {p1}, Lg6/l;->b()Ld6/p;

    move-result-object p1

    iput-object p1, p0, Lc6/p;->i:Ld6/p;

    invoke-virtual {p1, p2}, Ld6/p;->a(Li6/b;)V

    invoke-virtual {p1, p0}, Ld6/p;->b(Ld6/a$b;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lc6/p;->j:Lc6/d;

    invoke-virtual {v0}, Lc6/d;->a()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lc6/p;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lc6/p;->g:Ld6/a;

    invoke-virtual {v1}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lc6/p;->h:Ld6/a;

    invoke-virtual {v2}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lc6/p;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lc6/p;->i:Ld6/p;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Ld6/p;->g(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lc6/p;->b:Landroid/graphics/Path;

    iget-object v4, p0, Lc6/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc6/p;->b:Landroid/graphics/Path;

    return-object p0
.end method

.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, Lc6/p;->j:Lc6/d;

    invoke-virtual {p0, p1, p2, p3}, Lc6/d;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lc6/p;->c:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lc6/p;->j:Lc6/d;

    invoke-virtual {p0, p1, p2}, Lc6/d;->d(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public e(Ljava/util/ListIterator;)V
    .locals 8

    iget-object v0, p0, Lc6/p;->j:Lc6/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6/c;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lc6/d;

    iget-object v2, p0, Lc6/p;->c:Lcom/oplus/anim/o;

    iget-object v3, p0, Lc6/p;->d:Li6/b;

    iget-boolean v5, p0, Lc6/p;->f:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lc6/d;-><init>(Lcom/oplus/anim/o;Li6/b;Ljava/lang/String;ZLjava/util/List;Lg6/l;)V

    iput-object p1, p0, Lc6/p;->j:Lc6/d;

    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lc6/p;->g:Ld6/a;

    invoke-virtual {v0}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lc6/p;->h:Ld6/a;

    invoke-virtual {v1}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lc6/p;->i:Ld6/p;

    invoke-virtual {v2}, Ld6/p;->i()Ld6/a;

    move-result-object v2

    invoke-virtual {v2}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lc6/p;->i:Ld6/p;

    invoke-virtual {v4}, Ld6/p;->e()Ld6/a;

    move-result-object v4

    invoke-virtual {v4}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lc6/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lc6/p;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Lc6/p;->i:Ld6/p;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Ld6/p;->g(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, Ll6/g;->i(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lc6/p;->j:Lc6/d;

    iget-object v7, p0, Lc6/p;->a:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lc6/d;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc6/p;->e:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Lm6/b;)V
    .locals 1

    iget-object v0, p0, Lc6/p;->i:Ld6/p;

    invoke-virtual {v0, p1, p2}, Ld6/p;->c(Ljava/lang/Object;Lm6/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oplus/anim/q;->u:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lc6/p;->g:Ld6/a;

    invoke-virtual {p0, p2}, Ld6/a;->n(Lm6/b;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oplus/anim/q;->v:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lc6/p;->h:Ld6/a;

    invoke-virtual {p0, p2}, Ld6/a;->n(Lm6/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i(Lf6/f;ILjava/util/List;Lf6/f;)V
    .locals 3

    invoke-static {p1, p2, p3, p4, p0}, Ll6/g;->k(Lf6/f;ILjava/util/List;Lf6/f;Lc6/k;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc6/p;->j:Lc6/d;

    invoke-virtual {v1}, Lc6/d;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lc6/p;->j:Lc6/d;

    invoke-virtual {v1}, Lc6/d;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/c;

    instance-of v2, v1, Lc6/k;

    if-eqz v2, :cond_0

    check-cast v1, Lc6/k;

    invoke-static {p1, p2, p3, p4, v1}, Ll6/g;->k(Lf6/f;ILjava/util/List;Lf6/f;Lc6/k;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
