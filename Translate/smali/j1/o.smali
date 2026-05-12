.class public Lj1/o;
.super Lj1/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lj1/g;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method bridge synthetic i(Ls1/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj1/o;->q(Ls1/a;F)Ll1/b;

    move-result-object p0

    return-object p0
.end method

.method q(Ls1/a;F)Ll1/b;
    .locals 8

    iget-object v0, p0, Lj1/a;->e:Ls1/c;

    if-eqz v0, :cond_2

    iget v1, p1, Ls1/a;->g:F

    iget-object v2, p1, Ls1/a;->h:Ljava/lang/Float;

    if-nez v2, :cond_0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    iget-object v3, p1, Ls1/a;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ll1/b;

    iget-object p1, p1, Ls1/a;->c:Ljava/lang/Object;

    if-nez p1, :cond_1

    check-cast v3, Ll1/b;

    move-object p1, v3

    goto :goto_1

    :cond_1
    check-cast p1, Ll1/b;

    :goto_1
    invoke-virtual {p0}, Lj1/a;->d()F

    move-result v6

    invoke-virtual {p0}, Lj1/a;->f()F

    move-result v7

    move-object v3, v4

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Ls1/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    return-object p0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_4

    iget-object p0, p1, Ls1/a;->c:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    check-cast p0, Ll1/b;

    return-object p0

    :cond_4
    :goto_2
    iget-object p0, p1, Ls1/a;->b:Ljava/lang/Object;

    check-cast p0, Ll1/b;

    return-object p0
.end method

.method public r(Ls1/c;)V
    .locals 3

    new-instance v0, Ls1/b;

    invoke-direct {v0}, Ls1/b;-><init>()V

    new-instance v1, Ll1/b;

    invoke-direct {v1}, Ll1/b;-><init>()V

    new-instance v2, Lj1/o$a;

    invoke-direct {v2, p0, v0, p1, v1}, Lj1/o$a;-><init>(Lj1/o;Ls1/b;Ls1/c;Ll1/b;)V

    invoke-super {p0, v2}, Lj1/a;->o(Ls1/c;)V

    return-void
.end method
