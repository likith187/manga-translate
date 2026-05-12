.class Landroidx/core/view/a1$f;
.super Landroidx/core/view/a1$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field final c:Landroid/view/WindowInsets;

.field private d:[Lu/e;

.field private e:Lu/e;

.field private f:Landroidx/core/view/a1;

.field g:Lu/e;

.field h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/core/view/a1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/a1$l;-><init>(Landroidx/core/view/a1;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/a1$f;->e:Lu/e;

    .line 3
    iput-object p2, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/a1;Landroidx/core/view/a1$f;)V
    .locals 1

    .line 4
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Landroidx/core/view/a1$f;-><init>(Landroidx/core/view/a1;Landroid/view/WindowInsets;)V

    return-void
.end method

.method static A(II)Z
    .locals 0

    and-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private v(IZ)Lu/e;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, Lu/e;->e:Lu/e;

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p2}, Landroidx/core/view/a1$f;->w(IZ)Lu/e;

    move-result-object v2

    invoke-static {v0, v2}, Lu/e;->a(Lu/e;Lu/e;)Lu/e;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private x()Lu/e;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$f;->f:Landroidx/core/view/a1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/core/view/a1;->h()Lu/e;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lu/e;->e:Lu/e;

    return-object p0
.end method

.method private y(Landroid/view/View;)Lu/e;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method d(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/a1$f;->y(Landroid/view/View;)Lu/e;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lu/e;->e:Lu/e;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/core/view/a1$f;->s(Lu/e;)V

    return-void
.end method

.method e(Landroidx/core/view/a1;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a1$f;->f:Landroidx/core/view/a1;

    invoke-virtual {p1, v0}, Landroidx/core/view/a1;->v(Landroidx/core/view/a1;)V

    iget-object v0, p0, Landroidx/core/view/a1$f;->g:Lu/e;

    invoke-virtual {p1, v0}, Landroidx/core/view/a1;->u(Lu/e;)V

    iget p0, p0, Landroidx/core/view/a1$f;->h:I

    invoke-virtual {p1, p0}, Landroidx/core/view/a1;->w(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Landroidx/core/view/a1$l;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/core/view/a1$f;

    iget-object v0, p0, Landroidx/core/view/a1$f;->g:Lu/e;

    iget-object v2, p1, Landroidx/core/view/a1$f;->g:Lu/e;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/core/view/a1$f;->h:I

    iget p1, p1, Landroidx/core/view/a1$f;->h:I

    invoke-static {p0, p1}, Landroidx/core/view/a1$f;->A(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public g(I)Lu/e;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/view/a1$f;->v(IZ)Lu/e;

    move-result-object p0

    return-object p0
.end method

.method public h(I)Lu/e;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/core/view/a1$f;->v(IZ)Lu/e;

    move-result-object p0

    return-object p0
.end method

.method final l()Lu/e;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/a1$f;->e:Lu/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lu/e;->c(IIII)Lu/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/a1$f;->e:Lu/e;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/a1$f;->e:Lu/e;

    return-object p0
.end method

.method n(IIII)Landroidx/core/view/a1;
    .locals 2

    new-instance v0, Landroidx/core/view/a1$a;

    iget-object v1, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-static {v1}, Landroidx/core/view/a1;->y(Landroid/view/WindowInsets;)Landroidx/core/view/a1;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/a1$a;-><init>(Landroidx/core/view/a1;)V

    invoke-virtual {p0}, Landroidx/core/view/a1$f;->l()Lu/e;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/a1;->p(Lu/e;IIII)Lu/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/a1$a;->c(Lu/e;)Landroidx/core/view/a1$a;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->j()Lu/e;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/a1;->p(Lu/e;IIII)Lu/e;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/a1$a;->b(Lu/e;)Landroidx/core/view/a1$a;

    invoke-virtual {v0}, Landroidx/core/view/a1$a;->a()Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method p()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result p0

    return p0
.end method

.method q(I)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_2

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/core/view/a1$f;->z(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public r([Lu/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/a1$f;->d:[Lu/e;

    return-void
.end method

.method s(Lu/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/a1$f;->g:Lu/e;

    return-void
.end method

.method t(Landroidx/core/view/a1;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/a1$f;->f:Landroidx/core/view/a1;

    return-void
.end method

.method u(I)V
    .locals 0

    iput p1, p0, Landroidx/core/view/a1$f;->h:I

    return-void
.end method

.method protected w(IZ)Lu/e;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_10

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b

    const/16 p2, 0x8

    if-eq p1, p2, :cond_6

    const/16 p2, 0x10

    if-eq p1, p2, :cond_5

    const/16 p2, 0x20

    if-eq p1, p2, :cond_4

    const/16 p2, 0x40

    if-eq p1, p2, :cond_3

    const/16 p2, 0x80

    if-eq p1, p2, :cond_0

    sget-object p0, Lu/e;->e:Lu/e;

    return-object p0

    :cond_0
    iget-object p1, p0, Landroidx/core/view/a1$f;->f:Landroidx/core/view/a1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/core/view/a1;->e()Landroidx/core/view/h;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/core/view/a1$l;->f()Landroidx/core/view/h;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/h;->b()I

    move-result p1

    invoke-virtual {p0}, Landroidx/core/view/h;->d()I

    move-result p2

    invoke-virtual {p0}, Landroidx/core/view/h;->c()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/view/h;->a()I

    move-result p0

    invoke-static {p1, p2, v0, p0}, Lu/e;->c(IIII)Lu/e;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lu/e;->e:Lu/e;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroidx/core/view/a1$l;->m()Lu/e;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroidx/core/view/a1$l;->i()Lu/e;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroidx/core/view/a1$l;->k()Lu/e;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p1, p0, Landroidx/core/view/a1$f;->d:[Lu/e;

    if-eqz p1, :cond_7

    invoke-static {p2}, Landroidx/core/view/a1$m;->b(I)I

    move-result p2

    aget-object v0, p1, p2

    :cond_7
    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroidx/core/view/a1$f;->l()Lu/e;

    move-result-object p1

    invoke-direct {p0}, Landroidx/core/view/a1$f;->x()Lu/e;

    move-result-object p2

    iget p1, p1, Lu/e;->d:I

    iget v0, p2, Lu/e;->d:I

    if-le p1, v0, :cond_9

    invoke-static {v1, v1, v1, p1}, Lu/e;->c(IIII)Lu/e;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p1, p0, Landroidx/core/view/a1$f;->g:Lu/e;

    if-eqz p1, :cond_a

    sget-object v0, Lu/e;->e:Lu/e;

    invoke-virtual {p1, v0}, Lu/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Landroidx/core/view/a1$f;->g:Lu/e;

    iget p0, p0, Lu/e;->d:I

    iget p1, p2, Lu/e;->d:I

    if-le p0, p1, :cond_a

    invoke-static {v1, v1, v1, p0}, Lu/e;->c(IIII)Lu/e;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object p0, Lu/e;->e:Lu/e;

    return-object p0

    :cond_b
    if-eqz p2, :cond_c

    invoke-direct {p0}, Landroidx/core/view/a1$f;->x()Lu/e;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->j()Lu/e;

    move-result-object p0

    iget p2, p1, Lu/e;->a:I

    iget v0, p0, Lu/e;->a:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p1, Lu/e;->c:I

    iget v2, p0, Lu/e;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p1, p1, Lu/e;->d:I

    iget p0, p0, Lu/e;->d:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, v1, v0, p0}, Lu/e;->c(IIII)Lu/e;

    move-result-object p0

    return-object p0

    :cond_c
    iget p1, p0, Landroidx/core/view/a1$f;->h:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_d

    sget-object p0, Lu/e;->e:Lu/e;

    return-object p0

    :cond_d
    invoke-virtual {p0}, Landroidx/core/view/a1$f;->l()Lu/e;

    move-result-object p1

    iget-object p0, p0, Landroidx/core/view/a1$f;->f:Landroidx/core/view/a1;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroidx/core/view/a1;->h()Lu/e;

    move-result-object v0

    :cond_e
    iget p0, p1, Lu/e;->d:I

    if-eqz v0, :cond_f

    iget p2, v0, Lu/e;->d:I

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_f
    iget p2, p1, Lu/e;->a:I

    iget p1, p1, Lu/e;->c:I

    invoke-static {p2, v1, p1, p0}, Lu/e;->c(IIII)Lu/e;

    move-result-object p0

    return-object p0

    :cond_10
    if-eqz p2, :cond_11

    invoke-direct {p0}, Landroidx/core/view/a1$f;->x()Lu/e;

    move-result-object p1

    iget p1, p1, Lu/e;->b:I

    invoke-virtual {p0}, Landroidx/core/view/a1$f;->l()Lu/e;

    move-result-object p0

    iget p0, p0, Lu/e;->b:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v1, p0, v1, v1}, Lu/e;->c(IIII)Lu/e;

    move-result-object p0

    return-object p0

    :cond_11
    iget p1, p0, Landroidx/core/view/a1$f;->h:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_12

    sget-object p0, Lu/e;->e:Lu/e;

    return-object p0

    :cond_12
    invoke-virtual {p0}, Landroidx/core/view/a1$f;->l()Lu/e;

    move-result-object p0

    iget p0, p0, Lu/e;->b:I

    invoke-static {v1, p0, v1, v1}, Lu/e;->c(IIII)Lu/e;

    move-result-object p0

    return-object p0
.end method

.method protected z(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v2, 0x80

    if-eq p1, v2, :cond_1

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/a1$f;->w(IZ)Lu/e;

    move-result-object p0

    sget-object p1, Lu/e;->e:Lu/e;

    invoke-virtual {p0, p1}, Lu/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method
