.class public Lo1/c;
.super Lo1/b;
.source "SourceFile"


# instance fields
.field private D:Lj1/a;

.field private final E:Ljava/util/List;

.field private final F:Landroid/graphics/RectF;

.field private final G:Landroid/graphics/RectF;

.field private final H:Landroid/graphics/Paint;

.field private I:F

.field private J:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/i0;Lo1/e;Ljava/util/List;Lcom/airbnb/lottie/j;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lo1/b;-><init>(Lcom/airbnb/lottie/i0;Lo1/e;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo1/c;->E:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo1/c;->F:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo1/c;->G:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo1/c;->H:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo1/c;->J:Z

    invoke-virtual {p2}, Lo1/e;->v()Lm1/b;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lm1/b;->a()Lj1/a;

    move-result-object p2

    iput-object p2, p0, Lo1/c;->D:Lj1/a;

    invoke-virtual {p0, p2}, Lo1/b;->j(Lj1/a;)V

    iget-object p2, p0, Lo1/c;->D:Lj1/a;

    invoke-virtual {p2, p0}, Lj1/a;->a(Lj1/a$b;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lo1/c;->D:Lj1/a;

    :goto_0
    new-instance p2, Landroidx/collection/f;

    invoke-virtual {p4}, Lcom/airbnb/lottie/j;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p2, v2}, Landroidx/collection/f;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    if-ltz v2, :cond_4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo1/e;

    invoke-static {p0, v5, p1, p4}, Lo1/b;->v(Lo1/c;Lo1/e;Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;)Lo1/b;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lo1/b;->A()Lo1/e;

    move-result-object v7

    invoke-virtual {v7}, Lo1/e;->e()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/f;->i(JLjava/lang/Object;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3, v6}, Lo1/b;->K(Lo1/b;)V

    move-object v3, v1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v4, Lo1/c$a;->a:[I

    invoke-virtual {v5}, Lo1/e;->i()Lo1/e$b;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v0, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v6

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroidx/collection/f;->l()I

    move-result p0

    if-ge v4, p0, :cond_7

    invoke-virtual {p2, v4}, Landroidx/collection/f;->h(I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo1/b;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lo1/b;->A()Lo1/e;

    move-result-object p1

    invoke-virtual {p1}, Lo1/e;->k()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/b;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lo1/b;->M(Lo1/b;)V

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method protected J(Ll1/e;ILjava/util/List;Ll1/e;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/b;

    invoke-virtual {v1, p1, p2, p3, p4}, Lo1/b;->g(Ll1/e;ILjava/util/List;Ll1/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L(Z)V
    .locals 1

    invoke-super {p0, p1}, Lo1/b;->L(Z)V

    iget-object p0, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo1/b;

    invoke-virtual {v0, p1}, Lo1/b;->L(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public N(F)V
    .locals 4

    const-string v0, "CompositionLayer#setProgress"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)V

    iput p1, p0, Lo1/c;->I:F

    invoke-super {p0, p1}, Lo1/b;->N(F)V

    iget-object v1, p0, Lo1/c;->D:Lj1/a;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lo1/b;->p:Lcom/airbnb/lottie/i0;

    invoke-virtual {p1}, Lcom/airbnb/lottie/i0;->L()Lcom/airbnb/lottie/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/j;->e()F

    move-result p1

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v1

    iget-object v1, p0, Lo1/b;->q:Lo1/e;

    invoke-virtual {v1}, Lo1/e;->c()Lcom/airbnb/lottie/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/j;->p()F

    move-result v1

    iget-object v2, p0, Lo1/c;->D:Lj1/a;

    invoke-virtual {v2}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lo1/b;->q:Lo1/e;

    invoke-virtual {v3}, Lo1/e;->c()Lcom/airbnb/lottie/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/j;->i()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v2, v1

    div-float p1, v2, p1

    :cond_0
    iget-object v1, p0, Lo1/c;->D:Lj1/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lo1/b;->q:Lo1/e;

    invoke-virtual {v1}, Lo1/e;->s()F

    move-result v1

    sub-float/2addr p1, v1

    :cond_1
    iget-object v1, p0, Lo1/b;->q:Lo1/e;

    invoke-virtual {v1}, Lo1/e;->w()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo1/b;->q:Lo1/e;

    invoke-virtual {v1}, Lo1/e;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__container"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lo1/b;->q:Lo1/e;

    invoke-virtual {v1}, Lo1/e;->w()F

    move-result v1

    div-float/2addr p1, v1

    :cond_2
    iget-object v1, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo1/b;

    invoke-virtual {v2, p1}, Lo1/b;->N(F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    return-void
.end method

.method public Q()F
    .locals 0

    iget p0, p0, Lo1/c;->I:F

    return p0
.end method

.method public R(Z)V
    .locals 0

    iput-boolean p1, p0, Lo1/c;->J:Z

    return-void
.end method

.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lo1/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    iget-object v0, p0, Lo1/c;->F:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo1/b;

    iget-object v1, p0, Lo1/c;->F:Landroid/graphics/RectF;

    iget-object v2, p0, Lo1/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lo1/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lo1/c;->F:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;Ls1/c;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lo1/b;->h(Ljava/lang/Object;Ls1/c;)V

    sget-object v0, Lcom/airbnb/lottie/m0;->E:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    iget-object p0, p0, Lo1/c;->D:Lj1/a;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lj1/a;->o(Ls1/c;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Lo1/c;->D:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Lo1/c;->D:Lj1/a;

    invoke-virtual {p0, p1}, Lo1/b;->j(Lj1/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lo1/c;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lo1/b;->q:Lo1/e;

    invoke-virtual {v2}, Lo1/e;->m()F

    move-result v2

    iget-object v3, p0, Lo1/b;->q:Lo1/e;

    invoke-virtual {v3}, Lo1/e;->l()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lo1/c;->G:Landroid/graphics/RectF;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lo1/b;->p:Lcom/airbnb/lottie/i0;

    invoke-virtual {v1}, Lcom/airbnb/lottie/i0;->g0()Z

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    if-eq p3, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lo1/c;->H:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lo1/c;->G:Landroid/graphics/RectF;

    iget-object v5, p0, Lo1/c;->H:Landroid/graphics/Paint;

    invoke-static {p1, v4, v5}, Lr1/j;->m(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v1, :cond_2

    move p3, v2

    :cond_2
    iget-object v1, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_6

    iget-boolean v2, p0, Lo1/c;->J:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lo1/b;->q:Lo1/e;

    invoke-virtual {v2}, Lo1/e;->j()Ljava/lang/String;

    move-result-object v2

    const-string v4, "__container"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lo1/c;->G:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lo1/c;->G:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_5

    iget-object v2, p0, Lo1/c;->E:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo1/b;

    invoke-virtual {v2, p1, p2, p3}, Lo1/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    return-void
.end method
