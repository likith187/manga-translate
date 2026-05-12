.class public Lc6/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/m;
.implements Ld6/a$b;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/oplus/anim/o;

.field private final e:Ld6/m;

.field private f:Z

.field private final g:Lc6/b;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/o;Li6/b;Lh6/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc6/r;->a:Landroid/graphics/Path;

    new-instance v0, Lc6/b;

    invoke-direct {v0}, Lc6/b;-><init>()V

    iput-object v0, p0, Lc6/r;->g:Lc6/b;

    invoke-virtual {p3}, Lh6/q;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc6/r;->b:Ljava/lang/String;

    invoke-virtual {p3}, Lh6/q;->d()Z

    move-result v0

    iput-boolean v0, p0, Lc6/r;->c:Z

    iput-object p1, p0, Lc6/r;->d:Lcom/oplus/anim/o;

    invoke-virtual {p3}, Lh6/q;->c()Lg6/h;

    move-result-object p1

    invoke-virtual {p1}, Lg6/h;->d()Ld6/m;

    move-result-object p1

    iput-object p1, p0, Lc6/r;->e:Ld6/m;

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc6/r;->f:Z

    iget-object p0, p0, Lc6/r;->d:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lc6/r;->f:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lc6/r;->a:Landroid/graphics/Path;

    return-object p0

    :cond_0
    iget-object v0, p0, Lc6/r;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lc6/r;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lc6/r;->f:Z

    iget-object p0, p0, Lc6/r;->a:Landroid/graphics/Path;

    return-object p0

    :cond_1
    iget-object v0, p0, Lc6/r;->e:Ld6/m;

    invoke-virtual {v0}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_2

    iget-object p0, p0, Lc6/r;->a:Landroid/graphics/Path;

    return-object p0

    :cond_2
    iget-object v2, p0, Lc6/r;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lc6/r;->a:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lc6/r;->g:Lc6/b;

    iget-object v2, p0, Lc6/r;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lc6/b;->b(Landroid/graphics/Path;)V

    iput-boolean v1, p0, Lc6/r;->f:Z

    iget-object p0, p0, Lc6/r;->a:Landroid/graphics/Path;

    return-object p0
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lc6/r;->e()V

    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/c;

    instance-of v2, v1, Lc6/u;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lc6/u;

    invoke-virtual {v2}, Lc6/u;->k()Lh6/s$a;

    move-result-object v3

    sget-object v4, Lh6/s$a;->SIMULTANEOUSLY:Lh6/s$a;

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lc6/r;->g:Lc6/b;

    invoke-virtual {v1, v2}, Lc6/b;->a(Lc6/u;)V

    invoke-virtual {v2, p0}, Lc6/u;->e(Ld6/a$b;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lc6/s;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast v1, Lc6/s;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lc6/r;->e:Ld6/m;

    invoke-virtual {p0, p2}, Ld6/m;->q(Ljava/util/List;)V

    return-void
.end method
