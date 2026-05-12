.class public Li1/t;
.super Li1/a;
.source "SourceFile"


# instance fields
.field private final r:Lo1/b;

.field private final s:Ljava/lang/String;

.field private final t:Z

.field private final u:Lj1/a;

.field private v:Lj1/a;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/s;)V
    .locals 11

    invoke-virtual {p3}, Ln1/s;->b()Ln1/s$b;

    move-result-object v0

    invoke-virtual {v0}, Ln1/s$b;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Ln1/s;->e()Ln1/s$c;

    move-result-object v0

    invoke-virtual {v0}, Ln1/s$c;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Ln1/s;->g()F

    move-result v6

    invoke-virtual {p3}, Ln1/s;->i()Lm1/d;

    move-result-object v7

    invoke-virtual {p3}, Ln1/s;->j()Lm1/b;

    move-result-object v8

    invoke-virtual {p3}, Ln1/s;->f()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Ln1/s;->d()Lm1/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Li1/a;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLm1/d;Lm1/b;Ljava/util/List;Lm1/b;)V

    iput-object p2, p0, Li1/t;->r:Lo1/b;

    invoke-virtual {p3}, Ln1/s;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li1/t;->s:Ljava/lang/String;

    invoke-virtual {p3}, Ln1/s;->k()Z

    move-result p1

    iput-boolean p1, p0, Li1/t;->t:Z

    invoke-virtual {p3}, Ln1/s;->c()Lm1/a;

    move-result-object p1

    invoke-virtual {p1}, Lm1/a;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/t;->u:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Li1/t;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li1/a;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Li1/t;->u:Lj1/a;

    check-cast v1, Lj1/b;

    invoke-virtual {v1}, Lj1/b;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Li1/t;->v:Lj1/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Li1/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Li1/a;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li1/t;->s:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Ls1/c;)V
    .locals 1

    invoke-super {p0, p1, p2}, Li1/a;->h(Ljava/lang/Object;Ls1/c;)V

    sget-object v0, Lcom/airbnb/lottie/m0;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Li1/t;->u:Lj1/a;

    invoke-virtual {p0, p2}, Lj1/a;->o(Ls1/c;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/m0;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Li1/t;->v:Lj1/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Li1/t;->r:Lo1/b;

    invoke-virtual {v0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Li1/t;->v:Lj1/a;

    goto :goto_0

    :cond_2
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Li1/t;->v:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Li1/t;->r:Lo1/b;

    iget-object p0, p0, Li1/t;->u:Lj1/a;

    invoke-virtual {p1, p0}, Lo1/b;->j(Lj1/a;)V

    :cond_3
    :goto_0
    return-void
.end method
