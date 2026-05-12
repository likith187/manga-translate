.class public Landroidx/core/view/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/a1$k;,
        Landroidx/core/view/a1$l;,
        Landroidx/core/view/a1$j;,
        Landroidx/core/view/a1$i;,
        Landroidx/core/view/a1$h;,
        Landroidx/core/view/a1$g;,
        Landroidx/core/view/a1$f;,
        Landroidx/core/view/a1$m;,
        Landroidx/core/view/a1$a;,
        Landroidx/core/view/a1$o;,
        Landroidx/core/view/a1$n;,
        Landroidx/core/view/a1$d;,
        Landroidx/core/view/a1$c;,
        Landroidx/core/view/a1$b;,
        Landroidx/core/view/a1$e;
    }
.end annotation


# static fields
.field public static final b:Landroidx/core/view/a1;


# instance fields
.field private final a:Landroidx/core/view/a1$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/core/view/a1$k;->n:Landroidx/core/view/a1;

    sput-object v0, Landroidx/core/view/a1;->b:Landroidx/core/view/a1;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/core/view/a1$j;->m:Landroidx/core/view/a1;

    sput-object v0, Landroidx/core/view/a1;->b:Landroidx/core/view/a1;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/core/view/a1$k;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/a1$k;-><init>(Landroidx/core/view/a1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/core/view/a1$j;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/a1$j;-><init>(Landroidx/core/view/a1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/a1;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    .line 6
    iget-object p1, p1, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroidx/core/view/a1$k;

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Landroidx/core/view/a1$k;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/a1$k;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/a1$k;-><init>(Landroidx/core/view/a1;Landroidx/core/view/a1$k;)V

    iput-object v0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, p1, Landroidx/core/view/a1$j;

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Landroidx/core/view/a1$j;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/a1$j;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/a1$j;-><init>(Landroidx/core/view/a1;Landroidx/core/view/a1$j;)V

    iput-object v0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p1, Landroidx/core/view/a1$i;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Landroidx/core/view/a1$i;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/a1$i;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/a1$i;-><init>(Landroidx/core/view/a1;Landroidx/core/view/a1$i;)V

    iput-object v0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    goto :goto_0

    .line 13
    :cond_2
    instance-of v0, p1, Landroidx/core/view/a1$h;

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Landroidx/core/view/a1$h;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/a1$h;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/a1$h;-><init>(Landroidx/core/view/a1;Landroidx/core/view/a1$h;)V

    iput-object v0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    goto :goto_0

    .line 15
    :cond_3
    instance-of v0, p1, Landroidx/core/view/a1$g;

    if-eqz v0, :cond_4

    .line 16
    new-instance v0, Landroidx/core/view/a1$g;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/a1$g;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/a1$g;-><init>(Landroidx/core/view/a1;Landroidx/core/view/a1$g;)V

    iput-object v0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    goto :goto_0

    .line 17
    :cond_4
    instance-of v0, p1, Landroidx/core/view/a1$f;

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Landroidx/core/view/a1$f;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/a1$f;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/a1$f;-><init>(Landroidx/core/view/a1;Landroidx/core/view/a1$f;)V

    iput-object v0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    goto :goto_0

    .line 19
    :cond_5
    new-instance v0, Landroidx/core/view/a1$l;

    invoke-direct {v0, p0}, Landroidx/core/view/a1$l;-><init>(Landroidx/core/view/a1;)V

    iput-object v0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    .line 20
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/core/view/a1$l;->e(Landroidx/core/view/a1;)V

    goto :goto_1

    .line 21
    :cond_6
    new-instance p1, Landroidx/core/view/a1$l;

    invoke-direct {p1, p0}, Landroidx/core/view/a1$l;-><init>(Landroidx/core/view/a1;)V

    iput-object p1, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    :goto_1
    return-void
.end method

.method static p(Lu/e;IIII)Lu/e;
    .locals 5

    iget v0, p0, Lu/e;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lu/e;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lu/e;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lu/e;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lu/e;->c(IIII)Lu/e;

    move-result-object p0

    return-object p0
.end method

.method public static y(Landroid/view/WindowInsets;)Landroidx/core/view/a1;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/a1;->z(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/a1;
    .locals 1

    new-instance v0, Landroidx/core/view/a1;

    invoke-static {p0}, Lc0/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/view/a1;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/core/view/m0;->C(Landroid/view/View;)Landroidx/core/view/a1;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/a1;->v(Landroidx/core/view/a1;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/a1;->d(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/view/a1;->w(I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->a()Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public b()Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->b()Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public c()Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->c()Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method d(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0, p1}, Landroidx/core/view/a1$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()Landroidx/core/view/h;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->f()Landroidx/core/view/h;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/core/view/a1;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/core/view/a1;

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    iget-object p1, p1, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-static {p0, p1}, Lc0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f(I)Lu/e;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0, p1}, Landroidx/core/view/a1$l;->g(I)Lu/e;

    move-result-object p0

    return-object p0
.end method

.method public g(I)Lu/e;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0, p1}, Landroidx/core/view/a1$l;->h(I)Lu/e;

    move-result-object p0

    return-object p0
.end method

.method public h()Lu/e;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->j()Lu/e;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/view/a1$l;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public i()Lu/e;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->k()Lu/e;

    move-result-object p0

    return-object p0
.end method

.method public j()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object p0

    iget p0, p0, Lu/e;->d:I

    return p0
.end method

.method public k()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object p0

    iget p0, p0, Lu/e;->a:I

    return p0
.end method

.method public l()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object p0

    iget p0, p0, Lu/e;->c:I

    return p0
.end method

.method public m()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object p0

    iget p0, p0, Lu/e;->b:I

    return p0
.end method

.method public n()Z
    .locals 1

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object p0

    sget-object v0, Lu/e;->e:Lu/e;

    invoke-virtual {p0, v0}, Lu/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public o(IIII)Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/view/a1$l;->n(IIII)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public q()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->o()Z

    move-result p0

    return p0
.end method

.method public r(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0, p1}, Landroidx/core/view/a1$l;->q(I)Z

    move-result p0

    return p0
.end method

.method public s(IIII)Landroidx/core/view/a1;
    .locals 1

    new-instance v0, Landroidx/core/view/a1$a;

    invoke-direct {v0, p0}, Landroidx/core/view/a1$a;-><init>(Landroidx/core/view/a1;)V

    invoke-static {p1, p2, p3, p4}, Lu/e;->c(IIII)Lu/e;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/a1$a;->c(Lu/e;)Landroidx/core/view/a1$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/a1$a;->a()Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method t([Lu/e;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0, p1}, Landroidx/core/view/a1$l;->r([Lu/e;)V

    return-void
.end method

.method u(Lu/e;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0, p1}, Landroidx/core/view/a1$l;->s(Lu/e;)V

    return-void
.end method

.method v(Landroidx/core/view/a1;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0, p1}, Landroidx/core/view/a1$l;->t(Landroidx/core/view/a1;)V

    return-void
.end method

.method w(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    invoke-virtual {p0, p1}, Landroidx/core/view/a1$l;->u(I)V

    return-void
.end method

.method public x()Landroid/view/WindowInsets;
    .locals 1

    iget-object p0, p0, Landroidx/core/view/a1;->a:Landroidx/core/view/a1$l;

    instance-of v0, p0, Landroidx/core/view/a1$f;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/view/a1$f;

    iget-object p0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
