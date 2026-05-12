.class public Ld6/d;
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

    invoke-virtual {p0, p1, p2}, Ld6/d;->r(Lm6/c;F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public p()F
    .locals 2

    invoke-virtual {p0}, Ld6/a;->b()Lm6/c;

    move-result-object v0

    invoke-virtual {p0}, Ld6/a;->d()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Ld6/d;->q(Lm6/c;F)F

    move-result p0

    return p0
.end method

.method q(Lm6/c;F)F
    .locals 9

    iget-object v0, p1, Lm6/c;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lm6/c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld6/a;->e:Lm6/b;

    if-eqz v1, :cond_0

    iget v2, p1, Lm6/c;->g:F

    iget-object v0, p1, Lm6/c;->h:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, p1, Lm6/c;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Float;

    iget-object v0, p1, Lm6/c;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {p0}, Ld6/a;->e()F

    move-result v7

    invoke-virtual {p0}, Ld6/a;->f()F

    move-result v8

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lm6/b;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lm6/c;->g()F

    move-result p0

    invoke-virtual {p1}, Lm6/c;->d()F

    move-result p1

    invoke-static {p0, p1, p2}, Ll6/g;->i(FFF)F

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method r(Lm6/c;F)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ld6/d;->q(Lm6/c;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
