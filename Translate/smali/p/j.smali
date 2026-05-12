.class Lp/j;
.super Lp/p;
.source "SourceFile"


# direct methods
.method constructor <init>(Lo/e;)V
    .locals 1

    invoke-direct {p0, p1}, Lp/p;-><init>(Lo/e;)V

    iget-object v0, p1, Lo/e;->e:Lp/l;

    invoke-virtual {v0}, Lp/l;->f()V

    iget-object v0, p1, Lo/e;->f:Lp/n;

    invoke-virtual {v0}, Lp/n;->f()V

    check-cast p1, Lo/h;

    invoke-virtual {p1}, Lo/h;->x1()I

    move-result p1

    iput p1, p0, Lp/p;->f:I

    return-void
.end method

.method private q(Lp/f;)V
    .locals 1

    iget-object v0, p0, Lp/p;->h:Lp/f;

    iget-object v0, v0, Lp/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lp/f;->l:Ljava/util/List;

    iget-object p0, p0, Lp/p;->h:Lp/f;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lp/d;)V
    .locals 1

    iget-object p1, p0, Lp/p;->h:Lp/f;

    iget-boolean v0, p1, Lp/f;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lp/f;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lp/f;->l:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp/f;

    iget-object v0, p0, Lp/p;->b:Lo/e;

    check-cast v0, Lo/h;

    iget p1, p1, Lp/f;->g:I

    int-to-float p1, p1

    invoke-virtual {v0}, Lo/h;->A1()F

    move-result v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object p0, p0, Lp/p;->h:Lp/f;

    invoke-virtual {p0, p1}, Lp/f;->d(I)V

    return-void
.end method

.method d()V
    .locals 5

    iget-object v0, p0, Lp/p;->b:Lo/e;

    check-cast v0, Lo/h;

    invoke-virtual {v0}, Lo/h;->y1()I

    move-result v1

    invoke-virtual {v0}, Lo/h;->z1()I

    move-result v2

    invoke-virtual {v0}, Lo/h;->A1()F

    invoke-virtual {v0}, Lo/h;->x1()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    if-eq v1, v3, :cond_0

    iget-object v0, p0, Lp/p;->h:Lp/f;

    iget-object v0, v0, Lp/f;->l:Ljava/util/List;

    iget-object v2, p0, Lp/p;->b:Lo/e;

    iget-object v2, v2, Lo/e;->c0:Lo/e;

    iget-object v2, v2, Lo/e;->e:Lp/l;

    iget-object v2, v2, Lp/p;->h:Lp/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v0, v0, Lo/e;->c0:Lo/e;

    iget-object v0, v0, Lo/e;->e:Lp/l;

    iget-object v0, v0, Lp/p;->h:Lp/f;

    iget-object v0, v0, Lp/f;->k:Ljava/util/List;

    iget-object v2, p0, Lp/p;->h:Lp/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/p;->h:Lp/f;

    iput v1, v0, Lp/f;->f:I

    goto :goto_0

    :cond_0
    if-eq v2, v3, :cond_1

    iget-object v0, p0, Lp/p;->h:Lp/f;

    iget-object v0, v0, Lp/f;->l:Ljava/util/List;

    iget-object v1, p0, Lp/p;->b:Lo/e;

    iget-object v1, v1, Lo/e;->c0:Lo/e;

    iget-object v1, v1, Lo/e;->e:Lp/l;

    iget-object v1, v1, Lp/p;->i:Lp/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v0, v0, Lo/e;->c0:Lo/e;

    iget-object v0, v0, Lo/e;->e:Lp/l;

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget-object v0, v0, Lp/f;->k:Ljava/util/List;

    iget-object v1, p0, Lp/p;->h:Lp/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/p;->h:Lp/f;

    neg-int v1, v2

    iput v1, v0, Lp/f;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lp/p;->h:Lp/f;

    iput-boolean v4, v0, Lp/f;->b:Z

    iget-object v0, v0, Lp/f;->l:Ljava/util/List;

    iget-object v1, p0, Lp/p;->b:Lo/e;

    iget-object v1, v1, Lo/e;->c0:Lo/e;

    iget-object v1, v1, Lo/e;->e:Lp/l;

    iget-object v1, v1, Lp/p;->i:Lp/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v0, v0, Lo/e;->c0:Lo/e;

    iget-object v0, v0, Lo/e;->e:Lp/l;

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget-object v0, v0, Lp/f;->k:Ljava/util/List;

    iget-object v1, p0, Lp/p;->h:Lp/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v0, v0, Lo/e;->e:Lp/l;

    iget-object v0, v0, Lp/p;->h:Lp/f;

    invoke-direct {p0, v0}, Lp/j;->q(Lp/f;)V

    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v0, v0, Lo/e;->e:Lp/l;

    iget-object v0, v0, Lp/p;->i:Lp/f;

    invoke-direct {p0, v0}, Lp/j;->q(Lp/f;)V

    goto/16 :goto_2

    :cond_2
    if-eq v1, v3, :cond_3

    iget-object v0, p0, Lp/p;->h:Lp/f;

    iget-object v0, v0, Lp/f;->l:Ljava/util/List;

    iget-object v2, p0, Lp/p;->b:Lo/e;

    iget-object v2, v2, Lo/e;->c0:Lo/e;

    iget-object v2, v2, Lo/e;->f:Lp/n;

    iget-object v2, v2, Lp/p;->h:Lp/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v0, v0, Lo/e;->c0:Lo/e;

    iget-object v0, v0, Lo/e;->f:Lp/n;

    iget-object v0, v0, Lp/p;->h:Lp/f;

    iget-object v0, v0, Lp/f;->k:Ljava/util/List;

    iget-object v2, p0, Lp/p;->h:Lp/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/p;->h:Lp/f;

    iput v1, v0, Lp/f;->f:I

    goto :goto_1

    :cond_3
    if-eq v2, v3, :cond_4

    iget-object v0, p0, Lp/p;->h:Lp/f;

    iget-object v0, v0, Lp/f;->l:Ljava/util/List;

    iget-object v1, p0, Lp/p;->b:Lo/e;

    iget-object v1, v1, Lo/e;->c0:Lo/e;

    iget-object v1, v1, Lo/e;->f:Lp/n;

    iget-object v1, v1, Lp/p;->i:Lp/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v0, v0, Lo/e;->c0:Lo/e;

    iget-object v0, v0, Lo/e;->f:Lp/n;

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget-object v0, v0, Lp/f;->k:Ljava/util/List;

    iget-object v1, p0, Lp/p;->h:Lp/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/p;->h:Lp/f;

    neg-int v1, v2

    iput v1, v0, Lp/f;->f:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lp/p;->h:Lp/f;

    iput-boolean v4, v0, Lp/f;->b:Z

    iget-object v0, v0, Lp/f;->l:Ljava/util/List;

    iget-object v1, p0, Lp/p;->b:Lo/e;

    iget-object v1, v1, Lo/e;->c0:Lo/e;

    iget-object v1, v1, Lo/e;->f:Lp/n;

    iget-object v1, v1, Lp/p;->i:Lp/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v0, v0, Lo/e;->c0:Lo/e;

    iget-object v0, v0, Lo/e;->f:Lp/n;

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget-object v0, v0, Lp/f;->k:Ljava/util/List;

    iget-object v1, p0, Lp/p;->h:Lp/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v0, v0, Lo/e;->f:Lp/n;

    iget-object v0, v0, Lp/p;->h:Lp/f;

    invoke-direct {p0, v0}, Lp/j;->q(Lp/f;)V

    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v0, v0, Lo/e;->f:Lp/n;

    iget-object v0, v0, Lp/p;->i:Lp/f;

    invoke-direct {p0, v0}, Lp/j;->q(Lp/f;)V

    :goto_2
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lp/p;->b:Lo/e;

    check-cast v0, Lo/h;

    invoke-virtual {v0}, Lo/h;->x1()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object p0, p0, Lp/p;->h:Lp/f;

    iget p0, p0, Lp/f;->g:I

    invoke-virtual {v0, p0}, Lo/e;->r1(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object p0, p0, Lp/p;->h:Lp/f;

    iget p0, p0, Lp/f;->g:I

    invoke-virtual {v0, p0}, Lo/e;->s1(I)V

    :goto_0
    return-void
.end method

.method f()V
    .locals 0

    iget-object p0, p0, Lp/p;->h:Lp/f;

    invoke-virtual {p0}, Lp/f;->c()V

    return-void
.end method

.method m()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
