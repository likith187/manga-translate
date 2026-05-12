.class public Ld6/m;
.super Ld6/a;
.source "SourceFile"


# instance fields
.field private final i:Lh6/n;

.field private final j:Landroid/graphics/Path;

.field private k:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ld6/a;-><init>(Ljava/util/List;)V

    new-instance p1, Lh6/n;

    invoke-direct {p1}, Lh6/n;-><init>()V

    iput-object p1, p0, Ld6/m;->i:Lh6/n;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ld6/m;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Lm6/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ld6/m;->p(Lm6/c;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public p(Lm6/c;F)Landroid/graphics/Path;
    .locals 2

    iget-object v0, p1, Lm6/c;->b:Ljava/lang/Object;

    check-cast v0, Lh6/n;

    iget-object p1, p1, Lm6/c;->c:Ljava/lang/Object;

    check-cast p1, Lh6/n;

    iget-object v1, p0, Ld6/m;->i:Lh6/n;

    invoke-virtual {v1, v0, p1, p2}, Lh6/n;->c(Lh6/n;Lh6/n;F)V

    iget-object p1, p0, Ld6/m;->i:Lh6/n;

    iget-object p2, p0, Ld6/m;->k:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    iget-object v0, p0, Ld6/m;->k:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6/s;

    invoke-interface {v0, p1}, Lc6/s;->g(Lh6/n;)Lh6/n;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ld6/m;->j:Landroid/graphics/Path;

    invoke-static {p1, p2}, Ll6/g;->h(Lh6/n;Landroid/graphics/Path;)V

    iget-object p0, p0, Ld6/m;->j:Landroid/graphics/Path;

    return-object p0
.end method

.method public q(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ld6/m;->k:Ljava/util/List;

    return-void
.end method
