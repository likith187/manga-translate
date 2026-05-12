.class public Lc6/t;
.super Lc6/a;
.source "SourceFile"


# instance fields
.field private final r:Li6/b;

.field private final s:Ljava/lang/String;

.field private final t:Z

.field private final u:Ld6/a;

.field private v:Ld6/a;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/o;Li6/b;Lh6/r;)V
    .locals 11

    invoke-virtual {p3}, Lh6/r;->b()Lh6/r$b;

    move-result-object v0

    invoke-virtual {v0}, Lh6/r$b;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lh6/r;->e()Lh6/r$c;

    move-result-object v0

    invoke-virtual {v0}, Lh6/r$c;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lh6/r;->g()F

    move-result v6

    invoke-virtual {p3}, Lh6/r;->i()Lg6/d;

    move-result-object v7

    invoke-virtual {p3}, Lh6/r;->j()Lg6/b;

    move-result-object v8

    invoke-virtual {p3}, Lh6/r;->f()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lh6/r;->d()Lg6/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lc6/a;-><init>(Lcom/oplus/anim/o;Li6/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLg6/d;Lg6/b;Ljava/util/List;Lg6/b;)V

    iput-object p2, p0, Lc6/t;->r:Li6/b;

    invoke-virtual {p3}, Lh6/r;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc6/t;->s:Ljava/lang/String;

    invoke-virtual {p3}, Lh6/r;->k()Z

    move-result p1

    iput-boolean p1, p0, Lc6/t;->t:Z

    invoke-virtual {p3}, Lh6/r;->c()Lg6/a;

    move-result-object p1

    invoke-virtual {p1}, Lg6/a;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/t;->u:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lc6/t;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc6/a;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lc6/t;->u:Ld6/a;

    check-cast v1, Ld6/b;

    invoke-virtual {v1}, Ld6/b;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lc6/t;->v:Ld6/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lc6/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lc6/a;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc6/t;->s:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Lm6/b;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lc6/a;->h(Ljava/lang/Object;Lm6/b;)V

    sget-object v0, Lcom/oplus/anim/q;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lc6/t;->u:Ld6/a;

    invoke-virtual {p0, p2}, Ld6/a;->n(Lm6/b;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oplus/anim/q;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lc6/t;->v:Ld6/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lc6/t;->r:Li6/b;

    invoke-virtual {v0, p1}, Li6/b;->H(Ld6/a;)V

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lc6/t;->v:Ld6/a;

    goto :goto_0

    :cond_2
    new-instance p1, Ld6/q;

    invoke-direct {p1, p2}, Ld6/q;-><init>(Lm6/b;)V

    iput-object p1, p0, Lc6/t;->v:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    iget-object p1, p0, Lc6/t;->r:Li6/b;

    iget-object p0, p0, Lc6/t;->u:Ld6/a;

    invoke-virtual {p1, p0}, Li6/b;->j(Ld6/a;)V

    :cond_3
    :goto_0
    return-void
.end method
