.class public Lj1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/a$b;


# instance fields
.field private final a:Lj1/a$b;

.field private final b:Lj1/a;

.field private final c:Lj1/a;

.field private final d:Lj1/a;

.field private final e:Lj1/a;

.field private final f:Lj1/a;

.field private g:Z


# direct methods
.method public constructor <init>(Lj1/a$b;Lo1/b;Lq1/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj1/c;->g:Z

    iput-object p1, p0, Lj1/c;->a:Lj1/a$b;

    invoke-virtual {p3}, Lq1/j;->a()Lm1/a;

    move-result-object p1

    invoke-virtual {p1}, Lm1/a;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Lj1/c;->b:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p3}, Lq1/j;->d()Lm1/b;

    move-result-object p1

    invoke-virtual {p1}, Lm1/b;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Lj1/c;->c:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p3}, Lq1/j;->b()Lm1/b;

    move-result-object p1

    invoke-virtual {p1}, Lm1/b;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Lj1/c;->d:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p3}, Lq1/j;->c()Lm1/b;

    move-result-object p1

    invoke-virtual {p1}, Lm1/b;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Lj1/c;->e:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p3}, Lq1/j;->e()Lm1/b;

    move-result-object p1

    invoke-virtual {p1}, Lm1/b;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Lj1/c;->f:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)V
    .locals 6

    iget-boolean v0, p0, Lj1/c;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj1/c;->g:Z

    iget-object v0, p0, Lj1/c;->d:Lj1/a;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    iget-object v2, p0, Lj1/c;->e:Lj1/a;

    invoke-virtual {v2}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lj1/c;->b:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lj1/c;->c:Lj1/a;

    invoke-virtual {v2}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object p0, p0, Lj1/c;->f:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0, v3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public b(Ls1/c;)V
    .locals 0

    iget-object p0, p0, Lj1/c;->b:Lj1/a;

    invoke-virtual {p0, p1}, Lj1/a;->o(Ls1/c;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj1/c;->g:Z

    iget-object p0, p0, Lj1/c;->a:Lj1/a$b;

    invoke-interface {p0}, Lj1/a$b;->c()V

    return-void
.end method

.method public d(Ls1/c;)V
    .locals 0

    iget-object p0, p0, Lj1/c;->d:Lj1/a;

    invoke-virtual {p0, p1}, Lj1/a;->o(Ls1/c;)V

    return-void
.end method

.method public e(Ls1/c;)V
    .locals 0

    iget-object p0, p0, Lj1/c;->e:Lj1/a;

    invoke-virtual {p0, p1}, Lj1/a;->o(Ls1/c;)V

    return-void
.end method

.method public f(Ls1/c;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lj1/c;->c:Lj1/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lj1/a;->o(Ls1/c;)V

    return-void

    :cond_0
    iget-object v0, p0, Lj1/c;->c:Lj1/a;

    new-instance v1, Lj1/c$a;

    invoke-direct {v1, p0, p1}, Lj1/c$a;-><init>(Lj1/c;Ls1/c;)V

    invoke-virtual {v0, v1}, Lj1/a;->o(Ls1/c;)V

    return-void
.end method

.method public g(Ls1/c;)V
    .locals 0

    iget-object p0, p0, Lj1/c;->f:Lj1/a;

    invoke-virtual {p0, p1}, Lj1/a;->o(Ls1/c;)V

    return-void
.end method
