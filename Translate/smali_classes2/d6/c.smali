.class public Ld6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/a$b;


# instance fields
.field private final a:Ld6/a$b;

.field private final b:Ld6/a;

.field private final c:Ld6/a;

.field private final d:Ld6/a;

.field private final e:Ld6/a;

.field private final f:Ld6/a;

.field private g:Z


# direct methods
.method public constructor <init>(Ld6/a$b;Li6/b;Lk6/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld6/c;->g:Z

    iput-object p1, p0, Ld6/c;->a:Ld6/a$b;

    invoke-virtual {p3}, Lk6/j;->a()Lg6/a;

    move-result-object p1

    invoke-virtual {p1}, Lg6/a;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Ld6/c;->b:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p3}, Lk6/j;->d()Lg6/b;

    move-result-object p1

    invoke-virtual {p1}, Lg6/b;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Ld6/c;->c:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p3}, Lk6/j;->b()Lg6/b;

    move-result-object p1

    invoke-virtual {p1}, Lg6/b;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Ld6/c;->d:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p3}, Lk6/j;->c()Lg6/b;

    move-result-object p1

    invoke-virtual {p1}, Lg6/b;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Ld6/c;->e:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p3}, Lk6/j;->e()Lg6/b;

    move-result-object p1

    invoke-virtual {p1}, Lg6/b;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Ld6/c;->f:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)V
    .locals 6

    iget-boolean v0, p0, Ld6/c;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld6/c;->g:Z

    iget-object v0, p0, Ld6/c;->d:Ld6/a;

    invoke-virtual {v0}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    iget-object v2, p0, Ld6/c;->e:Ld6/a;

    invoke-virtual {v2}, Ld6/a;->h()Ljava/lang/Object;

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

    iget-object v1, p0, Ld6/c;->b:Ld6/a;

    invoke-virtual {v1}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Ld6/c;->c:Ld6/a;

    invoke-virtual {v2}, Ld6/a;->h()Ljava/lang/Object;

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

    iget-object p0, p0, Ld6/c;->f:Ld6/a;

    invoke-virtual {p0}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0, v3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public b(Lm6/b;)V
    .locals 0

    iget-object p0, p0, Ld6/c;->b:Ld6/a;

    invoke-virtual {p0, p1}, Ld6/a;->n(Lm6/b;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld6/c;->g:Z

    iget-object p0, p0, Ld6/c;->a:Ld6/a$b;

    invoke-interface {p0}, Ld6/a$b;->c()V

    return-void
.end method

.method public d(Lm6/b;)V
    .locals 0

    iget-object p0, p0, Ld6/c;->d:Ld6/a;

    invoke-virtual {p0, p1}, Ld6/a;->n(Lm6/b;)V

    return-void
.end method

.method public e(Lm6/b;)V
    .locals 0

    iget-object p0, p0, Ld6/c;->e:Ld6/a;

    invoke-virtual {p0, p1}, Ld6/a;->n(Lm6/b;)V

    return-void
.end method

.method public f(Lm6/b;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Ld6/c;->c:Ld6/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ld6/a;->n(Lm6/b;)V

    return-void

    :cond_0
    iget-object v0, p0, Ld6/c;->c:Ld6/a;

    new-instance v1, Ld6/c$a;

    invoke-direct {v1, p0, p1}, Ld6/c$a;-><init>(Ld6/c;Lm6/b;)V

    invoke-virtual {v0, v1}, Ld6/a;->n(Lm6/b;)V

    return-void
.end method

.method public g(Lm6/b;)V
    .locals 0

    iget-object p0, p0, Ld6/c;->f:Ld6/a;

    invoke-virtual {p0, p1}, Ld6/a;->n(Lm6/b;)V

    return-void
.end method
