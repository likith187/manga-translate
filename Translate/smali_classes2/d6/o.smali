.class public Ld6/o;
.super Ld6/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ld6/g;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method bridge synthetic i(Lm6/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ld6/o;->p(Lm6/c;F)Lf6/b;

    move-result-object p0

    return-object p0
.end method

.method p(Lm6/c;F)Lf6/b;
    .locals 8

    iget-object v0, p0, Ld6/a;->e:Lm6/b;

    if-eqz v0, :cond_2

    iget v1, p1, Lm6/c;->g:F

    iget-object v2, p1, Lm6/c;->h:Ljava/lang/Float;

    if-nez v2, :cond_0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    iget-object v3, p1, Lm6/c;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lf6/b;

    iget-object p1, p1, Lm6/c;->c:Ljava/lang/Object;

    if-nez p1, :cond_1

    check-cast v3, Lf6/b;

    move-object p1, v3

    goto :goto_1

    :cond_1
    check-cast p1, Lf6/b;

    :goto_1
    invoke-virtual {p0}, Ld6/a;->d()F

    move-result v6

    invoke-virtual {p0}, Ld6/a;->f()F

    move-result v7

    move-object v3, v4

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lm6/b;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf6/b;

    return-object p0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lm6/c;->c:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    check-cast p0, Lf6/b;

    return-object p0

    :cond_4
    :goto_2
    iget-object p0, p1, Lm6/c;->b:Ljava/lang/Object;

    check-cast p0, Lf6/b;

    return-object p0
.end method

.method public q(Lm6/b;)V
    .locals 3

    new-instance v0, Lm6/a;

    invoke-direct {v0}, Lm6/a;-><init>()V

    new-instance v1, Lf6/b;

    invoke-direct {v1}, Lf6/b;-><init>()V

    new-instance v2, Ld6/o$a;

    invoke-direct {v2, p0, v0, p1, v1}, Ld6/o$a;-><init>(Ld6/o;Lm6/a;Lm6/b;Lf6/b;)V

    invoke-super {p0, v2}, Ld6/a;->n(Lm6/b;)V

    return-void
.end method
